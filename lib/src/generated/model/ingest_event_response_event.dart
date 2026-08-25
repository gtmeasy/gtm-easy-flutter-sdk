//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_event_response_event.g.dart';

/// IngestEventResponseEvent
///
/// Properties:
/// * [id]
/// * [eventName]
@BuiltValue()
abstract class IngestEventResponseEvent
    implements
        Built<IngestEventResponseEvent, IngestEventResponseEventBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'eventName')
  String get eventName;

  IngestEventResponseEvent._();

  factory IngestEventResponseEvent(
          [void updates(IngestEventResponseEventBuilder b)]) =
      _$IngestEventResponseEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestEventResponseEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestEventResponseEvent> get serializer =>
      _$IngestEventResponseEventSerializer();
}

class _$IngestEventResponseEventSerializer
    implements PrimitiveSerializer<IngestEventResponseEvent> {
  @override
  final Iterable<Type> types = const [
    IngestEventResponseEvent,
    _$IngestEventResponseEvent
  ];

  @override
  final String wireName = r'IngestEventResponseEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestEventResponseEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'eventName';
    yield serializers.serialize(
      object.eventName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestEventResponseEvent object, {
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
    required IngestEventResponseEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'eventName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestEventResponseEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestEventResponseEventBuilder();
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
