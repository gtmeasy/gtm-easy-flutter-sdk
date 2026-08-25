# GTM Easy Flutter SDK

First-party Flutter / Dart SDK for [GTM Easy](https://gtmeasy.com) growth analytics, attribution, onboarding surveys, and paywall-funnel events. Sends events to the GTM Easy ingestion API, identifies users, persists an anonymous ID, tracks app lifecycle (`app.first_open` / `app.updated` / `app.opened`), and captures system context (locale, timezone, device model).

Targets every Flutter platform: **iOS, Android, macOS, Windows, Linux, and Web**.

Sibling SDKs: [Apple (Swift)](https://github.com/gtmeasy/gtm-easy-apple-sdk) · [Android (Kotlin)](https://github.com/gtmeasy/gtm-easy-android-sdk) · [Web (TypeScript)](https://github.com/gtmeasy/gtm-easy-js-sdk) · [C++](https://github.com/gtmeasy/gtm-easy-cpp-sdk)

## Install

```yaml
dependencies:
  gtmeasy_growth: ^0.1.0
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

Pass the write key with `--dart-define=GTM_GROWTH_KEY=...` in the example app.

## License

MIT © GTM Easy — <hi@gtmeasy.com>
