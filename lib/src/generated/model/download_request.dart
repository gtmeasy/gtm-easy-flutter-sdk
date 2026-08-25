//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_request.g.dart';

/// DownloadRequest
///
/// Properties:
/// * [app] - Optional; the server derives the app from the write key when omitted.
/// * [environment]
/// * [platform] - Defaults to the registered app's platform when omitted.
/// * [userId]
/// * [anonymousId]
/// * [deviceId]
/// * [appVersion]
/// * [buildNumber]
/// * [source_]
/// * [country]
/// * [locale]
/// * [timezone]
/// * [attributionProvider]
/// * [attributionId]
/// * [occurredAt]
/// * [properties] - Download metadata, e.g. { channel, fileSize, downloadUrl }.
@BuiltValue()
abstract class DownloadRequest
    implements Built<DownloadRequest, DownloadRequestBuilder> {
  /// Optional; the server derives the app from the write key when omitted.
  @BuiltValueField(wireName: r'app')
  String? get app;

  @BuiltValueField(wireName: r'environment')
  DownloadRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  /// Defaults to the registered app's platform when omitted.
  @BuiltValueField(wireName: r'platform')
  DownloadRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

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

  @BuiltValueField(wireName: r'attributionProvider')
  String? get attributionProvider;

  @BuiltValueField(wireName: r'attributionId')
  String? get attributionId;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  /// Download metadata, e.g. { channel, fileSize, downloadUrl }.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  DownloadRequest._();

  factory DownloadRequest([void updates(DownloadRequestBuilder b)]) =
      _$DownloadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadRequestBuilder b) => b
    ..environment = DownloadRequestEnvironmentEnum.valueOf('production')
    ..source_ = 'website';

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadRequest> get serializer =>
      _$DownloadRequestSerializer();
}

class _$DownloadRequestSerializer
    implements PrimitiveSerializer<DownloadRequest> {
  @override
  final Iterable<Type> types = const [DownloadRequest, _$DownloadRequest];

  @override
  final String wireName = r'DownloadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadRequest object, {
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
        specifiedType: const FullType(DownloadRequestEnvironmentEnum),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(DownloadRequestPlatformEnum),
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
    DownloadRequest object, {
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
    required DownloadRequestBuilder result,
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
                      DownloadRequestEnvironmentEnum,
                    ),
                  )
                  as DownloadRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DownloadRequestPlatformEnum,
                    ),
                  )
                  as DownloadRequestPlatformEnum?;
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
  DownloadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadRequestBuilder();
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

class DownloadRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const DownloadRequestEnvironmentEnum production =
      _$downloadRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const DownloadRequestEnvironmentEnum staging =
      _$downloadRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const DownloadRequestEnvironmentEnum development =
      _$downloadRequestEnvironmentEnum_development;

  static Serializer<DownloadRequestEnvironmentEnum> get serializer =>
      _$downloadRequestEnvironmentEnumSerializer;

  const DownloadRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<DownloadRequestEnvironmentEnum> get values =>
      _$downloadRequestEnvironmentEnumValues;
  static DownloadRequestEnvironmentEnum valueOf(String name) =>
      _$downloadRequestEnvironmentEnumValueOf(name);
}

/// Defaults to the registered app's platform when omitted.
class DownloadRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const DownloadRequestPlatformEnum ios =
      _$downloadRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const DownloadRequestPlatformEnum android =
      _$downloadRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const DownloadRequestPlatformEnum web =
      _$downloadRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const DownloadRequestPlatformEnum macos =
      _$downloadRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const DownloadRequestPlatformEnum windows =
      _$downloadRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const DownloadRequestPlatformEnum linux =
      _$downloadRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const DownloadRequestPlatformEnum server =
      _$downloadRequestPlatformEnum_server;

  static Serializer<DownloadRequestPlatformEnum> get serializer =>
      _$downloadRequestPlatformEnumSerializer;

  const DownloadRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<DownloadRequestPlatformEnum> get values =>
      _$downloadRequestPlatformEnumValues;
  static DownloadRequestPlatformEnum valueOf(String name) =>
      _$downloadRequestPlatformEnumValueOf(name);
}
