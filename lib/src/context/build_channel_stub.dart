import '../build_channel.dart';

/// Pure-Dart / web default: no reliable offline signal → unknown.
/// (No `dart.vm.product` sniffing: it reflects the SDK build, not the app.)
Future<GrowthBuildChannel> flutterBuildChannelDetector() async =>
    GrowthBuildChannel.unknown;
