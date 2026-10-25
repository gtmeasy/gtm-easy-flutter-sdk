import 'package:flutter_test/flutter_test.dart';
import 'package:gtmeasy_growth/src/build_channel.dart';
import 'package:gtmeasy_growth/src/context/build_channel_stub.dart'
    as pure_dart;
import 'package:gtmeasy_growth/src/context/flutter_build_channel.dart';

void main() {
  group('classifyFlutterBuildChannel', () {
    test('debug or profile mode is debug', () {
      expect(
        classifyFlutterBuildChannel(isDebugMode: true, isProfileMode: false),
        GrowthBuildChannel.debug,
      );
      expect(
        classifyFlutterBuildChannel(isDebugMode: false, isProfileMode: true),
        GrowthBuildChannel.debug,
      );
    });

    test('release + TestFlight installer is testflight', () {
      expect(
        classifyFlutterBuildChannel(
          isDebugMode: false,
          isProfileMode: false,
          installerStore: 'com.apple.testflight',
        ),
        GrowthBuildChannel.testflight,
      );
    });

    test('release without a known signal is unknown', () {
      for (final installer in <String?>[
        null,
        '',
        'com.apple',
        'com.android.vending',
      ]) {
        expect(
          classifyFlutterBuildChannel(
            isDebugMode: false,
            isProfileMode: false,
            installerStore: installer,
          ),
          GrowthBuildChannel.unknown,
          reason: 'installer=$installer',
        );
      }
    });
  });

  group('detectFlutterBuildChannel (injected probes)', () {
    test('debug short-circuits the installer probe', () async {
      var probed = false;
      final channel = await detectFlutterBuildChannel(
        isDebugMode: true,
        isProfileMode: false,
        installerStore: () async {
          probed = true;
          return 'com.apple.testflight';
        },
      );
      expect(channel, GrowthBuildChannel.debug);
      expect(probed, isFalse);
    });

    test('release reads installer store', () async {
      expect(
        await detectFlutterBuildChannel(
          isDebugMode: false,
          isProfileMode: false,
          installerStore: () async => 'com.apple.testflight',
        ),
        GrowthBuildChannel.testflight,
      );
    });

    test('installer probe failure is unknown', () async {
      expect(
        await detectFlutterBuildChannel(
          isDebugMode: false,
          isProfileMode: false,
          installerStore: () async => throw StateError('no plugin'),
        ),
        GrowthBuildChannel.unknown,
      );
    });
  });

  group('resolveBuildChannel', () {
    test('override wins over detector', () async {
      var called = false;
      final channel = await resolveBuildChannel(
        override: GrowthBuildChannel.production,
        detector: () async {
          called = true;
          return GrowthBuildChannel.debug;
        },
      );
      expect(channel, GrowthBuildChannel.production);
      expect(called, isFalse);
    });

    test('no detector (pure Dart / web) is unknown', () async {
      expect(await resolveBuildChannel(), GrowthBuildChannel.unknown);
    });

    test('throwing detector is unknown', () async {
      expect(
        await resolveBuildChannel(detector: () async => throw StateError('x')),
        GrowthBuildChannel.unknown,
      );
    });
  });

  group('resolveSuppressed', () {
    test('matrix', () {
      for (final channel in GrowthBuildChannel.values) {
        final isTest =
            channel == GrowthBuildChannel.debug ||
            channel == GrowthBuildChannel.testflight ||
            channel == GrowthBuildChannel.internalTest;
        expect(
          resolveSuppressed(
            disabled: false,
            suppressTestBuilds: true,
            channel: channel,
          ),
          isTest,
          reason: channel.name,
        );
        expect(
          resolveSuppressed(
            disabled: false,
            suppressTestBuilds: false,
            channel: channel,
          ),
          isFalse,
        );
        expect(
          resolveSuppressed(
            disabled: true,
            suppressTestBuilds: false,
            channel: channel,
          ),
          isTrue,
        );
      }
    });

    test('unknown is never suppressed by suppressTestBuilds', () {
      expect(
        resolveSuppressed(
          disabled: false,
          suppressTestBuilds: true,
          channel: GrowthBuildChannel.unknown,
        ),
        isFalse,
      );
    });
  });

  test('pure-Dart / web default detector is unknown', () async {
    expect(
      await pure_dart.flutterBuildChannelDetector(),
      GrowthBuildChannel.unknown,
    );
  });
}
