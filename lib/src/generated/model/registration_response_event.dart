//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_response_event.g.dart';

/// RegistrationResponseEvent
///
/// Properties:
/// * [id]
@BuiltValue()
abstract class RegistrationResponseEvent
    implements
        Built<RegistrationResponseEvent, RegistrationResponseEventBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  RegistrationResponseEvent._();

  factory RegistrationResponseEvent(
          [void updates(RegistrationResponseEventBuilder b)]) =
      _$RegistrationResponseEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationResponseEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationResponseEvent> get serializer =>
      _$RegistrationResponseEventSerializer();
}

class _$RegistrationResponseEventSerializer
    implements PrimitiveSerializer<RegistrationResponseEvent> {
  @override
  final Iterable<Type> types = const [
    RegistrationResponseEvent,
    _$RegistrationResponseEvent
  ];

  @override
  final String wireName = r'RegistrationResponseEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationResponseEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationResponseEvent object, {
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
    required RegistrationResponseEventBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationResponseEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationResponseEventBuilder();
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
