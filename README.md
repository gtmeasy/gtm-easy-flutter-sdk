# GTM Easy Flutter SDK

First-party Flutter / Dart SDK for [GTM Easy](https://gtmeasy.com) growth analytics, attribution, onboarding surveys, and paywall-funnel events. Sends events to the GTM Easy ingestion API, identifies users, persists an anonymous ID, tracks app lifecycle (`app.first_open` / `app.updated` / `app.opened`), and captures system context (locale, timezone, device model).

Targets every Flutter platform: **iOS, Android, macOS, Windows, Linux, and Web**.

Sibling SDKs: [Apple (Swift)](https://github.com/gtmeasy/gtm-easy-apple-sdk) · [Android (Kotlin)](https://github.com/gtmeasy/gtm-easy-android-sdk) · [Web (TypeScript)](https://github.com/gtmeasy/gtm-easy-js-sdk) · [C++](https://github.com/gtmeasy/gtm-easy-cpp-sdk)

## Status

`0.1.0` — scaffold. Package structure, the generated OpenAPI client, and the public API are being designed; not yet published to pub.dev.

## Planned layout

```
lib/gtmeasy_growth.dart      public entry point
lib/src/                     analytics core (queue, persistence, lifecycle, context)
lib/src/generated/           OpenAPI-generated API client (do not edit by hand)
example/                     sample app
test/
```

## Planned usage

```dart
import 'package:gtmeasy_growth/gtmeasy_growth.dart';

final analytics = await GrowthAnalytics.init(apiKey: 'gtm_growth_...');
await analytics.identify('user_123', traits: {'plan': 'pro'});
await analytics.track('paywall.shown', properties: {'placement': 'onboarding'});
```

## License

MIT © GTM Easy — <hi@gtmeasy.com>
