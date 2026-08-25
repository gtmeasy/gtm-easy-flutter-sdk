enum GrowthErrorCode {
  unknown(1, 'unknown'),
  invalidArgument(2, 'invalid_argument'),
  notInitialized(3, 'not_initialized'),
  network(10, 'network_error'),
  invalidCredentials(11, 'invalid_credentials'),
  rateLimited(12, 'rate_limited'),
  server(13, 'server_error'),
  invalidPayload(20, 'invalid_payload'),
  storage(30, 'storage_error'),
  timeout(40, 'timeout');

  const GrowthErrorCode(this.code, this.codeName);

  final int code;
  final String codeName;
}

class GrowthError implements Exception {
  const GrowthError({
    required this.code,
    required this.message,
    this.httpStatus,
  });

  final GrowthErrorCode code;
  final String message;
  final int? httpStatus;

  @override
  String toString() =>
      'GrowthError(${code.codeName}, status=$httpStatus): $message';
}

class GrowthFlushResult {
  const GrowthFlushResult({
    required this.sent,
    required this.failed,
    required this.remaining,
    this.error,
  });

  final int sent;
  final int failed;
  final int remaining;
  final GrowthError? error;
}
