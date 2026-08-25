import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/gtmeasy_growth.dart';

import 'helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() async {
    try {
      await GrowthAnalytics.instance.close();
    } catch (_) {}
  });

  test('429 retry-after waits then succeeds', () {
    fakeAsync((async) {
      mockPrefs();
      final storage = MemoryGrowthStorage();
      final transport = FakeTransport()
        ..script.add(
          const GrowthTransportResponse(
            statusCode: 429,
            headers: {'retry-after': '1'},
          ),
        )
        ..script.add(const GrowthTransportResponse(statusCode: 201));

      late GrowthAnalytics analytics;
      GrowthAnalytics.init(
        testConfig(),
        storage: storage,
        transport: transport,
        contextProvider: testContext(),
      ).then((value) => analytics = value);
      async.flushMicrotasks();

      analytics.track(GrowthEvents.featureUsed);
      async.flushMicrotasks();
      expect(transport.requests, isEmpty);

      late GrowthFlushResult result;
      analytics.flush(timeout: const Duration(seconds: 10)).then((r) {
        result = r;
      });
      async.flushMicrotasks();
      expect(transport.requests, hasLength(1));

      async.elapse(const Duration(milliseconds: 999));
      async.flushMicrotasks();
      expect(transport.requests, hasLength(1));

      async.elapse(const Duration(milliseconds: 50));
      async.flushMicrotasks();
      expect(transport.requests.length, greaterThanOrEqualTo(2));
      expect(result.sent, greaterThanOrEqualTo(1));
      analytics.close();
      async.flushMicrotasks();
    });
  });

  test('401 stops worker and retains queue', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport()
      ..fallback = const GrowthTransportResponse(statusCode: 401);
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.track(GrowthEvents.errorOccurred);
    final result = await analytics.flush();
    expect(result.error?.code, GrowthErrorCode.invalidCredentials);
    expect(await storage.length(), 1);

    transport.requests.clear();
    final again = await analytics.flush();
    expect(again.error?.code, GrowthErrorCode.invalidCredentials);
    expect(transport.requests, isEmpty);
    expect(await storage.length(), 1);
  });

  test('5xx backs off then succeeds', () {
    fakeAsync((async) {
      mockPrefs();
      final storage = MemoryGrowthStorage();
      final transport = FakeTransport()
        ..script.add(const GrowthTransportResponse(statusCode: 503))
        ..script.add(const GrowthTransportResponse(statusCode: 201));

      late GrowthAnalytics analytics;
      GrowthAnalytics.init(
        testConfig(),
        storage: storage,
        transport: transport,
        contextProvider: testContext(),
      ).then((value) => analytics = value);
      async.flushMicrotasks();

      analytics.track(GrowthEvents.sessionStarted);
      async.flushMicrotasks();

      late GrowthFlushResult result;
      analytics.flush(timeout: const Duration(seconds: 30)).then((r) {
        result = r;
      });
      async.flushMicrotasks();
      expect(transport.requests, hasLength(1));

      async.elapse(const Duration(milliseconds: 500));
      async.flushMicrotasks();
      expect(transport.requests, hasLength(1));

      async.elapse(const Duration(seconds: 2));
      async.flushMicrotasks();
      expect(transport.requests.length, greaterThanOrEqualTo(2));
      expect(result.sent, greaterThanOrEqualTo(1));
      analytics.close();
      async.flushMicrotasks();
    });
  });
}
