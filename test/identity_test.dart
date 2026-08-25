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

  test('init persists and reuses anonymousId; reset rotates and keeps deviceId',
      () async {
    await mockPrefs();
    final storage = MemoryGrowthStorage();
    final transport = FakeTransport();

    final first = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
    );
    final anon = first.anonymousId;
    expect(anon, isNotEmpty);
    final prefs = await SharedPreferences.getInstance();
    final storedDevice = prefs.getString('gtmeasy.deviceId');
    expect(storedDevice, isNotEmpty);

    await first.close();

    final second = await GrowthAnalytics.init(
      testConfig(),
      storage: storage,
      transport: transport,
      contextProvider: testContext(),
      preferences: prefs,
    );
    expect(second.anonymousId, anon);
    expect(prefs.getString('gtmeasy.deviceId'), storedDevice);

    await second.reset();
    expect(second.anonymousId, isNot(anon));
    expect(prefs.getString('gtmeasy.deviceId'), storedDevice);
    expect(second.userId, isNull);
  });
}
