//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gtmeasy_growth/src/generated/model/registration_response_event.dart';
import 'package:gtmeasy_growth/src/generated/model/registration_response_user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_response.g.dart';

/// RegistrationResponse
///
/// Properties:
/// * [user]
/// * [event]
/// * [warnings]
@BuiltValue()
abstract class RegistrationResponse
    implements Built<RegistrationResponse, RegistrationResponseBuilder> {
  @BuiltValueField(wireName: r'user')
  RegistrationResponseUser get user;

  @BuiltValueField(wireName: r'event')
  RegistrationResponseEvent get event;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  RegistrationResponse._();

  factory RegistrationResponse([void updates(RegistrationResponseBuilder b)]) =
      _$RegistrationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationResponse> get serializer =>
      _$RegistrationResponseSerializer();
}

class _$RegistrationResponseSerializer
    implements PrimitiveSerializer<RegistrationResponse> {
  @override
  final Iterable<Type> types = const [
    RegistrationResponse,
    _$RegistrationResponse
  ];

  @override
  final String wireName = r'RegistrationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(RegistrationResponseUser),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(RegistrationResponseEvent),
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
    RegistrationResponse object, {
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
    required RegistrationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegistrationResponseUser),
          ) as RegistrationResponseUser;
          result.user.replace(valueDes);
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegistrationResponseEvent),
          ) as RegistrationResponseEvent;
          result.event.replace(valueDes);
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
  RegistrationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationResponseBuilder();
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
