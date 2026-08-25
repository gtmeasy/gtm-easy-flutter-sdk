/// GTM Easy Growth SDK — Flutter entry point.
///
/// Re-exports the pure Dart API and registers Flutter device-context defaults
/// when this library is imported.
library;

import 'src/analytics.dart';
import 'src/context/flutter_provider.dart';

export 'gtmeasy_growth.dart';
export 'src/lifecycle.dart';

// ignore: unused_element
final bool _registerFlutterDefaults = () {
  GrowthAnalytics.registerFlutterContextFactory(
    FlutterGrowthContextProvider.new,
  );
  return true;
}();
