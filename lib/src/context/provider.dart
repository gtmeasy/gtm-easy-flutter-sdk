class DeviceSnapshot {
  const DeviceSnapshot({
    required this.platform,
    this.locale,
    this.timezone,
    this.appVersion,
    this.buildNumber,
    this.ctx = const {},
  });

  final String platform;
  final String? locale;
  final String? timezone;
  final String? appVersion;
  final String? buildNumber;
  final Map<String, Object?> ctx;
}

abstract class GrowthContextProvider {
  Future<DeviceSnapshot> snapshot();
}

class StaticGrowthContextProvider implements GrowthContextProvider {
  StaticGrowthContextProvider(this._snapshot);

  final DeviceSnapshot _snapshot;

  @override
  Future<DeviceSnapshot> snapshot() async => _snapshot;
}
