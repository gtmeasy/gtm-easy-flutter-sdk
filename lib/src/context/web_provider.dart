import 'package:web/web.dart' as web;

import 'provider.dart';

class WebGrowthContextProvider implements GrowthContextProvider {
  WebGrowthContextProvider({this.appVersion, this.buildNumber});

  final String? appVersion;
  final String? buildNumber;
  DeviceSnapshot? _cached;

  @override
  Future<DeviceSnapshot> snapshot() async {
    if (_cached != null) return _cached!;
    final nav = web.window.navigator;
    final screen = web.window.screen;
    final doc = web.document.documentElement;
    _cached = DeviceSnapshot(
      platform: 'web',
      locale: nav.language,
      timezone: DateTime.now().timeZoneName,
      appVersion: appVersion,
      buildNumber: buildNumber,
      ctx: <String, Object?>{
        'sdk': 'flutter',
        'sdk_version': '0.1.0',
        'platform': 'web',
        'user_agent': nav.userAgent,
        'browser_language': nav.language,
        'screen_w': screen.width,
        'screen_h': screen.height,
        'viewport_w': doc?.clientWidth,
        'viewport_h': doc?.clientHeight,
        'dpr': web.window.devicePixelRatio,
        'hw_concurrency': nav.hardwareConcurrency,
      },
    );
    return _cached!;
  }
}

GrowthContextProvider createDefaultContextProvider({
  String? appVersion,
  String? buildNumber,
}) {
  return WebGrowthContextProvider(
    appVersion: appVersion,
    buildNumber: buildNumber,
  );
}

Uri? currentWebUri() => Uri.base;

String? documentReferrer() {
  final ref = web.document.referrer;
  return ref.isEmpty ? null : ref;
}
