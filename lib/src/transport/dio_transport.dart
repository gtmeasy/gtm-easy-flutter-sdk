import 'package:dio/dio.dart';

import '../config.dart';
import 'transport.dart';

class DioGrowthTransport implements GrowthTransport {
  DioGrowthTransport({required GrowthConfig config, Dio? dio})
    : _dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: config.normalizedBaseUrl,
              connectTimeout: config.requestTimeout,
              receiveTimeout: config.requestTimeout,
              sendTimeout: config.requestTimeout,
              validateStatus: (_) => true,
              headers: const {'content-type': 'application/json'},
            ),
          );

  final Dio _dio;

  @override
  Future<GrowthTransportResponse> send(GrowthTransportRequest request) async {
    try {
      final response = await _dio.request<dynamic>(
        request.path,
        data: request.body,
        options: Options(
          method: request.method,
          headers: request.headers,
          validateStatus: (_) => true,
        ),
      );
      final headers = <String, String>{};
      response.headers.forEach((name, values) {
        if (values.isNotEmpty) headers[name.toLowerCase()] = values.first;
      });
      return GrowthTransportResponse(
        statusCode: response.statusCode ?? 0,
        headers: headers,
        body: response.data,
      );
    } on DioException catch (error) {
      final status = error.response?.statusCode;
      if (status != null) {
        return GrowthTransportResponse(
          statusCode: status,
          body: error.response?.data,
        );
      }
      return GrowthTransportResponse(
        statusCode: 0,
        networkError: true,
        body: error.message,
      );
    }
  }
}
