# Changelog

## 0.2.0

- New `GrowthConfig.suppressTestBuilds` (default `false`): drops every event from
  debug, TestFlight and internal test builds. Rule (same in every GTM Easy SDK):
  `suppressed = disabled || (suppressTestBuilds && channel in {debug, testflight, internalTest})`.
  `unknown` is never suppressed.
- New `GrowthConfig.disabled` (default `false`) and `GrowthConfig.buildChannel`
  override (`null` = auto-detect; a non-null value always wins).
- New `GrowthBuildChannel` enum and read-only `GrowthAnalytics.isSuppressed` /
  `GrowthAnalytics.resolvedBuildChannel`.
- Auto-detection in Flutter apps: `kDebugMode || kProfileMode` → `debug`;
  `package_info_plus` installer `com.apple.testflight` → `testflight`; otherwise
  `unknown`. Pure-Dart hosts resolve to `unknown`.
- When suppressed: no network, no queue writes or flushes (an existing on-disk
  queue is left untouched), and no durable identity / first-open state, so a later
  production build on the same device still sends `app.first_open`. A suppressed
  `init` does not flush the previous instance. With `logLevel: debug`, suppressed
  calls are logged with a `suppressed` marker.

## 0.1.0

- Requires the latest stable Flutter (currently 3.44+); older releases are not supported.
- First Flutter / Dart SDK for the GTM Easy Growth ingest API.
- Queue, identity, click ids, lifecycle observer, and surveys.
- Targets iOS, Android, macOS, Windows, Linux, and Web.
