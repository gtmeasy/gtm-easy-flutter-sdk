# GTM Easy Flutter SDK

![ci](https://github.com/gtmeasy/gtm-easy-flutter-sdk/actions/workflows/ci.yml/badge.svg)

First-party Flutter / Dart SDK for [GTM Easy](https://gtmeasy.com) growth analytics, attribution, onboarding surveys, and paywall-funnel events. Sends events to the GTM Easy ingestion API, identifies users, persists an anonymous ID, tracks app lifecycle (`app.first_open` / `app.updated` / `app.opened`), and captures system context (locale, timezone, device model).

Targets every Flutter platform: **iOS, Android, macOS, Windows, Linux, and Web**.

Sibling SDKs: [Apple (Swift)](https://github.com/gtmeasy/gtm-easy-apple-sdk) · [Android (Kotlin)](https://github.com/gtmeasy/gtm-easy-android-sdk) · [Web (TypeScript)](https://github.com/gtmeasy/gtm-easy-js-sdk) · [C++](https://github.com/gtmeasy/gtm-easy-cpp-sdk)

## Install

Requires the latest stable Flutter (currently 3.44+); older releases are not supported.

```yaml
dependencies:
  gtmeasy_growth: ^0.2.0
```

## Usage

Import `package:gtmeasy_growth/gtmeasy_growth.dart` from pure Dart. In a Flutter app, import `package:gtmeasy_growth/gtmeasy_growth_flutter.dart` so device context and `GrowthLifecycleObserver` are available.

```dart
import 'package:gtmeasy_growth/gtmeasy_growth_flutter.dart';

final analytics = await GrowthAnalytics.init(
  GrowthConfig(
    apiKey: 'gtm_growth_...',
    app: 'my-app',
  ),
);

await analytics.identify(userId: 'user_123', traits: {'plan': 'pro'});
await analytics.track(
  GrowthEvents.paywallOpened,
  properties: {'placement': 'onboarding'},
);

final observer = GrowthLifecycleObserver(analytics)..attach();

await analytics.flush();
```

`track` and `identify` validate and enqueue; they do not wait for the network. Call `flush()` (or rely on the interval / lifecycle pause) to send.

### Suppress debug / TestFlight / test builds

```dart
final analytics = await GrowthAnalytics.init(
  GrowthConfig(
    apiKey: 'gtm_growth_...',
    app: 'my-app',
    suppressTestBuilds: true,
  ),
);
print(analytics.resolvedBuildChannel); // debug, testflight, ... or unknown
print(analytics.isSuppressed);
```

`suppressed = disabled || (suppressTestBuilds && channel in {debug, testflight, internalTest})`.
`unknown` is never suppressed, so production data is not lost when detection has no signal.

Auto-detection (Flutter): `kDebugMode` / `kProfileMode` → `debug`; iOS TestFlight installs
(`package_info_plus` `installerStore == "com.apple.testflight"`) → `testflight`; anything else →
`unknown`. Pure-Dart hosts always resolve to `unknown`. Play internal testing, Firebase App
Distribution and Mac TestFlight can't be detected reliably, so pass the channel yourself
(a non-null `buildChannel` always wins), e.g. from a build flavor:

```dart
GrowthConfig(
  apiKey: 'gtm_growth_...',
  app: 'my-app',
  suppressTestBuilds: true,
  buildChannel: const bool.fromEnvironment('INTERNAL_TEST')
      ? GrowthBuildChannel.internalTest
      : null, // null = auto-detect
);
```

When suppressed the SDK sends nothing, never writes or flushes the queue (an existing on-disk
queue is left as is), and never persists identity or the first-open version, so a later
production build on the same device still sends `app.first_open`. `disabled: true` gives the
same behaviour regardless of channel. With `logLevel: GrowthLogLevel.debug`, suppressed calls
are logged with a `suppressed` marker. Call `WidgetsFlutterBinding.ensureInitialized()` before
`init` so the TestFlight probe can run; if it can't, the channel resolves to `unknown`.

Example app builds on iOS, Android, macOS, Windows, Linux, and Web in CI.

Pass the write key with `--dart-define=GTM_GROWTH_KEY=...` in the example app.

## License

MIT © GTM Easy — <hi@gtmeasy.com>
