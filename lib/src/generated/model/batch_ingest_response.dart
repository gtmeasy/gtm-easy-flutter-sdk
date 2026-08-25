//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gtmeasy_growth/src/generated/model/batch_ingest_item_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_ingest_response.g.dart';

/// BatchIngestResponse
///
/// Properties:
/// * [accepted]
/// * [rejected]
/// * [results]
@BuiltValue()
abstract class BatchIngestResponse
    implements Built<BatchIngestResponse, BatchIngestResponseBuilder> {
  @BuiltValueField(wireName: r'accepted')
  int get accepted;

  @BuiltValueField(wireName: r'rejected')
  int get rejected;

  @BuiltValueField(wireName: r'results')
  BuiltList<BatchIngestItemResult> get results;

  BatchIngestResponse._();

  factory BatchIngestResponse([void updates(BatchIngestResponseBuilder b)]) =
      _$BatchIngestResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchIngestResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchIngestResponse> get serializer =>
      _$BatchIngestResponseSerializer();
}

class _$BatchIngestResponseSerializer
    implements PrimitiveSerializer<BatchIngestResponse> {
  @override
  final Iterable<Type> types = const [
    BatchIngestResponse,
    _$BatchIngestResponse
  ];

  @override
  final String wireName = r'BatchIngestResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchIngestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accepted';
    yield serializers.serialize(
      object.accepted,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
      specifiedType: const FullType(int),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType:
          const FullType(BuiltList, [FullType(BatchIngestItemResult)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchIngestResponse object, {
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
    required BatchIngestResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accepted = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rejected = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BatchIngestItemResult)]),
          ) as BuiltList<BatchIngestItemResult>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchIngestResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchIngestResponseBuilder();
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
