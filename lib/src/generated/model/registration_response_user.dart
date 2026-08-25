//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_response_user.g.dart';

/// RegistrationResponseUser
///
/// Properties:
/// * [identityHash]
/// * [principalId]
@BuiltValue()
abstract class RegistrationResponseUser
    implements
        Built<RegistrationResponseUser, RegistrationResponseUserBuilder> {
  @BuiltValueField(wireName: r'identityHash')
  String get identityHash;

  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  RegistrationResponseUser._();

  factory RegistrationResponseUser(
          [void updates(RegistrationResponseUserBuilder b)]) =
      _$RegistrationResponseUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationResponseUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationResponseUser> get serializer =>
      _$RegistrationResponseUserSerializer();
}

class _$RegistrationResponseUserSerializer
    implements PrimitiveSerializer<RegistrationResponseUser> {
  @override
  final Iterable<Type> types = const [
    RegistrationResponseUser,
    _$RegistrationResponseUser
  ];

  @override
  final String wireName = r'RegistrationResponseUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationResponseUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'identityHash';
    yield serializers.serialize(
      object.identityHash,
      specifiedType: const FullType(String),
    );
    if (object.principalId != null) {
      yield r'principalId';
      yield serializers.serialize(
        object.principalId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationResponseUser object, {
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
    required RegistrationResponseUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identityHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identityHash = valueDes;
          break;
        case r'principalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.principalId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationResponseUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationResponseUserBuilder();
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
