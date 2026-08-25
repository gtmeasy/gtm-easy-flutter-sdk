//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:gtmeasy_growth/src/generated/date_serializer.dart';
import 'package:gtmeasy_growth/src/generated/model/date.dart';

import 'package:gtmeasy_growth/src/generated/model/app_store_webhook_request.dart';
import 'package:gtmeasy_growth/src/generated/model/apple_attribution_request.dart';
import 'package:gtmeasy_growth/src/generated/model/batch_ingest_item_result.dart';
import 'package:gtmeasy_growth/src/generated/model/batch_ingest_response.dart';
import 'package:gtmeasy_growth/src/generated/model/batch_track_event_request.dart';
import 'package:gtmeasy_growth/src/generated/model/download_request.dart';
import 'package:gtmeasy_growth/src/generated/model/download_response.dart';
import 'package:gtmeasy_growth/src/generated/model/error_response.dart';
import 'package:gtmeasy_growth/src/generated/model/generic_ok_response.dart';
import 'package:gtmeasy_growth/src/generated/model/health_response.dart';
import 'package:gtmeasy_growth/src/generated/model/identify_user_request.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_event_response.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_event_response_event.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_user_response.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_user_response_user.dart';
import 'package:gtmeasy_growth/src/generated/model/play_install_referrer_request.dart';
import 'package:gtmeasy_growth/src/generated/model/play_store_webhook_request.dart';
import 'package:gtmeasy_growth/src/generated/model/play_store_webhook_request_message.dart';
import 'package:gtmeasy_growth/src/generated/model/registration_request.dart';
import 'package:gtmeasy_growth/src/generated/model/registration_response.dart';
import 'package:gtmeasy_growth/src/generated/model/registration_response_event.dart';
import 'package:gtmeasy_growth/src/generated/model/registration_response_user.dart';
import 'package:gtmeasy_growth/src/generated/model/skan_postback_request.dart';
import 'package:gtmeasy_growth/src/generated/model/submit_survey_request.dart';
import 'package:gtmeasy_growth/src/generated/model/submit_survey_response.dart';
import 'package:gtmeasy_growth/src/generated/model/survey_response_answer.dart';
import 'package:gtmeasy_growth/src/generated/model/track_event_request.dart';
import 'package:gtmeasy_growth/src/generated/model/web_referrer_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  AppStoreWebhookRequest,
  AppleAttributionRequest,
  BatchIngestItemResult,
  BatchIngestResponse,
  BatchTrackEventRequest,
  DownloadRequest,
  DownloadResponse,
  ErrorResponse,
  GenericOkResponse,
  HealthResponse,
  IdentifyUserRequest,
  IngestEventResponse,
  IngestEventResponseEvent,
  IngestUserResponse,
  IngestUserResponseUser,
  PlayInstallReferrerRequest,
  PlayStoreWebhookRequest,
  PlayStoreWebhookRequestMessage,
  RegistrationRequest,
  RegistrationResponse,
  RegistrationResponseEvent,
  RegistrationResponseUser,
  SkanPostbackRequest,
  SubmitSurveyRequest,
  SubmitSurveyResponse,
  SurveyResponseAnswer,
  TrackEventRequest,
  WebReferrerRequest,
])
Serializers serializers =
    (_$serializers.toBuilder()
          ..addBuilderFactory(
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(BatchIngestItemResult)]),
            () => ListBuilder<BatchIngestItemResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, [
              FullType(String),
              FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(SurveyResponseAnswer)]),
            () => ListBuilder<SurveyResponseAnswer>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(TrackEventRequest)]),
            () => ListBuilder<TrackEventRequest>(),
          )
          ..add(const OneOfSerializer())
          ..add(const AnyOfSerializer())
          ..add(const DateSerializer())
          ..add(Iso8601DateTimeSerializer()))
        .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
