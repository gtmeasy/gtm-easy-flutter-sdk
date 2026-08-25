//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_ingest_item_result.g.dart';

/// BatchIngestItemResult
///
/// Properties:
/// * [index] - Position in the request events array.
/// * [eventId] - Client eventId when provided; otherwise null.
/// * [status]
/// * [reason] - reviewer_infrastructure when ignored, or the validation message when rejected.
/// * [warnings]
@BuiltValue()
abstract class BatchIngestItemResult
    implements Built<BatchIngestItemResult, BatchIngestItemResultBuilder> {
  /// Position in the request events array.
  @BuiltValueField(wireName: r'index')
  int get index;

  /// Client eventId when provided; otherwise null.
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  @BuiltValueField(wireName: r'status')
  BatchIngestItemResultStatusEnum get status;
  // enum statusEnum {  accepted,  ignored,  rejected,  };

  /// reviewer_infrastructure when ignored, or the validation message when rejected.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  BatchIngestItemResult._();

  factory BatchIngestItemResult(
      [void updates(BatchIngestItemResultBuilder b)]) = _$BatchIngestItemResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchIngestItemResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchIngestItemResult> get serializer =>
      _$BatchIngestItemResultSerializer();
}

class _$BatchIngestItemResultSerializer
    implements PrimitiveSerializer<BatchIngestItemResult> {
  @override
  final Iterable<Type> types = const [
    BatchIngestItemResult,
    _$BatchIngestItemResult
  ];

  @override
  final String wireName = r'BatchIngestItemResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchIngestItemResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'eventId';
    yield object.eventId == null
        ? null
        : serializers.serialize(
            object.eventId,
            specifiedType: const FullType.nullable(String),
          );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BatchIngestItemResultStatusEnum),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchIngestItemResult object, {
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
    required BatchIngestItemResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.eventId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchIngestItemResultStatusEnum),
          ) as BatchIngestItemResultStatusEnum;
          result.status = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchIngestItemResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchIngestItemResultBuilder();
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

class BatchIngestItemResultStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'accepted')
  static const BatchIngestItemResultStatusEnum accepted =
      _$batchIngestItemResultStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'ignored')
  static const BatchIngestItemResultStatusEnum ignored =
      _$batchIngestItemResultStatusEnum_ignored;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const BatchIngestItemResultStatusEnum rejected =
      _$batchIngestItemResultStatusEnum_rejected;

  static Serializer<BatchIngestItemResultStatusEnum> get serializer =>
      _$batchIngestItemResultStatusEnumSerializer;

  const BatchIngestItemResultStatusEnum._(String name) : super(name);

  static BuiltSet<BatchIngestItemResultStatusEnum> get values =>
      _$batchIngestItemResultStatusEnumValues;
  static BatchIngestItemResultStatusEnum valueOf(String name) =>
      _$batchIngestItemResultStatusEnumValueOf(name);
}
