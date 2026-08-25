import 'config.dart';

class GrowthLogger {
  GrowthLogger(this.level);

  final GrowthLogLevel level;

  void debug(String message) => _log(GrowthLogLevel.debug, message);
  void info(String message) => _log(GrowthLogLevel.info, message);
  void warn(String message) => _log(GrowthLogLevel.warn, message);
  void error(String message) => _log(GrowthLogLevel.error, message);

  void _log(GrowthLogLevel messageLevel, String message) {
    if (!_enabled(messageLevel)) return;
    final redacted = _redact(message);
    // ignore: avoid_print
    print('[gtmeasy_growth][${messageLevel.name}] $redacted');
  }

  bool _enabled(GrowthLogLevel messageLevel) {
    if (level == GrowthLogLevel.none) return false;
    return messageLevel.index >= level.index;
  }

  static String _redact(String message) {
    return message.replaceAllMapped(
      RegExp(r'(x-gtm-growth-key["\s:=]+)([^\s,"]+)'),
      (m) => '${m[1]}***',
    );
  }
}
