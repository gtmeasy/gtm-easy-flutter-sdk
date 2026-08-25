import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'provider.dart';
import 'web_bits_stub.dart' if (dart.library.html) 'web_bits.dart';

class FlutterGrowthContextProvider implements GrowthContextProvider {
  FlutterGrowthContextProvider({this.appVersion, this.buildNumber});

  final String? appVersion;
  final String? buildNumber;
  DeviceSnapshot? _cached;

  @override
  Future<DeviceSnapshot> snapshot() async {
    if (_cached != null) return _cached!;
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    final bcp47 = locale.toLanguageTag();
    var timezone = DateTime.now().timeZoneName;
    try {
      timezone = (await FlutterTimezone.getLocalTimezone()).identifier;
    } catch (_) {}

    String? resolvedVersion = appVersion;
    String? resolvedBuild = buildNumber;
    try {
      final info = await PackageInfo.fromPlatform();
      resolvedVersion ??= info.version;
      resolvedBuild ??= info.buildNumber;
    } catch (_) {}

    final ctx = <String, Object?>{
      'sdk': 'flutter',
      'sdk_version': '0.1.0',
      'platform': _platformName(),
    };

    try {
      await _fillDevice(ctx);
    } catch (_) {}

    if (kIsWeb) {
      fillWebBrowserContext(ctx);
    }

    _cached = DeviceSnapshot(
      platform: _platformName(),
      locale: bcp47,
      timezone: timezone,
      appVersion: resolvedVersion,
      buildNumber: resolvedBuild,
      ctx: ctx,
    );
    return _cached!;
  }

  Future<void> _fillDevice(Map<String, Object?> ctx) async {
    final plugin = DeviceInfoPlugin();
    if (kIsWeb) {
      final info = await plugin.webBrowserInfo;
      ctx['os_version'] = info.platform;
      ctx['device_manufacturer'] = info.vendor;
      ctx['device_model'] = info.userAgent;
      ctx['hw_concurrency'] = info.hardwareConcurrency;
      return;
    }
    if (Platform.isAndroid) {
      final info = await plugin.androidInfo;
      ctx['os_version'] = info.version.release;
      ctx['device_manufacturer'] = info.manufacturer;
      ctx['device_model'] = info.model;
      final ramMb = info.physicalRamSize;
      if (ramMb > 0) {
        ctx['physical_memory_bytes'] = ramMb * 1024 * 1024;
      }
    } else if (Platform.isIOS) {
      final info = await plugin.iosInfo;
      ctx['os_version'] = info.systemVersion;
      ctx['device_manufacturer'] = 'Apple';
      ctx['device_model'] = info.utsname.machine;
      ctx['physical_memory_bytes'] = info.physicalRamSize > 0
          ? info.physicalRamSize * 1024 * 1024
          : null;
    } else if (Platform.isMacOS) {
      final info = await plugin.macOsInfo;
      ctx['os_version'] = info.osRelease;
      ctx['device_manufacturer'] = 'Apple';
      ctx['device_model'] = info.model;
      if (info.memorySize > 0) {
        ctx['physical_memory_bytes'] = info.memorySize;
      }
    } else if (Platform.isWindows) {
      final info = await plugin.windowsInfo;
      ctx['os_version'] = info.displayVersion;
      ctx['device_manufacturer'] = info.registeredOwner;
      ctx['device_model'] = info.productName;
    } else if (Platform.isLinux) {
      final info = await plugin.linuxInfo;
      ctx['os_version'] = info.versionId ?? info.version;
      ctx['device_manufacturer'] = info.id;
      ctx['device_model'] = info.prettyName;
    }
  }

  static String _platformName() {
    if (kIsWeb) return 'web';
    if (Platform.isIOS) return 'ios';
    if (Platform.isAndroid) return 'android';
    if (Platform.isMacOS) return 'macos';
    if (Platform.isWindows) return 'windows';
    if (Platform.isLinux) return 'linux';
    return 'server';
  }
}
