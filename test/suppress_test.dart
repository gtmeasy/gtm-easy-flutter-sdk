import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/gtmeasy_growth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers.dart';

Future<GrowthBuildChannel> Function() detects(GrowthBuildChannel channel) =>
    () async => channel;

List<String> eventNames(FakeTransport transport) {
  final names = <String>[];
  for (final req in transport.requests) {
    if (req.path == '/events/batch') {
      final body = req.body as Map<Object?, Object?>;
      for (final event in body['events'] as List<Object?>) {
        names.add((event as Map<Object?, Object?>)['eventName'] as String);
      }
    } else if (req.path == '/events') {
      names.add((req.body as Map<Object?, Object?>)['eventName'] as String);
    }
  }
  return names;
}

QueueItem queued(String id) => QueueItem(
  id: id,
  kind: 'event',
  body: <String, Object?>{'eventId': id, 'eventName': 'page.viewed'},
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() async {
    try {
      await GrowthAnalytics.instance.close();
    } catch (_) {}
  });

  Future<void> exerciseEverything(GrowthAnalytics analytics) async {
    await analytics.identify(userId: 'u1', email: 'a@b.c', traits: {'k': 1});
    await analytics.track(GrowthEvents.paywallOpened);
    await analytics.trackFirstOpen();
    await analytics.trackPurchaseCompleted(amount: 9.99, currency: 'USD');
    await analytics.submitSurvey('s1', const []);
    await analytics.recordClickId('gclid', 'abc');
    await analytics.captureClickIds(Uri.parse('https://x.test/?fbclid=f1'));
    final result = await analytics.flush();
    expect(result.sent, 0);
    expect(result.remaining, 0);
    await analytics.reset();
  }

  test('suppressTestBuilds + debug channel: zero HTTP, prepopulated queue '
      'untouched, no durable state', () async {
    await mockPrefs();
    final prefs = await SharedPreferences.getInstance();
    final storage = MemoryGrowthStorage()
      ..items.addAll([queued('old-1'), queued('old-2')]);
    final transport = FakeTransport();

    final analytics = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
      buildChannelDetector: detects(GrowthBuildChannel.debug),
    );
    expect(analytics.isSuppressed, isTrue);
    expect(analytics.resolvedBuildChannel, GrowthBuildChannel.debug);

    await exerciseEverything(analytics);
    await analytics.close();

    expect(transport.requests, isEmpty);
    expect(storage.items.map((i) => i.id), ['old-1', 'old-2']);
    expect(prefs.getKeys(), isEmpty);
  });

  test('disabled suppresses even when channel is unknown', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage()..items.add(queued('old'));
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(disabled: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      buildChannelDetector: detects(GrowthBuildChannel.unknown),
    );
    expect(analytics.isSuppressed, isTrue);
    expect(analytics.resolvedBuildChannel, GrowthBuildChannel.unknown);
    await exerciseEverything(analytics);
    await analytics.close();
    expect(transport.requests, isEmpty);
    expect(storage.items, hasLength(1));
  });

  test('suppressed re-init does not flush the previous instance', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    final live = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );
    await live.track(GrowthEvents.buttonClicked);
    expect(await storage.length(), 1);

    await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      buildChannelDetector: detects(GrowthBuildChannel.testflight),
    );
    expect(transport.requests, isEmpty);
    expect(await storage.length(), 1);
    expect(
      () => live.track(GrowthEvents.buttonClicked),
      throwsA(isA<GrowthError>()),
    );
  });

  test('unknown channel is never suppressed by suppressTestBuilds', () async {
    await mockPrefs();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: MemoryGrowthStorage(),
      transport: transport,
      contextProvider: testContext(),
      buildChannelDetector: detects(GrowthBuildChannel.unknown),
    );
    expect(analytics.isSuppressed, isFalse);
    await analytics.track(GrowthEvents.buttonClicked);
    await analytics.flush();
    expect(eventNames(transport), ['button.clicked']);
  });

  test('detector failure resolves to unknown and still sends', () async {
    await mockPrefs();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: MemoryGrowthStorage(),
      transport: transport,
      contextProvider: testContext(),
      buildChannelDetector: () async => throw StateError('boom'),
    );
    expect(analytics.resolvedBuildChannel, GrowthBuildChannel.unknown);
    expect(analytics.isSuppressed, isFalse);
  });

  test('buildChannel override wins over detection', () async {
    await mockPrefs();
    final production = await GrowthAnalytics.init(
      testConfig(
        suppressTestBuilds: true,
        buildChannel: GrowthBuildChannel.production,
      ),
      storage: MemoryGrowthStorage(),
      transport: FakeTransport(),
      contextProvider: testContext(),
      buildChannelDetector: detects(GrowthBuildChannel.debug),
    );
    expect(production.resolvedBuildChannel, GrowthBuildChannel.production);
    expect(production.isSuppressed, isFalse);

    final internal = await GrowthAnalytics.init(
      testConfig(
        suppressTestBuilds: true,
        buildChannel: GrowthBuildChannel.internalTest,
      ),
      storage: MemoryGrowthStorage(),
      transport: FakeTransport(),
      contextProvider: testContext(),
      buildChannelDetector: detects(GrowthBuildChannel.production),
    );
    expect(internal.resolvedBuildChannel, GrowthBuildChannel.internalTest);
    expect(internal.isSuppressed, isTrue);
  });

  test('suppressTestBuilds=false keeps sending from debug builds', () async {
    await mockPrefs();
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: MemoryGrowthStorage(),
      transport: FakeTransport(),
      contextProvider: testContext(),
      buildChannelDetector: detects(GrowthBuildChannel.debug),
    );
    expect(analytics.resolvedBuildChannel, GrowthBuildChannel.debug);
    expect(analytics.isSuppressed, isFalse);
  });

  test('anonymous id: reuses persisted id, else memory only', () async {
    await mockPrefs({'gtmeasy.anonymousId': 'anon-existing'});
    var prefs = await SharedPreferences.getInstance();
    final reused = await GrowthAnalytics.init(
      testConfig(disabled: true),
      storage: MemoryGrowthStorage(),
      transport: FakeTransport(),
      contextProvider: testContext(),
      preferences: prefs,
    );
    expect(reused.anonymousId, 'anon-existing');
    await reused.close();

    await mockPrefs();
    prefs = await SharedPreferences.getInstance();
    final fresh = await GrowthAnalytics.init(
      testConfig(disabled: true),
      storage: MemoryGrowthStorage(),
      transport: FakeTransport(),
      contextProvider: testContext(),
      preferences: prefs,
    );
    expect(fresh.anonymousId, isNotEmpty);
    expect(prefs.getString('gtmeasy.anonymousId'), isNull);
    expect(prefs.getString('gtmeasy.deviceId'), isNull);
  });

  test('suppressed launch then production launch (same storage) still '
      'sends app.first_open exactly once', () async {
    await mockPrefs();
    final prefs = await SharedPreferences.getInstance();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();

    final testBuild = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
      buildChannelDetector: detects(GrowthBuildChannel.testflight),
    );
    await testBuild.trackFirstOpen();
    await testBuild.trackFirstOpen();
    await testBuild.close();
    expect(transport.requests, isEmpty);
    expect(prefs.getString('gtmeasy.lastVersion'), isNull);

    var prod = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
      buildChannelDetector: detects(GrowthBuildChannel.unknown),
    );
    await prod.trackFirstOpen();
    await prod.flush();
    await prod.close();

    prod = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
      buildChannelDetector: detects(GrowthBuildChannel.production),
    );
    await prod.trackFirstOpen();
    await prod.flush();

    expect(eventNames(transport), [
      'app.first_open',
      'app.opened',
      'app.opened',
    ]);
  });

  test(
    'logs one init line and a suppressed debug line; never the key',
    () async {
      await mockPrefs();
      final lines = <String>[];
      await runZoned(
        () async {
          final analytics = await GrowthAnalytics.init(
            testConfig(
              suppressTestBuilds: true,
              logLevel: GrowthLogLevel.debug,
            ),
            storage: MemoryGrowthStorage(),
            transport: FakeTransport(),
            contextProvider: testContext(),
            buildChannelDetector: detects(GrowthBuildChannel.debug),
          );
          await analytics.track(
            GrowthEvents.paywallOpened,
            properties: {'placement': 'onboarding'},
          );
          await analytics.close();
        },
        zoneSpecification: ZoneSpecification(
          print: (self, parent, zone, line) => lines.add(line),
        ),
      );

      final initLines = lines.where(
        (l) => l.contains('GTM Easy: suppressing events (channel=debug)'),
      );
      expect(initLines, hasLength(1));
      final eventLine = lines.singleWhere((l) => l.contains('paywall.opened'));
      expect(eventLine, contains('suppressed'));
      expect(eventLine, contains('placement'));
      expect(lines.any((l) => l.contains('gtm_growth_test')), isFalse);
    },
  );
}
