//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gtmeasy_growth/src/generated/model/ingest_user_response_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_user_response.g.dart';

/// IngestUserResponse
///
/// Properties:
/// * [user]
/// * [warnings]
@BuiltValue()
abstract class IngestUserResponse
    implements Built<IngestUserResponse, IngestUserResponseBuilder> {
  @BuiltValueField(wireName: r'user')
  IngestUserResponseUser get user;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  IngestUserResponse._();

  factory IngestUserResponse([void updates(IngestUserResponseBuilder b)]) =
      _$IngestUserResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestUserResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestUserResponse> get serializer =>
      _$IngestUserResponseSerializer();
}

class _$IngestUserResponseSerializer
    implements PrimitiveSerializer<IngestUserResponse> {
  @override
  final Iterable<Type> types = const [IngestUserResponse, _$IngestUserResponse];

  @override
  final String wireName = r'IngestUserResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(IngestUserResponseUser),
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
    IngestUserResponse object, {
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
    required IngestUserResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IngestUserResponseUser),
          ) as IngestUserResponseUser;
          result.user.replace(valueDes);
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
  IngestUserResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestUserResponseBuilder();
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
