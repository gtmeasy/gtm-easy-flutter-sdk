import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/gtmeasy_growth_flutter.dart';

import 'helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() async {
    try {
      await GrowthAnalytics.instance.close();
    } catch (_) {}
  });

  testWidgets('paused triggers flush; resumed re-opens after debounce', (
    tester,
  ) async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    final observer = GrowthLifecycleObserver(analytics);
    observer.attach();
    await tester.pump();
    expect(await storage.length(), greaterThan(0));

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
    await tester.pump();
    expect(transport.requests, isNotEmpty);
    expect(await storage.length(), 0);
    transport.requests.clear();

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await tester.pump(const Duration(seconds: 1));
    expect(await storage.length(), 0);

    await tester.pump(const Duration(seconds: 2));
    expect(await storage.length(), greaterThan(0));
    observer.detach();
    await analytics.close();
  });

  testWidgets('Flutter detector (debug) + suppressTestBuilds: observer '
      'sends and persists nothing', (tester) async {
    await mockPrefs();
    final storage = MemoryGrowthStorage()
      ..items.add(
        const QueueItem(
          id: 'old',
          kind: 'event',
          body: <String, Object?>{'eventName': 'page.viewed'},
        ),
      );
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(suppressTestBuilds: true),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );
    expect(analytics.resolvedBuildChannel, GrowthBuildChannel.debug);
    expect(analytics.isSuppressed, isTrue);

    final observer = GrowthLifecycleObserver(analytics)..attach();
    await tester.pump();
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
    await tester.pump();
    observer.detach();
    await analytics.close();

    expect(transport.requests, isEmpty);
    expect(storage.items.map((i) => i.id), ['old']);
  });
}
