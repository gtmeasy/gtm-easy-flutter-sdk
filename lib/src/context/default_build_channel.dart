// Flutter hosts (dart:ui present) get the kDebugMode / installer detector;
// pure-Dart and non-Flutter web hosts resolve to unknown.
export 'build_channel_stub.dart'
    if (dart.library.ui) 'flutter_build_channel.dart';
