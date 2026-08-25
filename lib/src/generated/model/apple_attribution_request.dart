//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apple_attribution_request.g.dart';

/// AppleAttributionRequest
///
/// Properties:
/// * [app]
/// * [environment]
/// * [userId]
/// * [anonymousId]
/// * [deviceId]
/// * [platform] - Originating platform.
/// * [appVersion]
/// * [buildNumber]
/// * [source_]
/// * [country]
/// * [locale]
/// * [timezone]
/// * [occurredAt]
/// * [properties] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
/// * [appleAttributionToken]
@BuiltValue()
abstract class AppleAttributionRequest
    implements Built<AppleAttributionRequest, AppleAttributionRequestBuilder> {
  @BuiltValueField(wireName: r'app')
  String get app;

  @BuiltValueField(wireName: r'environment')
  AppleAttributionRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  /// Originating platform.
  @BuiltValueField(wireName: r'platform')
  AppleAttributionRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'buildNumber')
  String? get buildNumber;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'appleAttributionToken')
  String get appleAttributionToken;

  AppleAttributionRequest._();

  factory AppleAttributionRequest([
    void updates(AppleAttributionRequestBuilder b),
  ]) = _$AppleAttributionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppleAttributionRequestBuilder b) => b
    ..environment = AppleAttributionRequestEnvironmentEnum.valueOf('production')
    ..platform = AppleAttributionRequestPlatformEnum.valueOf('ios')
    ..source_ = 'native';

  @BuiltValueSerializer(custom: true)
  static Serializer<AppleAttributionRequest> get serializer =>
      _$AppleAttributionRequestSerializer();
}

class _$AppleAttributionRequestSerializer
    implements PrimitiveSerializer<AppleAttributionRequest> {
  @override
  final Iterable<Type> types = const [
    AppleAttributionRequest,
    _$AppleAttributionRequest,
  ];

  @override
  final String wireName = r'AppleAttributionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppleAttributionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'app';
    yield serializers.serialize(
      object.app,
      specifiedType: const FullType(String),
    );
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType(AppleAttributionRequestEnvironmentEnum),
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
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(AppleAttributionRequestPlatformEnum),
      );
    }
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buildNumber != null) {
      yield r'buildNumber';
      yield serializers.serialize(
        object.buildNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
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
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
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
    yield r'appleAttributionToken';
    yield serializers.serialize(
      object.appleAttributionToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AppleAttributionRequest object, {
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
    required AppleAttributionRequestBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.app = valueDes;
          break;
        case r'environment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AppleAttributionRequestEnvironmentEnum,
                    ),
                  )
                  as AppleAttributionRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
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
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AppleAttributionRequestPlatformEnum,
                    ),
                  )
                  as AppleAttributionRequestPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
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
        case r'buildNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.buildNumber = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
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
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
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
        case r'appleAttributionToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.appleAttributionToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppleAttributionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppleAttributionRequestBuilder();
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

class AppleAttributionRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const AppleAttributionRequestEnvironmentEnum production =
      _$appleAttributionRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const AppleAttributionRequestEnvironmentEnum staging =
      _$appleAttributionRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const AppleAttributionRequestEnvironmentEnum development =
      _$appleAttributionRequestEnvironmentEnum_development;

  static Serializer<AppleAttributionRequestEnvironmentEnum> get serializer =>
      _$appleAttributionRequestEnvironmentEnumSerializer;

  const AppleAttributionRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<AppleAttributionRequestEnvironmentEnum> get values =>
      _$appleAttributionRequestEnvironmentEnumValues;
  static AppleAttributionRequestEnvironmentEnum valueOf(String name) =>
      _$appleAttributionRequestEnvironmentEnumValueOf(name);
}

/// Originating platform.
class AppleAttributionRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const AppleAttributionRequestPlatformEnum ios =
      _$appleAttributionRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const AppleAttributionRequestPlatformEnum android =
      _$appleAttributionRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const AppleAttributionRequestPlatformEnum web =
      _$appleAttributionRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const AppleAttributionRequestPlatformEnum macos =
      _$appleAttributionRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const AppleAttributionRequestPlatformEnum windows =
      _$appleAttributionRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const AppleAttributionRequestPlatformEnum linux =
      _$appleAttributionRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const AppleAttributionRequestPlatformEnum server =
      _$appleAttributionRequestPlatformEnum_server;

  static Serializer<AppleAttributionRequestPlatformEnum> get serializer =>
      _$appleAttributionRequestPlatformEnumSerializer;

  const AppleAttributionRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<AppleAttributionRequestPlatformEnum> get values =>
      _$appleAttributionRequestPlatformEnumValues;
  static AppleAttributionRequestPlatformEnum valueOf(String name) =>
      _$appleAttributionRequestPlatformEnumValueOf(name);
}
