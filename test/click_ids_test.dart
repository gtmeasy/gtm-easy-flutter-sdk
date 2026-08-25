import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/gtmeasy_growth.dart';
import 'package:gtmeasy_growth/src/click_ids.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() async {
    try {
      await GrowthAnalytics.instance.close();
    } catch (_) {}
  });

  test('parser counts inbound click ids', () {
    final uri = Uri.parse(
      'https://example.com/?gclid=g1&fbclid=f1&utm_source=x&ttclid=t1',
    );
    expect(countClickIds(uri), 3);
  });

  test('capture persists ids, derives fbc/fbp, and respects TTL', () async {
    await mockPrefs();
    final prefs = await SharedPreferences.getInstance();
    var now = DateTime.utc(2026, 1, 1);
    final store = ClickIdStore(prefs, now: () => now);

    final captured = await store.captureFromUri(
      Uri.parse('https://x.test/?fbclid=abc&gclid=g1'),
    );
    expect(captured, 2);
    expect(await store.current('fbclid'), 'abc');
    expect(await store.current('gclid'), 'g1');
    expect(
      await store.current('fbc'),
      'fb.1.${now.millisecondsSinceEpoch}.abc',
    );
    final fbp = await store.ensureFbp();
    expect(fbp, startsWith('fb.1.'));

    now = now.add(const Duration(days: 91));
    expect(await store.current('gclid'), isNull);
    expect(await store.current('fbclid'), isNull);
  });

  test('recordClickId is merged into _ctx', () async {
    await mockPrefs();
    final transport = FakeTransport();
    final analytics = await GrowthAnalytics.init(
      testConfig(),
      storage: MemoryGrowthStorage(),
      transport: transport,
      contextProvider: testContext(),
    );
    await analytics.recordClickId('gclid', 'g-99');
    await analytics.track(GrowthEvents.pageViewed);
    await analytics.flush();
    final event =
        ((transport.requests.single.body as Map<Object?, Object?>)['events']
                    as List<Object?>)
                .single
            as Map<Object?, Object?>;
    final ctx =
        (event['properties'] as Map<Object?, Object?>)['_ctx']
            as Map<Object?, Object?>;
    expect(ctx['gclid'], 'g-99');
  });
}
