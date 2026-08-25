//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:gtmeasy_growth/src/generated/model/batch_ingest_response.dart';
import 'package:gtmeasy_growth/src/generated/model/batch_track_event_request.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_event_response.dart';
import 'package:gtmeasy_growth/src/generated/model/track_event_request.dart';

class EventsApi {
  final Dio _dio;

  final Serializers _serializers;

  const EventsApi(this._dio, this._serializers);

  /// Record up to 100 tracked events in one request
  /// Accepts 1–100 TrackEventRequest objects. Auth and rate limiting run once for the whole request (one rate-limit unit). Each item is validated independently: invalid items are marked rejected and do not fail the batch. HTTP 200 is returned even when some items are rejected. Cap is 100 events.
  ///
  /// Parameters:
  /// * [xGtmGrowthKey] - SDK write key issued from the GTM Easy dashboard for this app.
  /// * [batchTrackEventRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BatchIngestResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BatchIngestResponse>> eventsBatchPost({
    required String xGtmGrowthKey,
    required BatchTrackEventRequest batchTrackEventRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/events/batch';
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
      const _type = FullType(BatchTrackEventRequest);
      _bodyData = _serializers.serialize(
        batchTrackEventRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
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

    BatchIngestResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BatchIngestResponse),
                )
                as BatchIngestResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BatchIngestResponse>(
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

  /// Record a tracked event
  /// Persists a single event and fans out to configured connectors (Meta CAPI, Google Ads, TikTok Events, PostHog, Sentry, Statsig). Idempotent on &#x60;(app, eventName, occurredAt, identityHash)&#x60;.
  ///
  /// Parameters:
  /// * [xGtmGrowthKey] - SDK write key issued from the GTM Easy dashboard for this app.
  /// * [trackEventRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IngestEventResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<IngestEventResponse>> eventsPost({
    required String xGtmGrowthKey,
    required TrackEventRequest trackEventRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/events';
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
      const _type = FullType(TrackEventRequest);
      _bodyData = _serializers.serialize(
        trackEventRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
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

    IngestEventResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(IngestEventResponse),
                )
                as IngestEventResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<IngestEventResponse>(
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
