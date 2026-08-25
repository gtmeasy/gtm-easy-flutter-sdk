import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/gtmeasy_growth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() async {
    try {
      await GrowthAnalytics.instance.close();
    } catch (_) {}
  });

  Future<List<String>> names(FakeTransport transport) async {
    final events = <String>[];
    for (final req in transport.requests) {
      if (req.path == '/events/batch') {
        final body = req.body as Map<Object?, Object?>;
        for (final event in body['events'] as List<Object?>) {
          events.add((event as Map<Object?, Object?>)['eventName'] as String);
        }
      } else if (req.path == '/events') {
        events.add((req.body as Map<Object?, Object?>)['eventName'] as String);
      }
    }
    return events;
  }

  test('trackFirstOpen first run / update / same version', () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();
    var analytics = await GrowthAnalytics.init(
      testConfig(appVersion: '1.0.0', buildNumber: '1'),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );

    await analytics.trackFirstOpen();
    await analytics.flush();
    expect(await names(transport), ['app.first_open', 'app.opened']);

    final prefs = await SharedPreferences.getInstance();
    await analytics.close();
    transport.requests.clear();

    analytics = await GrowthAnalytics.init(
      testConfig(appVersion: '1.0.0', buildNumber: '1'),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
    );
    await analytics.trackFirstOpen();
    await analytics.flush();
    expect(await names(transport), ['app.opened']);

    await analytics.close();
    transport.requests.clear();

    analytics = await GrowthAnalytics.init(
      testConfig(appVersion: '1.1.0', buildNumber: '2'),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
    );
    await analytics.trackFirstOpen();
    await analytics.flush();
    expect(await names(transport), ['app.updated', 'app.opened']);
  });
}
