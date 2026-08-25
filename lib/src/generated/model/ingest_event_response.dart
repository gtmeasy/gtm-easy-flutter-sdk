//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_event_response_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_event_response.g.dart';

/// IngestEventResponse
///
/// Properties:
/// * [event]
/// * [warnings]
@BuiltValue()
abstract class IngestEventResponse
    implements Built<IngestEventResponse, IngestEventResponseBuilder> {
  @BuiltValueField(wireName: r'event')
  IngestEventResponseEvent get event;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  IngestEventResponse._();

  factory IngestEventResponse([void updates(IngestEventResponseBuilder b)]) =
      _$IngestEventResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestEventResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestEventResponse> get serializer =>
      _$IngestEventResponseSerializer();
}

class _$IngestEventResponseSerializer
    implements PrimitiveSerializer<IngestEventResponse> {
  @override
  final Iterable<Type> types = const [
    IngestEventResponse,
    _$IngestEventResponse,
  ];

  @override
  final String wireName = r'IngestEventResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestEventResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(IngestEventResponseEvent),
    );
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestEventResponse object, {
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
    required IngestEventResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IngestEventResponseEvent),
                  )
                  as IngestEventResponseEvent;
          result.event.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
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
  IngestEventResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestEventResponseBuilder();
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
