/// Ingest environment sent on every payload.
enum GrowthEnvironment { production, staging, development }

/// SDK log verbosity. The write key is never logged.
enum GrowthLogLevel { debug, info, warn, error, none }

/// Configuration for [GrowthAnalytics.init].
class GrowthConfig {
  const GrowthConfig({
    required this.apiKey,
    required this.app,
    this.environment = GrowthEnvironment.production,
    this.baseUrl = 'https://www.gtmeasy.com/api/v1/growth',
    this.flushAt = 20,
    this.flushInterval = const Duration(seconds: 30),
    this.maxQueueSize = 1000,
    this.requestTimeout = const Duration(seconds: 10),
    this.useBatchEndpoint = true,
    this.logLevel = GrowthLogLevel.warn,
    this.appVersion,
    this.buildNumber,
    this.autoCollectDeviceContext = true,
  });

  final String apiKey;
  final String app;
  final GrowthEnvironment environment;
  final String baseUrl;
  final int flushAt;
  final Duration flushInterval;
  final int maxQueueSize;
  final Duration requestTimeout;
  final bool useBatchEndpoint;
  final GrowthLogLevel logLevel;
  final String? appVersion;
  final String? buildNumber;
  final bool autoCollectDeviceContext;

  String get environmentName => environment.name;

  String get normalizedBaseUrl {
    final trimmed = baseUrl.trim();
    if (trimmed.endsWith('/')) {
      return trimmed.substring(0, trimmed.length - 1);
    }
    return trimmed;
  }
}
