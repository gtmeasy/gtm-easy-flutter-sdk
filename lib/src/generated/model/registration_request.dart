//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_request.g.dart';

/// RegistrationRequest
///
/// Properties:
/// * [app] - Optional; the server derives the app from the write key when omitted.
/// * [environment]
/// * [platform] - Defaults to the registered app's platform when omitted.
/// * [userId]
/// * [anonymousId]
/// * [deviceId]
/// * [username]
/// * [email]
/// * [appVersion]
/// * [buildNumber]
/// * [source_]
/// * [country] - ISO-3166 alpha-2; server fills from Cloudflare if absent.
/// * [locale]
/// * [timezone]
/// * [attributionProvider]
/// * [attributionId]
/// * [occurredAt]
/// * [traits] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
/// * [properties] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
@BuiltValue()
abstract class RegistrationRequest
    implements Built<RegistrationRequest, RegistrationRequestBuilder> {
  /// Optional; the server derives the app from the write key when omitted.
  @BuiltValueField(wireName: r'app')
  String? get app;

  @BuiltValueField(wireName: r'environment')
  RegistrationRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  /// Defaults to the registered app's platform when omitted.
  @BuiltValueField(wireName: r'platform')
  RegistrationRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'buildNumber')
  String? get buildNumber;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  /// ISO-3166 alpha-2; server fills from Cloudflare if absent.
  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'attributionProvider')
  String? get attributionProvider;

  @BuiltValueField(wireName: r'attributionId')
  String? get attributionId;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'traits')
  BuiltMap<String, JsonObject?>? get traits;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  RegistrationRequest._();

  factory RegistrationRequest([void updates(RegistrationRequestBuilder b)]) =
      _$RegistrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationRequestBuilder b) => b
    ..environment = RegistrationRequestEnvironmentEnum.valueOf('production')
    ..source_ = 'native';

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationRequest> get serializer =>
      _$RegistrationRequestSerializer();
}

class _$RegistrationRequestSerializer
    implements PrimitiveSerializer<RegistrationRequest> {
  @override
  final Iterable<Type> types = const [
    RegistrationRequest,
    _$RegistrationRequest,
  ];

  @override
  final String wireName = r'RegistrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationRequest object, {
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
        specifiedType: const FullType(RegistrationRequestEnvironmentEnum),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(RegistrationRequestPlatformEnum),
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
    if (object.attributionProvider != null) {
      yield r'attributionProvider';
      yield serializers.serialize(
        object.attributionProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attributionId != null) {
      yield r'attributionId';
      yield serializers.serialize(
        object.attributionId,
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
    if (object.traits != null) {
      yield r'traits';
      yield serializers.serialize(
        object.traits,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationRequest object, {
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
    required RegistrationRequestBuilder result,
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
                      RegistrationRequestEnvironmentEnum,
                    ),
                  )
                  as RegistrationRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RegistrationRequestPlatformEnum,
                    ),
                  )
                  as RegistrationRequestPlatformEnum?;
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
        case r'username':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
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
        case r'attributionProvider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attributionProvider = valueDes;
          break;
        case r'attributionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attributionId = valueDes;
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
        case r'traits':
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
          result.traits.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationRequestBuilder();
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

class RegistrationRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const RegistrationRequestEnvironmentEnum production =
      _$registrationRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const RegistrationRequestEnvironmentEnum staging =
      _$registrationRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const RegistrationRequestEnvironmentEnum development =
      _$registrationRequestEnvironmentEnum_development;

  static Serializer<RegistrationRequestEnvironmentEnum> get serializer =>
      _$registrationRequestEnvironmentEnumSerializer;

  const RegistrationRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<RegistrationRequestEnvironmentEnum> get values =>
      _$registrationRequestEnvironmentEnumValues;
  static RegistrationRequestEnvironmentEnum valueOf(String name) =>
      _$registrationRequestEnvironmentEnumValueOf(name);
}

/// Defaults to the registered app's platform when omitted.
class RegistrationRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const RegistrationRequestPlatformEnum ios =
      _$registrationRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const RegistrationRequestPlatformEnum android =
      _$registrationRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const RegistrationRequestPlatformEnum web =
      _$registrationRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const RegistrationRequestPlatformEnum macos =
      _$registrationRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const RegistrationRequestPlatformEnum windows =
      _$registrationRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const RegistrationRequestPlatformEnum linux =
      _$registrationRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const RegistrationRequestPlatformEnum server =
      _$registrationRequestPlatformEnum_server;

  static Serializer<RegistrationRequestPlatformEnum> get serializer =>
      _$registrationRequestPlatformEnumSerializer;

  const RegistrationRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<RegistrationRequestPlatformEnum> get values =>
      _$registrationRequestPlatformEnumValues;
  static RegistrationRequestPlatformEnum valueOf(String name) =>
      _$registrationRequestPlatformEnumValueOf(name);
}
