import 'package:gtmeasy_growth/gtmeasy_growth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MemoryGrowthStorage implements GrowthStorage {
  final List<QueueItem> items = [];

  @override
  Future<void> enqueue(QueueItem item) async => items.add(item);

  @override
  Future<List<QueueItem>> peek({int? limit}) async {
    if (limit == null || limit >= items.length) {
      return List<QueueItem>.from(items);
    }
    return items.sublist(0, limit);
  }

  @override
  Future<void> removeIds(Iterable<String> ids) async {
    final drop = ids.toSet();
    items.removeWhere((i) => drop.contains(i.id));
  }

  @override
  Future<int> length() async => items.length;

  @override
  Future<int> dropOldest(int count) async {
    if (count <= 0 || items.isEmpty) return 0;
    final drop = count > items.length ? items.length : count;
    items.removeRange(0, drop);
    return drop;
  }
}

class FakeTransport implements GrowthTransport {
  final List<GrowthTransportRequest> requests = [];
  final List<GrowthTransportResponse> script = [];
  GrowthTransportResponse fallback = const GrowthTransportResponse(
    statusCode: 201,
    body: <String, Object?>{'warnings': <String>[]},
  );

  @override
  Future<GrowthTransportResponse> send(GrowthTransportRequest request) async {
    requests.add(request);
    if (script.isNotEmpty) return script.removeAt(0);
    return fallback;
  }
}

StaticGrowthContextProvider testContext({
  String platform = 'ios',
}) {
  return StaticGrowthContextProvider(
    DeviceSnapshot(
      platform: platform,
      locale: 'en-US',
      timezone: 'UTC',
      appVersion: '1.0.0',
      buildNumber: '1',
      ctx: const <String, Object?>{
        'sdk': 'flutter',
        'sdk_version': '0.1.0',
        'platform': 'ios',
        'os_version': '17.0',
        'device_manufacturer': 'Apple',
        'device_model': 'iPhone',
      },
    ),
  );
}

GrowthConfig testConfig({
  int flushAt = 100,
  int maxQueueSize = 1000,
  bool useBatchEndpoint = true,
  String? appVersion = '1.0.0',
  String? buildNumber = '1',
  Duration flushInterval = const Duration(hours: 1),
}) {
  return GrowthConfig(
    apiKey: 'gtm_growth_test',
    app: 'demo',
    flushAt: flushAt,
    maxQueueSize: maxQueueSize,
    useBatchEndpoint: useBatchEndpoint,
    appVersion: appVersion,
    buildNumber: buildNumber,
    flushInterval: flushInterval,
    logLevel: GrowthLogLevel.none,
  );
}

Future<void> mockPrefs([Map<String, Object> seed = const {}]) async {
  SharedPreferences.setMockInitialValues(seed);
}
