//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_user_response_user.g.dart';

/// IngestUserResponseUser
///
/// Properties:
/// * [identityHash]
/// * [principalId] - Resolved stable principal (userId, else anonymousId, else deviceId) used for attribution.
@BuiltValue()
abstract class IngestUserResponseUser
    implements Built<IngestUserResponseUser, IngestUserResponseUserBuilder> {
  @BuiltValueField(wireName: r'identityHash')
  String get identityHash;

  /// Resolved stable principal (userId, else anonymousId, else deviceId) used for attribution.
  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  IngestUserResponseUser._();

  factory IngestUserResponseUser([
    void updates(IngestUserResponseUserBuilder b),
  ]) = _$IngestUserResponseUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestUserResponseUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestUserResponseUser> get serializer =>
      _$IngestUserResponseUserSerializer();
}

class _$IngestUserResponseUserSerializer
    implements PrimitiveSerializer<IngestUserResponseUser> {
  @override
  final Iterable<Type> types = const [
    IngestUserResponseUser,
    _$IngestUserResponseUser,
  ];

  @override
  final String wireName = r'IngestUserResponseUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestUserResponseUser object, {
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
    IngestUserResponseUser object, {
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
    required IngestUserResponseUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identityHash':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.identityHash = valueDes;
          break;
        case r'principalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  IngestUserResponseUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestUserResponseUserBuilder();
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
