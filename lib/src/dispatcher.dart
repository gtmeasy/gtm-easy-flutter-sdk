import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'config.dart';
import 'errors.dart';
import 'isolate_json.dart';
import 'logger.dart';
import 'storage/storage.dart';
import 'transport/transport.dart';

const _maxAttempts = 6;
const _maxBackoff = Duration(seconds: 60);

class GrowthDispatcher {
  GrowthDispatcher({
    required this.config,
    required this.storage,
    required this.transport,
    required this.logger,
    required this.apiKey,
    Random? random,
    Future<void> Function(Duration duration)? sleep,
  }) : _random = random ?? Random(),
       _sleep = sleep ?? Future<void>.delayed,
       _useBatch = config.useBatchEndpoint;

  final GrowthConfig config;
  final GrowthStorage storage;
  final GrowthTransport transport;
  final GrowthLogger logger;
  final String apiKey;
  final Random _random;
  final Future<void> Function(Duration duration) _sleep;

  bool _stopped = false;
  bool _useBatch;
  bool _loggedDrop = false;
  bool _loggedAuth = false;
  int droppedCount = 0;

  bool get isStopped => _stopped;

  void markAuthFailed() {
    _stopped = true;
  }

  Future<void> enqueue(QueueItem item) async {
    await _trimIfNeeded();
    await storage.enqueue(item);
  }

  Future<void> _trimIfNeeded() async {
    final length = await storage.length();
    final overflow = (length + 1) - config.maxQueueSize;
    if (overflow <= 0) return;
    final dropped = await storage.dropOldest(overflow);
    droppedCount += dropped;
    if (!_loggedDrop) {
      _loggedDrop = true;
      logger.warn('Dropped $dropped oldest queued items (maxQueueSize)');
    }
  }

  Future<GrowthFlushResult> flush({
    Duration timeout = const Duration(seconds: 5),
  }) async {
    _loggedDrop = false;
    if (_stopped) {
      return GrowthFlushResult(
        sent: 0,
        failed: 0,
        remaining: await storage.length(),
        error: const GrowthError(
          code: GrowthErrorCode.invalidCredentials,
          message: 'Worker stopped after 401',
          httpStatus: 401,
        ),
      );
    }

    try {
      return await _flushCycle().timeout(timeout);
    } on TimeoutException {
      return GrowthFlushResult(
        sent: 0,
        failed: 0,
        remaining: await storage.length(),
        error: const GrowthError(
          code: GrowthErrorCode.timeout,
          message: 'Flush timed out',
        ),
      );
    }
  }

  Future<GrowthFlushResult> _flushCycle() async {
    var sent = 0;
    var failed = 0;
    GrowthError? lastError;
    var attempts = 0;

    while (attempts < _maxAttempts) {
      if (_stopped) {
        lastError = const GrowthError(
          code: GrowthErrorCode.invalidCredentials,
          message: 'Worker stopped after 401',
          httpStatus: 401,
        );
        break;
      }

      final items = await storage.peek();
      if (items.isEmpty) break;

      final user = _firstOf(items, 'user');
      final survey = user == null ? _firstOf(items, 'survey') : null;
      final referrer = user == null && survey == null
          ? _firstOf(items, 'web_referrer')
          : null;

      _SendOutcome outcome;
      if (user != null) {
        outcome = await _sendSingle(user, '/users');
      } else if (survey != null) {
        outcome = await _sendSingle(survey, '/surveys');
      } else if (referrer != null) {
        outcome = await _sendSingle(referrer, '/attribution/web-referrer');
      } else {
        final events = items.where((i) => i.kind == 'event').take(100).toList();
        if (events.isEmpty) break;
        outcome = await _sendEvents(events);
      }

      switch (outcome.kind) {
        case _OutcomeKind.success:
          sent += outcome.sent;
          attempts = 0;
        case _OutcomeKind.dropped:
          failed += outcome.failed;
          attempts = 0;
        case _OutcomeKind.retry:
          failed += outcome.failed;
          lastError = outcome.error;
          final wait = outcome.delay ?? _backoff(attempts);
          attempts++;
          if (attempts < _maxAttempts) {
            await _sleep(wait);
          }
        case _OutcomeKind.auth:
          _stopped = true;
          lastError = outcome.error;
          failed += outcome.failed;
      }
    }

    if (attempts >= _maxAttempts && lastError == null) {
      lastError = const GrowthError(
        code: GrowthErrorCode.server,
        message: 'Max flush attempts reached',
      );
    }

    return GrowthFlushResult(
      sent: sent,
      failed: failed,
      remaining: await storage.length(),
      error: lastError,
    );
  }

  QueueItem? _firstOf(List<QueueItem> items, String kind) {
    for (final item in items) {
      if (item.kind == kind) return item;
    }
    return null;
  }

  Future<_SendOutcome> _sendSingle(QueueItem item, String path) async {
    final response = await _post(path, item.body);
    return _handleSingle(item, response, path);
  }

  Future<_SendOutcome> _sendEvents(List<QueueItem> events) async {
    if (_useBatch) {
      final bodies = events.map((e) => e.body).toList();
      Object payload;
      if (events.length >= 10) {
        final encoded = await encodeJsonIsolate({'events': bodies});
        payload = jsonDecode(encoded) as Object;
      } else {
        payload = {'events': bodies};
      }
      final response = await _post('/events/batch', payload);
      if (response.statusCode == 404) {
        _useBatch = false;
        logger.warn('Batch endpoint 404; falling back to /events');
        return _sendEventsIndividually(events);
      }
      return _handleBatch(events, response);
    }
    return _sendEventsIndividually(events);
  }

  Future<_SendOutcome> _sendEventsIndividually(List<QueueItem> events) async {
    var sent = 0;
    var failed = 0;
    Duration? delay;
    GrowthError? error;
    for (final event in events) {
      final response = await _post('/events', event.body);
      final outcome = await _handleSingle(event, response, '/events');
      sent += outcome.sent;
      failed += outcome.failed;
      if (outcome.kind == _OutcomeKind.auth) {
        return outcome;
      }
      if (outcome.kind == _OutcomeKind.retry) {
        delay = outcome.delay;
        error = outcome.error;
        break;
      }
    }
    if (delay != null) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        sent: sent,
        failed: failed,
        delay: delay,
        error: error,
      );
    }
    return _SendOutcome(
      kind: sent > 0 ? _OutcomeKind.success : _OutcomeKind.dropped,
      sent: sent,
      failed: failed,
    );
  }

  Future<_SendOutcome> _handleSingle(
    QueueItem item,
    GrowthTransportResponse response,
    String path,
  ) async {
    if (response.networkError) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        failed: 1,
        delay: null,
        error: const GrowthError(
          code: GrowthErrorCode.network,
          message: 'Network error',
        ),
      );
    }
    final status = response.statusCode;
    if (status == 200 || status == 201) {
      await storage.removeIds([item.id]);
      return const _SendOutcome(kind: _OutcomeKind.success, sent: 1);
    }
    if (status == 400) {
      logger.warn('Dropping item after 400 on $path');
      await storage.removeIds([item.id]);
      return const _SendOutcome(kind: _OutcomeKind.dropped, failed: 1);
    }
    if (status == 401) {
      if (!_loggedAuth) {
        _loggedAuth = true;
        logger.error('Invalid credentials (401); worker stopped');
      }
      return _SendOutcome(
        kind: _OutcomeKind.auth,
        failed: 1,
        error: const GrowthError(
          code: GrowthErrorCode.invalidCredentials,
          message: 'Invalid credentials',
          httpStatus: 401,
        ),
      );
    }
    if (status == 429) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        failed: 1,
        delay: _retryAfter(response),
        error: GrowthError(
          code: GrowthErrorCode.rateLimited,
          message: 'Rate limited',
          httpStatus: 429,
        ),
      );
    }
    if (status >= 500 || status == 0) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        failed: 1,
        delay: null,
        error: GrowthError(
          code: GrowthErrorCode.server,
          message: 'Server error',
          httpStatus: status == 0 ? null : status,
        ),
      );
    }
    logger.warn('Dropping item after HTTP $status on $path');
    await storage.removeIds([item.id]);
    return const _SendOutcome(kind: _OutcomeKind.dropped, failed: 1);
  }

  Future<_SendOutcome> _handleBatch(
    List<QueueItem> events,
    GrowthTransportResponse response,
  ) async {
    if (response.networkError) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        failed: events.length,
        delay: null,
        error: const GrowthError(
          code: GrowthErrorCode.network,
          message: 'Network error',
        ),
      );
    }
    final status = response.statusCode;
    if (status == 429) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        failed: events.length,
        delay: _retryAfter(response),
        error: const GrowthError(
          code: GrowthErrorCode.rateLimited,
          message: 'Rate limited',
          httpStatus: 429,
        ),
      );
    }
    if (status == 401) {
      if (!_loggedAuth) {
        _loggedAuth = true;
        logger.error('Invalid credentials (401); worker stopped');
      }
      return _SendOutcome(
        kind: _OutcomeKind.auth,
        failed: events.length,
        error: const GrowthError(
          code: GrowthErrorCode.invalidCredentials,
          message: 'Invalid credentials',
          httpStatus: 401,
        ),
      );
    }
    if (status >= 500 || status == 0) {
      return _SendOutcome(
        kind: _OutcomeKind.retry,
        failed: events.length,
        delay: null,
        error: GrowthError(
          code: GrowthErrorCode.server,
          message: 'Server error',
          httpStatus: status == 0 ? null : status,
        ),
      );
    }
    if (status == 400) {
      final dropIds = events.map((e) => e.id);
      await storage.removeIds(dropIds);
      return _SendOutcome(kind: _OutcomeKind.dropped, failed: events.length);
    }
    if (status == 200 || status == 201) {
      final body = response.body;
      if (body is Map) {
        final results = body['results'];
        if (results is List) {
          final remove = <String>[];
          var sent = 0;
          var failed = 0;
          for (final raw in results) {
            if (raw is! Map) continue;
            final index = raw['index'];
            final itemStatus = raw['status'] as String?;
            if (index is! int || index < 0 || index >= events.length) continue;
            if (itemStatus == 'accepted' || itemStatus == 'rejected') {
              remove.add(events[index].id);
              if (itemStatus == 'accepted') {
                sent++;
              } else {
                failed++;
              }
            }
          }
          if (remove.isEmpty) {
            // No per-item results: treat as full success.
            await storage.removeIds(events.map((e) => e.id));
            return _SendOutcome(
              kind: _OutcomeKind.success,
              sent: events.length,
            );
          }
          await storage.removeIds(remove);
          return _SendOutcome(
            kind: _OutcomeKind.success,
            sent: sent,
            failed: failed,
          );
        }
      }
      await storage.removeIds(events.map((e) => e.id));
      return _SendOutcome(kind: _OutcomeKind.success, sent: events.length);
    }
    return _SendOutcome(
      kind: _OutcomeKind.retry,
      failed: events.length,
      delay: null,
      error: GrowthError(
        code: GrowthErrorCode.server,
        message: 'Unexpected HTTP $status',
        httpStatus: status,
      ),
    );
  }

  Future<GrowthTransportResponse> _post(String path, Object? body) {
    return transport.send(
      GrowthTransportRequest(
        method: 'POST',
        path: path,
        headers: <String, String>{
          'x-gtm-growth-key': apiKey,
          'content-type': 'application/json',
        },
        body: body,
      ),
    );
  }

  Duration _retryAfter(GrowthTransportResponse response) {
    final raw =
        response.headers['retry-after'] ?? response.headers['Retry-After'];
    final seconds = int.tryParse(raw ?? '');
    return Duration(seconds: seconds ?? 30);
  }

  Duration _backoff(int attempt) {
    final baseMs = 1000 * (1 << attempt);
    final capped = baseMs > _maxBackoff.inMilliseconds
        ? _maxBackoff.inMilliseconds
        : baseMs;
    final jitter = 1 + ((_random.nextDouble() * 2) - 1) * 0.2;
    return Duration(milliseconds: (capped * jitter).round());
  }
}

enum _OutcomeKind { success, dropped, retry, auth }

class _SendOutcome {
  const _SendOutcome({
    required this.kind,
    this.sent = 0,
    this.failed = 0,
    this.delay,
    this.error,
  });

  final _OutcomeKind kind;
  final int sent;
  final int failed;
  final Duration? delay;
  final GrowthError? error;
}
