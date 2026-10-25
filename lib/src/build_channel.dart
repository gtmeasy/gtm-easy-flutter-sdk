/// How the running app was built / distributed.
///
/// Used together with [GrowthConfig.suppressTestBuilds] to drop events from
/// debug, TestFlight and internal test builds. `unknown` is never suppressed.
enum GrowthBuildChannel { debug, testflight, internalTest, production, unknown }

/// Resolves the build channel of the running app. Must not throw for normal
/// use; a thrown error is treated as [GrowthBuildChannel.unknown].
typedef GrowthBuildChannelDetector = Future<GrowthBuildChannel> Function();

/// TestFlight installer id reported by `package_info_plus` on iOS.
const String testFlightInstallerStore = 'com.apple.testflight';

/// Whether [channel] is a test build that `suppressTestBuilds` drops.
bool isTestBuildChannel(GrowthBuildChannel channel) {
  switch (channel) {
    case GrowthBuildChannel.debug:
    case GrowthBuildChannel.testflight:
    case GrowthBuildChannel.internalTest:
      return true;
    case GrowthBuildChannel.production:
    case GrowthBuildChannel.unknown:
      return false;
  }
}

/// The shared suppression rule (identical in every GTM Easy SDK):
/// `disabled || (suppressTestBuilds && channel in {debug, testflight, internalTest})`.
bool resolveSuppressed({
  required bool disabled,
  required bool suppressTestBuilds,
  required GrowthBuildChannel channel,
}) {
  return disabled || (suppressTestBuilds && isTestBuildChannel(channel));
}

/// Pure classification used by the Flutter detector.
///
/// `kDebugMode || kProfileMode` → debug; TestFlight installer → testflight;
/// anything else → unknown (fail open).
GrowthBuildChannel classifyFlutterBuildChannel({
  required bool isDebugMode,
  required bool isProfileMode,
  String? installerStore,
}) {
  if (isDebugMode || isProfileMode) return GrowthBuildChannel.debug;
  if (installerStore == testFlightInstallerStore) {
    return GrowthBuildChannel.testflight;
  }
  return GrowthBuildChannel.unknown;
}

/// A non-null [override] always wins; otherwise runs [detector] (or returns
/// unknown). Detector failures resolve to unknown so detection fails open.
Future<GrowthBuildChannel> resolveBuildChannel({
  GrowthBuildChannel? override,
  GrowthBuildChannelDetector? detector,
}) async {
  if (override != null) return override;
  if (detector == null) return GrowthBuildChannel.unknown;
  try {
    return await detector();
  } catch (_) {
    return GrowthBuildChannel.unknown;
  }
}
