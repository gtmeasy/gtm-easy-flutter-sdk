//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'play_install_referrer_request.g.dart';

/// PlayInstallReferrerRequest
///
/// Properties:
/// * [app]
/// * [environment]
/// * [userId]
/// * [anonymousId]
/// * [platform]
/// * [source_]
/// * [occurredAt]
/// * [playInstallReferrer]
/// * [properties] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
@BuiltValue()
abstract class PlayInstallReferrerRequest
    implements
        Built<PlayInstallReferrerRequest, PlayInstallReferrerRequestBuilder> {
  @BuiltValueField(wireName: r'app')
  String get app;

  @BuiltValueField(wireName: r'environment')
  PlayInstallReferrerRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'platform')
  PlayInstallReferrerRequestPlatformEnum? get platform;
  // enum platformEnum {  android,  };

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  @BuiltValueField(wireName: r'playInstallReferrer')
  String get playInstallReferrer;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  PlayInstallReferrerRequest._();

  factory PlayInstallReferrerRequest([
    void updates(PlayInstallReferrerRequestBuilder b),
  ]) = _$PlayInstallReferrerRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlayInstallReferrerRequestBuilder b) => b
    ..environment = PlayInstallReferrerRequestEnvironmentEnum.valueOf(
      'production',
    )
    ..platform = PlayInstallReferrerRequestPlatformEnum.valueOf('android')
    ..source_ = 'native';

  @BuiltValueSerializer(custom: true)
  static Serializer<PlayInstallReferrerRequest> get serializer =>
      _$PlayInstallReferrerRequestSerializer();
}

class _$PlayInstallReferrerRequestSerializer
    implements PrimitiveSerializer<PlayInstallReferrerRequest> {
  @override
  final Iterable<Type> types = const [
    PlayInstallReferrerRequest,
    _$PlayInstallReferrerRequest,
  ];

  @override
  final String wireName = r'PlayInstallReferrerRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlayInstallReferrerRequest object, {
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
        specifiedType: const FullType(
          PlayInstallReferrerRequestEnvironmentEnum,
        ),
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
        specifiedType: const FullType(PlayInstallReferrerRequestPlatformEnum),
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
    yield r'playInstallReferrer';
    yield serializers.serialize(
      object.playInstallReferrer,
      specifiedType: const FullType(String),
    );
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
    PlayInstallReferrerRequest object, {
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
    required PlayInstallReferrerRequestBuilder result,
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
                      PlayInstallReferrerRequestEnvironmentEnum,
                    ),
                  )
                  as PlayInstallReferrerRequestEnvironmentEnum?;
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
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PlayInstallReferrerRequestPlatformEnum,
                    ),
                  )
                  as PlayInstallReferrerRequestPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
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
        case r'playInstallReferrer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.playInstallReferrer = valueDes;
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
  PlayInstallReferrerRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlayInstallReferrerRequestBuilder();
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

class PlayInstallReferrerRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const PlayInstallReferrerRequestEnvironmentEnum production =
      _$playInstallReferrerRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const PlayInstallReferrerRequestEnvironmentEnum staging =
      _$playInstallReferrerRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const PlayInstallReferrerRequestEnvironmentEnum development =
      _$playInstallReferrerRequestEnvironmentEnum_development;

  static Serializer<PlayInstallReferrerRequestEnvironmentEnum> get serializer =>
      _$playInstallReferrerRequestEnvironmentEnumSerializer;

  const PlayInstallReferrerRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<PlayInstallReferrerRequestEnvironmentEnum> get values =>
      _$playInstallReferrerRequestEnvironmentEnumValues;
  static PlayInstallReferrerRequestEnvironmentEnum valueOf(String name) =>
      _$playInstallReferrerRequestEnvironmentEnumValueOf(name);
}

class PlayInstallReferrerRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'android')
  static const PlayInstallReferrerRequestPlatformEnum android =
      _$playInstallReferrerRequestPlatformEnum_android;

  static Serializer<PlayInstallReferrerRequestPlatformEnum> get serializer =>
      _$playInstallReferrerRequestPlatformEnumSerializer;

  const PlayInstallReferrerRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<PlayInstallReferrerRequestPlatformEnum> get values =>
      _$playInstallReferrerRequestPlatformEnumValues;
  static PlayInstallReferrerRequestPlatformEnum valueOf(String name) =>
      _$playInstallReferrerRequestPlatformEnumValueOf(name);
}
