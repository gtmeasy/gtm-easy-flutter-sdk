//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:gtmeasy_growth/src/generated/model/error_response.dart';
import 'package:gtmeasy_growth/src/generated/model/submit_survey_request.dart';
import 'package:gtmeasy_growth/src/generated/model/submit_survey_response.dart';

class SurveysApi {
  final Dio _dio;

  final Serializers _serializers;

  const SurveysApi(this._dio, this._serializers);

  /// Submit an onboarding-survey response
  /// Persists flexible onboarding-survey answers (one stored row per question, no 240-char truncation). A &#x60;survey.completed&#x60;/&#x60;survey.dismissed&#x60; lifecycle event is also recorded for the journey timeline + connector fan-out (&#x60;partial&#x60; submissions emit no event). Idempotent on &#x60;submissionId&#x60;.
  ///
  /// Parameters:
  /// * [xGtmGrowthKey] - SDK write key issued from the GTM Easy dashboard for this app.
  /// * [submitSurveyRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SubmitSurveyResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SubmitSurveyResponse>> surveysPost({
    required String xGtmGrowthKey,
    required SubmitSurveyRequest submitSurveyRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/surveys';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'x-gtm-growth-key': xGtmGrowthKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'growthWriteKey',
            'keyName': 'x-gtm-growth-key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(SubmitSurveyRequest);
      _bodyData =
          _serializers.serialize(submitSurveyRequest, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SubmitSurveyResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(SubmitSurveyResponse),
            ) as SubmitSurveyResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SubmitSurveyResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
