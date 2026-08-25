import 'provider.dart';

GrowthContextProvider createDefaultContextProvider({
  String? appVersion,
  String? buildNumber,
}) {
  return StaticGrowthContextProvider(
    DeviceSnapshot(
      platform: 'server',
      appVersion: appVersion,
      buildNumber: buildNumber,
      ctx: const <String, Object?>{
        'sdk': 'flutter',
        'sdk_version': '0.1.0',
        'platform': 'server',
      },
    ),
  );
}

Uri? currentWebUri() => null;

String? documentReferrer() => null;
