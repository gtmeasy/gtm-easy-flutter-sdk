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

  test('track enqueues without hitting transport; flush sends batch', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.track(
      GrowthEvents.paywallOpened,
      properties: {'placement': 'onboarding'},
    );
    expect(transport.requests, isEmpty);
    expect(await storage.length(), 1);

    final result = await analytics.flush();
    expect(result.error, isNull);
    expect(result.sent, 1);
    expect(result.remaining, 0);
    expect(transport.requests, hasLength(1));

    final req = transport.requests.single;
    expect(req.path, '/events/batch');
    expect(req.headers['x-gtm-growth-key'], 'gtm_growth_test');
    final body = req.body as Map<Object?, Object?>;
    expect(body['events'], isA<List<Object?>>());
    final event =
        (body['events'] as List<Object?>).single as Map<Object?, Object?>;
    expect(event['app'], 'demo');
    expect(event['platform'], 'ios');
    expect(event['eventName'], 'paywall.opened');
    final props = event['properties'] as Map<Object?, Object?>;
    final ctx = props['_ctx'] as Map<Object?, Object?>;
    expect(ctx['sdk'], 'flutter');
    expect(ctx['sdk_version'], '0.1.0');
    expect(ctx['platform'], 'ios');
    expect(ctx['device_model'], 'iPhone');
  });

  test('batch 404 falls back to /events for the rest of the session', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport()
      ..script.add(const GrowthTransportResponse(statusCode: 404));
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.track(GrowthEvents.buttonClicked);
    await analytics.flush();
    expect(transport.requests.first.path, '/events/batch');
    expect(transport.requests.last.path, '/events');

    transport.requests.clear();
    await analytics.track(GrowthEvents.pageViewed);
    await analytics.flush();
    expect(transport.requests, hasLength(1));
    expect(transport.requests.single.path, '/events');
  });

  test('maxQueueSize drops oldest', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(maxQueueSize: 2),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.track('page.viewed', properties: {'n': 1});
    await analytics.track('page.viewed', properties: {'n': 2});
    await analytics.track('page.viewed', properties: {'n': 3});
    expect(await storage.length(), 2);

    await analytics.flush();
    final body = transport.requests.single.body as Map<Object?, Object?>;
    final events = body['events'] as List<Object?>;
    expect(events, hasLength(2));
    expect(
      ((events[0] as Map<Object?, Object?>)['properties']
          as Map<Object?, Object?>)['n'],
      2,
    );
    expect(
      ((events[1] as Map<Object?, Object?>)['properties']
          as Map<Object?, Object?>)['n'],
      3,
    );
  });
}
