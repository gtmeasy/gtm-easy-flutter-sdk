import 'dart:async';
import 'dart:math';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import 'click_ids.dart';
import 'config.dart';
import 'context/default_context.dart';
import 'context/provider.dart';
import 'dispatcher.dart';
import 'errors.dart';
import 'events.dart';
import 'identity.dart';
import 'logger.dart';
import 'storage/default_storage.dart';
import 'storage/storage.dart';
import 'survey.dart';
import 'transport/dio_transport.dart';
import 'transport/transport.dart';

typedef FlutterContextFactory =
    GrowthContextProvider Function({String? appVersion, String? buildNumber});

/// Client for the GTM Easy Growth ingest API.
class GrowthAnalytics {
  GrowthAnalytics._({
    required this.config,
    required IdentityStore identity,
    required ClickIdStore clickIds,
    required GrowthDispatcher dispatcher,
    required GrowthContextProvider contextProvider,
    required DeviceSnapshot snapshot,
    required GrowthLogger logger,
    required Uuid uuid,
    required DateTime Function() now,
  }) : _identity = identity,
       _clickIds = clickIds,
       _dispatcher = dispatcher,
       _contextProvider = contextProvider,
       _snapshot = snapshot,
       _logger = logger,
       _uuid = uuid,
       _now = now;

  static GrowthAnalytics? _instance;
  static FlutterContextFactory? _flutterContextFactory;

  static const String version = '0.1.0';

  static void registerFlutterContextFactory(FlutterContextFactory factory) {
    _flutterContextFactory = factory;
  }

  static GrowthAnalytics get instance {
    final current = _instance;
    if (current == null) {
      throw StateError('GrowthAnalytics.init has not been called');
    }
    return current;
  }

  final GrowthConfig config;
  final IdentityStore _identity;
  final ClickIdStore _clickIds;
  final GrowthDispatcher _dispatcher;
  final GrowthContextProvider _contextProvider;
  DeviceSnapshot _snapshot;
  final GrowthLogger _logger;
  final Uuid _uuid;
  final DateTime Function() _now;
  Timer? _timer;
  bool _closed = false;

  String get anonymousId => _identity.anonymousId;
  String? get userId => _identity.userId;

  static Future<GrowthAnalytics> init(
    GrowthConfig config, {
    GrowthStorage? storage,
    GrowthTransport? transport,
    GrowthContextProvider? contextProvider,
    @visibleForTesting SharedPreferences? preferences,
    @visibleForTesting Random? random,
    @visibleForTesting Future<void> Function(Duration duration)? sleep,
    @visibleForTesting DateTime Function()? now,
    @visibleForTesting Uri? webUri,
    @visibleForTesting Uuid? uuid,
  }) async {
    if (config.apiKey.trim().isEmpty) {
      throw const GrowthError(
        code: GrowthErrorCode.invalidArgument,
        message: 'apiKey is required',
      );
    }
    if (config.app.trim().isEmpty) {
      throw const GrowthError(
        code: GrowthErrorCode.invalidArgument,
        message: 'app is required',
      );
    }

    await _instance?.close();

    final clock = now ?? DateTime.now;
    final ids = uuid ?? const Uuid();
    final logger = GrowthLogger(config.logLevel);
    final prefs = preferences ?? await SharedPreferences.getInstance();
    final identity = IdentityStore(prefs, uuid: ids);
    await identity.load();
    final clickIds = ClickIdStore(prefs, random: random, now: clock);

    final resolvedContext =
        contextProvider ??
        _flutterContextFactory?.call(
          appVersion: config.appVersion,
          buildNumber: config.buildNumber,
        ) ??
        createDefaultContextProvider(
          appVersion: config.appVersion,
          buildNumber: config.buildNumber,
        );

    var snapshot = await resolvedContext.snapshot();
    if (!config.autoCollectDeviceContext) {
      snapshot = DeviceSnapshot(
        platform: snapshot.platform,
        locale: snapshot.locale,
        timezone: snapshot.timezone,
        appVersion: config.appVersion ?? snapshot.appVersion,
        buildNumber: config.buildNumber ?? snapshot.buildNumber,
        ctx: const {'sdk': 'flutter', 'sdk_version': '0.1.0'},
      );
    }

    final queue = storage ?? await openDefaultStorage(config.app);
    final http = transport ?? DioGrowthTransport(config: config);
    final dispatcher = GrowthDispatcher(
      config: config,
      storage: queue,
      transport: http,
      logger: logger,
      apiKey: config.apiKey,
      random: random,
      sleep: sleep,
    );

    final analytics = GrowthAnalytics._(
      config: config,
      identity: identity,
      clickIds: clickIds,
      dispatcher: dispatcher,
      contextProvider: resolvedContext,
      snapshot: snapshot,
      logger: logger,
      uuid: ids,
      now: clock,
    );

    final captureUri = webUri ?? currentWebUri();
    if (captureUri != null && snapshot.platform == 'web') {
      await analytics.captureClickIds(captureUri);
      final referrer = documentReferrer();
      if (referrer != null) {
        await analytics._enqueueWebReferrer(referrer);
      }
    }

    analytics._timer = Timer.periodic(config.flushInterval, (_) {
      unawaited(analytics._dispatcher.flush(timeout: config.requestTimeout));
    });

    _instance = analytics;
    return analytics;
  }

  Future<void> identify({
    String? userId,
    String? username,
    String? email,
    Map<String, Object?> traits = const {},
  }) async {
    _ensureOpen();
    await _identity.setUser(userId: userId, username: username, email: email);
    final body = await _envelope(
      extra: <String, Object?>{
        if (username != null) 'username': username,
        if (email != null) 'email': email,
        'traits': await _withCtx(traits),
      },
    );
    await _dispatcher.enqueue(
      QueueItem(id: _uuid.v4(), kind: 'user', body: body),
    );
  }

  Future<void> track(
    String eventName, {
    Map<String, Object?> properties = const {},
    double? metricValue,
    String? metricLabel,
    DateTime? occurredAt,
  }) async {
    _ensureOpen();
    if (eventName.trim().isEmpty) {
      throw const GrowthError(
        code: GrowthErrorCode.invalidArgument,
        message: 'eventName is required',
      );
    }
    final when = occurredAt ?? _now();
    final body = await _envelope(
      extra: <String, Object?>{
        'eventId': _uuid.v4(),
        'eventName': eventName,
        'occurredAt': _rfc3339(when),
        'properties': await _withCtx(properties),
        if (metricValue != null) 'metricValue': metricValue,
        if (metricLabel != null) 'metricLabel': metricLabel,
        'source': _snapshot.platform == 'web' ? 'web' : 'native',
      },
    );
    await _dispatcher.enqueue(
      QueueItem(id: body['eventId'] as String, kind: 'event', body: body),
    );
  }

  Future<void> trackFirstOpen() async {
    _ensureOpen();
    final version = _versionKey();
    final last = _identity.lastVersion;
    if (last == null) {
      await track(GrowthEvents.appFirstOpen);
      await track(GrowthEvents.appOpened);
    } else if (last != version) {
      await track(
        GrowthEvents.appUpdated,
        properties: {'previous_version': last, 'version': version},
      );
      await track(GrowthEvents.appOpened);
    } else {
      await track(GrowthEvents.appOpened);
    }
    await _identity.setLastVersion(version);
  }

  Future<void> trackAppOpen() => track(GrowthEvents.appOpened);

  Future<void> trackPurchaseCompleted({
    required double amount,
    required String currency,
    String? productId,
  }) {
    return track(
      GrowthEvents.purchaseCompleted,
      properties: <String, Object?>{
        'amount': amount,
        'currency': currency,
        if (productId != null) 'productId': productId,
      },
      metricValue: amount,
      metricLabel: currency,
    );
  }

  Future<void> submitSurvey(
    String surveyId,
    List<SurveyAnswer> answers, {
    String? surveyName,
    String? surveyVersion,
    SurveyStatus status = SurveyStatus.completed,
  }) async {
    _ensureOpen();
    if (surveyId.trim().isEmpty) {
      throw const GrowthError(
        code: GrowthErrorCode.invalidArgument,
        message: 'surveyId is required',
      );
    }
    final body = await _envelope(
      extra: <String, Object?>{
        'surveyId': surveyId,
        if (surveyName != null) 'surveyName': surveyName,
        if (surveyVersion != null) 'surveyVersion': surveyVersion,
        'status': status.name,
        'occurredAt': _rfc3339(_now()),
        'responses': answers.map((a) => a.toJson()).toList(),
      },
    );
    await _dispatcher.enqueue(
      QueueItem(id: _uuid.v4(), kind: 'survey', body: body),
    );
  }

  Future<void> recordClickId(String provider, String value) async {
    _ensureOpen();
    final lc = provider.toLowerCase();
    if (!clickIdProviders.contains(lc)) {
      throw GrowthError(
        code: GrowthErrorCode.invalidArgument,
        message: 'Unknown click id provider: $provider',
      );
    }
    await _clickIds.record(lc, value);
    if (lc == 'fbclid') {
      await _clickIds.ensureFbc(value);
      await _clickIds.ensureFbp();
    }
  }

  Future<int> captureClickIds(Uri uri) async {
    _ensureOpen();
    return _clickIds.captureFromUri(uri);
  }

  Future<GrowthFlushResult> flush({
    Duration timeout = const Duration(seconds: 5),
  }) async {
    _ensureOpen();
    return _dispatcher.flush(timeout: timeout);
  }

  Future<void> reset() async {
    _ensureOpen();
    await _identity.reset();
  }

  Future<void> close() async {
    if (_closed) return;
    _timer?.cancel();
    _timer = null;
    try {
      await _dispatcher.flush(timeout: config.requestTimeout);
    } catch (error) {
      _logger.warn('close flush failed: $error');
    }
    _closed = true;
    if (identical(_instance, this)) {
      _instance = null;
    }
  }

  String _versionKey() {
    final version = config.appVersion ?? _snapshot.appVersion ?? '';
    final build = config.buildNumber ?? _snapshot.buildNumber ?? '';
    return '$version+$build';
  }

  Future<Map<String, Object?>> _envelope({
    required Map<String, Object?> extra,
  }) async {
    _snapshot = await _contextProvider.snapshot();
    return <String, Object?>{
      'app': config.app,
      'environment': config.environmentName,
      'platform': _snapshot.platform,
      'userId': _identity.userId,
      'anonymousId': _identity.anonymousId,
      'deviceId': _identity.deviceId,
      'appVersion': config.appVersion ?? _snapshot.appVersion,
      'buildNumber': config.buildNumber ?? _snapshot.buildNumber,
      'locale': _snapshot.locale,
      'timezone': _snapshot.timezone,
      ...extra,
    };
  }

  Future<Map<String, Object?>> _withCtx(Map<String, Object?> input) async {
    final clicks = await _clickIds.snapshot();
    final sdkCtx = <String, Object?>{
      ..._snapshot.ctx,
      ...clicks,
      'sdk': 'flutter',
      'sdk_version': version,
      'platform': _snapshot.platform,
    };
    final userCtx = input['_ctx'];
    final mergedCtx = <String, Object?>{
      if (userCtx is Map) ...Map<String, Object?>.from(userCtx),
      ...sdkCtx,
    };
    return <String, Object?>{...input, '_ctx': mergedCtx};
  }

  Future<void> _enqueueWebReferrer(String referrer) async {
    final body = await _envelope(
      extra: <String, Object?>{
        'webReferrer': referrer,
        'occurredAt': _rfc3339(_now()),
        'source': 'web',
      },
    );
    await _dispatcher.enqueue(
      QueueItem(id: _uuid.v4(), kind: 'web_referrer', body: body),
    );
  }

  void _ensureOpen() {
    if (_closed) {
      throw const GrowthError(
        code: GrowthErrorCode.notInitialized,
        message: 'GrowthAnalytics has been closed',
      );
    }
  }

  static String _rfc3339(DateTime value) {
    return value.toUtc().toIso8601String();
  }
}
