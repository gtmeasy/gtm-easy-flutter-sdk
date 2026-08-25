//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_referrer_request.g.dart';

/// WebReferrerRequest
///
/// Properties:
/// * [app]
/// * [environment]
/// * [userId]
/// * [anonymousId]
/// * [platform] - Originating platform.
/// * [source_]
/// * [occurredAt]
/// * [webReferrer]
/// * [clickId]
/// * [properties] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
@BuiltValue()
abstract class WebReferrerRequest
    implements Built<WebReferrerRequest, WebReferrerRequestBuilder> {
  @BuiltValueField(wireName: r'app')
  String get app;

  @BuiltValueField(wireName: r'environment')
  WebReferrerRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  /// Originating platform.
  @BuiltValueField(wireName: r'platform')
  WebReferrerRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  @BuiltValueField(wireName: r'webReferrer')
  String get webReferrer;

  @BuiltValueField(wireName: r'clickId')
  String? get clickId;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  WebReferrerRequest._();

  factory WebReferrerRequest([void updates(WebReferrerRequestBuilder b)]) =
      _$WebReferrerRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebReferrerRequestBuilder b) => b
    ..environment = WebReferrerRequestEnvironmentEnum.valueOf('production')
    ..platform = WebReferrerRequestPlatformEnum.valueOf('web')
    ..source_ = 'native';

  @BuiltValueSerializer(custom: true)
  static Serializer<WebReferrerRequest> get serializer =>
      _$WebReferrerRequestSerializer();
}

class _$WebReferrerRequestSerializer
    implements PrimitiveSerializer<WebReferrerRequest> {
  @override
  final Iterable<Type> types = const [WebReferrerRequest, _$WebReferrerRequest];

  @override
  final String wireName = r'WebReferrerRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebReferrerRequest object, {
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
        specifiedType: const FullType(WebReferrerRequestEnvironmentEnum),
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
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(WebReferrerRequestPlatformEnum),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.occurredAt != null) {
      yield r'occurredAt';
      yield serializers.serialize(
        object.occurredAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'webReferrer';
    yield serializers.serialize(
      object.webReferrer,
      specifiedType: const FullType(String),
    );
    if (object.clickId != null) {
      yield r'clickId';
      yield serializers.serialize(
        object.clickId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebReferrerRequest object, {
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
    required WebReferrerRequestBuilder result,
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
                const FullType.nullable(WebReferrerRequestEnvironmentEnum),
          ) as WebReferrerRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
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
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(WebReferrerRequestPlatformEnum),
          ) as WebReferrerRequestPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'occurredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.occurredAt = valueDes;
          break;
        case r'webReferrer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webReferrer = valueDes;
          break;
        case r'clickId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clickId = valueDes;
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
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
  WebReferrerRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebReferrerRequestBuilder();
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

class WebReferrerRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const WebReferrerRequestEnvironmentEnum production =
      _$webReferrerRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const WebReferrerRequestEnvironmentEnum staging =
      _$webReferrerRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const WebReferrerRequestEnvironmentEnum development =
      _$webReferrerRequestEnvironmentEnum_development;

  static Serializer<WebReferrerRequestEnvironmentEnum> get serializer =>
      _$webReferrerRequestEnvironmentEnumSerializer;

  const WebReferrerRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<WebReferrerRequestEnvironmentEnum> get values =>
      _$webReferrerRequestEnvironmentEnumValues;
  static WebReferrerRequestEnvironmentEnum valueOf(String name) =>
      _$webReferrerRequestEnvironmentEnumValueOf(name);
}

/// Originating platform.
class WebReferrerRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const WebReferrerRequestPlatformEnum ios =
      _$webReferrerRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const WebReferrerRequestPlatformEnum android =
      _$webReferrerRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const WebReferrerRequestPlatformEnum web =
      _$webReferrerRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const WebReferrerRequestPlatformEnum macos =
      _$webReferrerRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const WebReferrerRequestPlatformEnum windows =
      _$webReferrerRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const WebReferrerRequestPlatformEnum linux =
      _$webReferrerRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const WebReferrerRequestPlatformEnum server =
      _$webReferrerRequestPlatformEnum_server;

  static Serializer<WebReferrerRequestPlatformEnum> get serializer =>
      _$webReferrerRequestPlatformEnumSerializer;

  const WebReferrerRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<WebReferrerRequestPlatformEnum> get values =>
      _$webReferrerRequestPlatformEnumValues;
  static WebReferrerRequestPlatformEnum valueOf(String name) =>
      _$webReferrerRequestPlatformEnumValueOf(name);
}
