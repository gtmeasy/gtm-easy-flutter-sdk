//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gtmeasy_growth/src/generated/model/survey_response_answer.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_survey_request.g.dart';

/// SubmitSurveyRequest
///
/// Properties:
/// * [app] - Optional; the server derives the app from the write key when omitted.
/// * [environment]
/// * [platform] - Defaults to the registered app's platform when omitted.
/// * [userId]
/// * [anonymousId]
/// * [deviceId]
/// * [surveyId]
/// * [surveyVersion]
/// * [surveyName]
/// * [submissionId] - Optional; server generates a UUID when omitted. Idempotency key for retries.
/// * [status]
/// * [appVersion]
/// * [locale]
/// * [country]
/// * [occurredAt]
/// * [responses] - Per-question answers (0–50). May be empty when status = dismissed.
/// * [properties] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
/// * [metadata] - Optional submission-level extensibility payload (A/B variant, locale overrides, UI context…). Echoed onto every answer row; persisted to the `metadata` JSON column for JSONExtract-on-demand reads.
@BuiltValue()
abstract class SubmitSurveyRequest
    implements Built<SubmitSurveyRequest, SubmitSurveyRequestBuilder> {
  /// Optional; the server derives the app from the write key when omitted.
  @BuiltValueField(wireName: r'app')
  String? get app;

  @BuiltValueField(wireName: r'environment')
  SubmitSurveyRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  /// Defaults to the registered app's platform when omitted.
  @BuiltValueField(wireName: r'platform')
  SubmitSurveyRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  @BuiltValueField(wireName: r'surveyId')
  String get surveyId;

  @BuiltValueField(wireName: r'surveyVersion')
  String? get surveyVersion;

  @BuiltValueField(wireName: r'surveyName')
  String? get surveyName;

  /// Optional; server generates a UUID when omitted. Idempotency key for retries.
  @BuiltValueField(wireName: r'submissionId')
  String? get submissionId;

  @BuiltValueField(wireName: r'status')
  SubmitSurveyRequestStatusEnum? get status;
  // enum statusEnum {  completed,  partial,  dismissed,  };

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  /// Per-question answers (0–50). May be empty when status = dismissed.
  @BuiltValueField(wireName: r'responses')
  BuiltList<SurveyResponseAnswer>? get responses;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  /// Optional submission-level extensibility payload (A/B variant, locale overrides, UI context…). Echoed onto every answer row; persisted to the `metadata` JSON column for JSONExtract-on-demand reads.
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  SubmitSurveyRequest._();

  factory SubmitSurveyRequest([void updates(SubmitSurveyRequestBuilder b)]) =
      _$SubmitSurveyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitSurveyRequestBuilder b) => b
    ..environment = SubmitSurveyRequestEnvironmentEnum.valueOf('production')
    ..status = SubmitSurveyRequestStatusEnum.valueOf('completed')
    ..responses = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitSurveyRequest> get serializer =>
      _$SubmitSurveyRequestSerializer();
}

class _$SubmitSurveyRequestSerializer
    implements PrimitiveSerializer<SubmitSurveyRequest> {
  @override
  final Iterable<Type> types = const [
    SubmitSurveyRequest,
    _$SubmitSurveyRequest,
  ];

  @override
  final String wireName = r'SubmitSurveyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitSurveyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.app != null) {
      yield r'app';
      yield serializers.serialize(
        object.app,
        specifiedType: const FullType(String),
      );
    }
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType(SubmitSurveyRequestEnvironmentEnum),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(SubmitSurveyRequestPlatformEnum),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.anonymousId != null) {
      yield r'anonymousId';
      yield serializers.serialize(
        object.anonymousId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deviceId != null) {
      yield r'deviceId';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'surveyId';
    yield serializers.serialize(
      object.surveyId,
      specifiedType: const FullType(String),
    );
    if (object.surveyVersion != null) {
      yield r'surveyVersion';
      yield serializers.serialize(
        object.surveyVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.surveyName != null) {
      yield r'surveyName';
      yield serializers.serialize(
        object.surveyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.submissionId != null) {
      yield r'submissionId';
      yield serializers.serialize(
        object.submissionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SubmitSurveyRequestStatusEnum),
      );
    }
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.occurredAt != null) {
      yield r'occurredAt';
      yield serializers.serialize(
        object.occurredAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.responses != null) {
      yield r'responses';
      yield serializers.serialize(
        object.responses,
        specifiedType: const FullType(BuiltList, [
          FullType(SurveyResponseAnswer),
        ]),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitSurveyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubmitSurveyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'app':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.app = valueDes;
          break;
        case r'environment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SubmitSurveyRequestEnvironmentEnum,
                    ),
                  )
                  as SubmitSurveyRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SubmitSurveyRequestPlatformEnum,
                    ),
                  )
                  as SubmitSurveyRequestPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'anonymousId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.anonymousId = valueDes;
          break;
        case r'deviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        case r'surveyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.surveyId = valueDes;
          break;
        case r'surveyVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.surveyVersion = valueDes;
          break;
        case r'surveyName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.surveyName = valueDes;
          break;
        case r'submissionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.submissionId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SubmitSurveyRequestStatusEnum,
                    ),
                  )
                  as SubmitSurveyRequestStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'appVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.appVersion = valueDes;
          break;
        case r'locale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.locale = valueDes;
          break;
        case r'country':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.country = valueDes;
          break;
        case r'occurredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.occurredAt = valueDes;
          break;
        case r'responses':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SurveyResponseAnswer),
                    ]),
                  )
                  as BuiltList<SurveyResponseAnswer>?;
          if (valueDes == null) continue;
          result.responses.replace(valueDes);
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'metadata':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitSurveyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitSurveyRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class SubmitSurveyRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const SubmitSurveyRequestEnvironmentEnum production =
      _$submitSurveyRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const SubmitSurveyRequestEnvironmentEnum staging =
      _$submitSurveyRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const SubmitSurveyRequestEnvironmentEnum development =
      _$submitSurveyRequestEnvironmentEnum_development;

  static Serializer<SubmitSurveyRequestEnvironmentEnum> get serializer =>
      _$submitSurveyRequestEnvironmentEnumSerializer;

  const SubmitSurveyRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<SubmitSurveyRequestEnvironmentEnum> get values =>
      _$submitSurveyRequestEnvironmentEnumValues;
  static SubmitSurveyRequestEnvironmentEnum valueOf(String name) =>
      _$submitSurveyRequestEnvironmentEnumValueOf(name);
}

/// Defaults to the registered app's platform when omitted.
class SubmitSurveyRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const SubmitSurveyRequestPlatformEnum ios =
      _$submitSurveyRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const SubmitSurveyRequestPlatformEnum android =
      _$submitSurveyRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const SubmitSurveyRequestPlatformEnum web =
      _$submitSurveyRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const SubmitSurveyRequestPlatformEnum macos =
      _$submitSurveyRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const SubmitSurveyRequestPlatformEnum windows =
      _$submitSurveyRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const SubmitSurveyRequestPlatformEnum linux =
      _$submitSurveyRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const SubmitSurveyRequestPlatformEnum server =
      _$submitSurveyRequestPlatformEnum_server;

  static Serializer<SubmitSurveyRequestPlatformEnum> get serializer =>
      _$submitSurveyRequestPlatformEnumSerializer;

  const SubmitSurveyRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<SubmitSurveyRequestPlatformEnum> get values =>
      _$submitSurveyRequestPlatformEnumValues;
  static SubmitSurveyRequestPlatformEnum valueOf(String name) =>
      _$submitSurveyRequestPlatformEnumValueOf(name);
}

class SubmitSurveyRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'completed')
  static const SubmitSurveyRequestStatusEnum completed =
      _$submitSurveyRequestStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'partial')
  static const SubmitSurveyRequestStatusEnum partial =
      _$submitSurveyRequestStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const SubmitSurveyRequestStatusEnum dismissed =
      _$submitSurveyRequestStatusEnum_dismissed;

  static Serializer<SubmitSurveyRequestStatusEnum> get serializer =>
      _$submitSurveyRequestStatusEnumSerializer;

  const SubmitSurveyRequestStatusEnum._(String name) : super(name);

  static BuiltSet<SubmitSurveyRequestStatusEnum> get values =>
      _$submitSurveyRequestStatusEnumValues;
  static SubmitSurveyRequestStatusEnum valueOf(String name) =>
      _$submitSurveyRequestStatusEnumValueOf(name);
}
