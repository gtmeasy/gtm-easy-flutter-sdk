import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../build_channel.dart';

GrowthBuildChannel? _cached;

/// Flutter build-channel detector. Runs once per process and is cached.
/// Caches the value (not the Future) so it is safe across zones.
Future<GrowthBuildChannel> flutterBuildChannelDetector() async {
  final cached = _cached;
  if (cached != null) return cached;
  return _cached = await detectFlutterBuildChannel();
}

/// Uncached detection with injectable probes (for tests).
Future<GrowthBuildChannel> detectFlutterBuildChannel({
  bool isDebugMode = kDebugMode,
  bool isProfileMode = kProfileMode,
  Future<String?> Function()? installerStore,
}) async {
  if (isDebugMode || isProfileMode) return GrowthBuildChannel.debug;
  String? installer;
  try {
    installer = await (installerStore ?? _platformInstallerStore)();
  } catch (_) {
    installer = null;
  }
  return classifyFlutterBuildChannel(
    isDebugMode: false,
    isProfileMode: false,
    installerStore: installer,
  );
}

Future<String?> _platformInstallerStore() async {
  final info = await PackageInfo.fromPlatform();
  return info.installerStore;
}
