import 'dart:io';

import 'provider.dart';

class DartGrowthContextProvider implements GrowthContextProvider {
  DartGrowthContextProvider({this.appVersion, this.buildNumber});

  final String? appVersion;
  final String? buildNumber;
  DeviceSnapshot? _cached;

  @override
  Future<DeviceSnapshot> snapshot() async {
    if (_cached != null) return _cached!;
    final platform = _platformName();
    _cached = DeviceSnapshot(
      platform: platform,
      locale: Platform.localeName.replaceAll('_', '-'),
      timezone: DateTime.now().timeZoneName,
      appVersion: appVersion,
      buildNumber: buildNumber,
      ctx: <String, Object?>{
        'sdk': 'flutter',
        'sdk_version': '0.1.0',
        'platform': platform,
        'os_version': Platform.operatingSystemVersion,
      },
    );
    return _cached!;
  }

  static String _platformName() {
    if (Platform.isIOS) return 'ios';
    if (Platform.isAndroid) return 'android';
    if (Platform.isMacOS) return 'macos';
    if (Platform.isWindows) return 'windows';
    if (Platform.isLinux) return 'linux';
    return 'server';
  }
}

GrowthContextProvider createDefaultContextProvider({
  String? appVersion,
  String? buildNumber,
}) {
  return DartGrowthContextProvider(
    appVersion: appVersion,
    buildNumber: buildNumber,
  );
}

Uri? currentWebUri() => null;

String? documentReferrer() => null;
