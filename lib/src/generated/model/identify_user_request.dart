//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identify_user_request.g.dart';

/// IdentifyUserRequest
///
/// Properties:
/// * [app]
/// * [environment]
/// * [platform] - Originating platform.
/// * [userId]
/// * [anonymousId]
/// * [deviceId]
/// * [username] - Human-readable display name / handle. Plaintext at rest.
/// * [email] - User email. Plaintext at rest; SHA-256 hashed only at ad-platform egress.
/// * [appVersion]
/// * [buildNumber]
/// * [country]
/// * [locale]
/// * [timezone]
/// * [traits] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
@BuiltValue()
abstract class IdentifyUserRequest
    implements Built<IdentifyUserRequest, IdentifyUserRequestBuilder> {
  @BuiltValueField(wireName: r'app')
  String get app;

  @BuiltValueField(wireName: r'environment')
  IdentifyUserRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  /// Originating platform.
  @BuiltValueField(wireName: r'platform')
  IdentifyUserRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  /// Human-readable display name / handle. Plaintext at rest.
  @BuiltValueField(wireName: r'username')
  String? get username;

  /// User email. Plaintext at rest; SHA-256 hashed only at ad-platform egress.
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'buildNumber')
  String? get buildNumber;

  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'traits')
  BuiltMap<String, JsonObject?>? get traits;

  IdentifyUserRequest._();

  factory IdentifyUserRequest([void updates(IdentifyUserRequestBuilder b)]) =
      _$IdentifyUserRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdentifyUserRequestBuilder b) => b
    ..environment = IdentifyUserRequestEnvironmentEnum.valueOf('production')
    ..platform = IdentifyUserRequestPlatformEnum.valueOf('ios');

  @BuiltValueSerializer(custom: true)
  static Serializer<IdentifyUserRequest> get serializer =>
      _$IdentifyUserRequestSerializer();
}

class _$IdentifyUserRequestSerializer
    implements PrimitiveSerializer<IdentifyUserRequest> {
  @override
  final Iterable<Type> types = const [
    IdentifyUserRequest,
    _$IdentifyUserRequest
  ];

  @override
  final String wireName = r'IdentifyUserRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdentifyUserRequest object, {
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
        specifiedType: const FullType(IdentifyUserRequestEnvironmentEnum),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(IdentifyUserRequestPlatformEnum),
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
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
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
    if (object.traits != null) {
      yield r'traits';
      yield serializers.serialize(
        object.traits,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdentifyUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdentifyUserRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'app':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.app = valueDes;
          break;
        case r'environment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IdentifyUserRequestEnvironmentEnum),
          ) as IdentifyUserRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IdentifyUserRequestPlatformEnum),
          ) as IdentifyUserRequestPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'anonymousId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.anonymousId = valueDes;
          break;
        case r'deviceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'appVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appVersion = valueDes;
          break;
        case r'buildNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buildNumber = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.country = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.locale = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'traits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.traits.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdentifyUserRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentifyUserRequestBuilder();
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

class IdentifyUserRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const IdentifyUserRequestEnvironmentEnum production =
      _$identifyUserRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const IdentifyUserRequestEnvironmentEnum staging =
      _$identifyUserRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const IdentifyUserRequestEnvironmentEnum development =
      _$identifyUserRequestEnvironmentEnum_development;

  static Serializer<IdentifyUserRequestEnvironmentEnum> get serializer =>
      _$identifyUserRequestEnvironmentEnumSerializer;

  const IdentifyUserRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<IdentifyUserRequestEnvironmentEnum> get values =>
      _$identifyUserRequestEnvironmentEnumValues;
  static IdentifyUserRequestEnvironmentEnum valueOf(String name) =>
      _$identifyUserRequestEnvironmentEnumValueOf(name);
}

/// Originating platform.
class IdentifyUserRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const IdentifyUserRequestPlatformEnum ios =
      _$identifyUserRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const IdentifyUserRequestPlatformEnum android =
      _$identifyUserRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const IdentifyUserRequestPlatformEnum web =
      _$identifyUserRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const IdentifyUserRequestPlatformEnum macos =
      _$identifyUserRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const IdentifyUserRequestPlatformEnum windows =
      _$identifyUserRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const IdentifyUserRequestPlatformEnum linux =
      _$identifyUserRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const IdentifyUserRequestPlatformEnum server =
      _$identifyUserRequestPlatformEnum_server;

  static Serializer<IdentifyUserRequestPlatformEnum> get serializer =>
      _$identifyUserRequestPlatformEnumSerializer;

  const IdentifyUserRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<IdentifyUserRequestPlatformEnum> get values =>
      _$identifyUserRequestPlatformEnumValues;
  static IdentifyUserRequestPlatformEnum valueOf(String name) =>
      _$identifyUserRequestPlatformEnumValueOf(name);
}
