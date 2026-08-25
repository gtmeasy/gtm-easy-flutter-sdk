//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skan_postback_request.g.dart';

/// SkanPostbackRequest
///
/// Properties:
/// * [version]
/// * [adNetworkId]
/// * [campaignId]
/// * [sourceIdentifier]
/// * [transactionId]
/// * [appId]
/// * [attributionSignature]
/// * [redownload]
/// * [sourceAppId]
/// * [sourceDomain]
/// * [fidelityType]
/// * [conversionValue]
/// * [coarseConversionValue]
/// * [didWin]
/// * [postbackSequenceIndex]
@BuiltValue()
abstract class SkanPostbackRequest
    implements Built<SkanPostbackRequest, SkanPostbackRequestBuilder> {
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'ad-network-id')
  String get adNetworkId;

  @BuiltValueField(wireName: r'campaign-id')
  int? get campaignId;

  @BuiltValueField(wireName: r'source-identifier')
  String? get sourceIdentifier;

  @BuiltValueField(wireName: r'transaction-id')
  String get transactionId;

  @BuiltValueField(wireName: r'app-id')
  int get appId;

  @BuiltValueField(wireName: r'attribution-signature')
  String get attributionSignature;

  @BuiltValueField(wireName: r'redownload')
  bool? get redownload;

  @BuiltValueField(wireName: r'source-app-id')
  int? get sourceAppId;

  @BuiltValueField(wireName: r'source-domain')
  String? get sourceDomain;

  @BuiltValueField(wireName: r'fidelity-type')
  int? get fidelityType;

  @BuiltValueField(wireName: r'conversion-value')
  int? get conversionValue;

  @BuiltValueField(wireName: r'coarse-conversion-value')
  SkanPostbackRequestCoarseConversionValueEnum? get coarseConversionValue;
  // enum coarseConversionValueEnum {  low,  medium,  high,  };

  @BuiltValueField(wireName: r'did-win')
  bool? get didWin;

  @BuiltValueField(wireName: r'postback-sequence-index')
  int? get postbackSequenceIndex;

  SkanPostbackRequest._();

  factory SkanPostbackRequest([void updates(SkanPostbackRequestBuilder b)]) =
      _$SkanPostbackRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkanPostbackRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkanPostbackRequest> get serializer =>
      _$SkanPostbackRequestSerializer();
}

class _$SkanPostbackRequestSerializer
    implements PrimitiveSerializer<SkanPostbackRequest> {
  @override
  final Iterable<Type> types = const [
    SkanPostbackRequest,
    _$SkanPostbackRequest
  ];

  @override
  final String wireName = r'SkanPostbackRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkanPostbackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'ad-network-id';
    yield serializers.serialize(
      object.adNetworkId,
      specifiedType: const FullType(String),
    );
    if (object.campaignId != null) {
      yield r'campaign-id';
      yield serializers.serialize(
        object.campaignId,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceIdentifier != null) {
      yield r'source-identifier';
      yield serializers.serialize(
        object.sourceIdentifier,
        specifiedType: const FullType(String),
      );
    }
    yield r'transaction-id';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
    yield r'app-id';
    yield serializers.serialize(
      object.appId,
      specifiedType: const FullType(int),
    );
    yield r'attribution-signature';
    yield serializers.serialize(
      object.attributionSignature,
      specifiedType: const FullType(String),
    );
    if (object.redownload != null) {
      yield r'redownload';
      yield serializers.serialize(
        object.redownload,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sourceAppId != null) {
      yield r'source-app-id';
      yield serializers.serialize(
        object.sourceAppId,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceDomain != null) {
      yield r'source-domain';
      yield serializers.serialize(
        object.sourceDomain,
        specifiedType: const FullType(String),
      );
    }
    if (object.fidelityType != null) {
      yield r'fidelity-type';
      yield serializers.serialize(
        object.fidelityType,
        specifiedType: const FullType(int),
      );
    }
    if (object.conversionValue != null) {
      yield r'conversion-value';
      yield serializers.serialize(
        object.conversionValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.coarseConversionValue != null) {
      yield r'coarse-conversion-value';
      yield serializers.serialize(
        object.coarseConversionValue,
        specifiedType:
            const FullType(SkanPostbackRequestCoarseConversionValueEnum),
      );
    }
    if (object.didWin != null) {
      yield r'did-win';
      yield serializers.serialize(
        object.didWin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.postbackSequenceIndex != null) {
      yield r'postback-sequence-index';
      yield serializers.serialize(
        object.postbackSequenceIndex,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SkanPostbackRequest object, {
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
    required SkanPostbackRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'ad-network-id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.adNetworkId = valueDes;
          break;
        case r'campaign-id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.campaignId = valueDes;
          break;
        case r'source-identifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceIdentifier = valueDes;
          break;
        case r'transaction-id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        case r'app-id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.appId = valueDes;
          break;
        case r'attribution-signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attributionSignature = valueDes;
          break;
        case r'redownload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.redownload = valueDes;
          break;
        case r'source-app-id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sourceAppId = valueDes;
          break;
        case r'source-domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceDomain = valueDes;
          break;
        case r'fidelity-type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.fidelityType = valueDes;
          break;
        case r'conversion-value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.conversionValue = valueDes;
          break;
        case r'coarse-conversion-value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                SkanPostbackRequestCoarseConversionValueEnum),
          ) as SkanPostbackRequestCoarseConversionValueEnum?;
          if (valueDes == null) continue;
          result.coarseConversionValue = valueDes;
          break;
        case r'did-win':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.didWin = valueDes;
          break;
        case r'postback-sequence-index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.postbackSequenceIndex = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SkanPostbackRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkanPostbackRequestBuilder();
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

class SkanPostbackRequestCoarseConversionValueEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const SkanPostbackRequestCoarseConversionValueEnum low =
      _$skanPostbackRequestCoarseConversionValueEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const SkanPostbackRequestCoarseConversionValueEnum medium =
      _$skanPostbackRequestCoarseConversionValueEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const SkanPostbackRequestCoarseConversionValueEnum high =
      _$skanPostbackRequestCoarseConversionValueEnum_high;

  static Serializer<SkanPostbackRequestCoarseConversionValueEnum>
      get serializer =>
          _$skanPostbackRequestCoarseConversionValueEnumSerializer;

  const SkanPostbackRequestCoarseConversionValueEnum._(String name)
      : super(name);

  static BuiltSet<SkanPostbackRequestCoarseConversionValueEnum> get values =>
      _$skanPostbackRequestCoarseConversionValueEnumValues;
  static SkanPostbackRequestCoarseConversionValueEnum valueOf(String name) =>
      _$skanPostbackRequestCoarseConversionValueEnumValueOf(name);
}
