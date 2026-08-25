class GrowthTransportRequest {
  const GrowthTransportRequest({
    required this.method,
    required this.path,
    required this.headers,
    required this.body,
  });

  final String method;
  final String path;
  final Map<String, String> headers;
  final Object? body;
}

class GrowthTransportResponse {
  const GrowthTransportResponse({
    required this.statusCode,
    this.headers = const {},
    this.body,
    this.networkError = false,
  });

  final int statusCode;
  final Map<String, String> headers;
  final Object? body;
  final bool networkError;
}

abstract class GrowthTransport {
  Future<GrowthTransportResponse> send(GrowthTransportRequest request);
}
