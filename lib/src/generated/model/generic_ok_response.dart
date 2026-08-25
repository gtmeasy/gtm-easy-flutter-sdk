//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generic_ok_response.g.dart';

/// GenericOkResponse
///
/// Properties:
/// * [status]
@BuiltValue()
abstract class GenericOkResponse
    implements Built<GenericOkResponse, GenericOkResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  GenericOkResponseStatusEnum get status;
  // enum statusEnum {  ok,  };

  GenericOkResponse._();

  factory GenericOkResponse([void updates(GenericOkResponseBuilder b)]) =
      _$GenericOkResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GenericOkResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GenericOkResponse> get serializer =>
      _$GenericOkResponseSerializer();
}

class _$GenericOkResponseSerializer
    implements PrimitiveSerializer<GenericOkResponse> {
  @override
  final Iterable<Type> types = const [GenericOkResponse, _$GenericOkResponse];

  @override
  final String wireName = r'GenericOkResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GenericOkResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(GenericOkResponseStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GenericOkResponse object, {
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
    required GenericOkResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GenericOkResponseStatusEnum),
                  )
                  as GenericOkResponseStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GenericOkResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenericOkResponseBuilder();
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

class GenericOkResponseStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const GenericOkResponseStatusEnum ok =
      _$genericOkResponseStatusEnum_ok;

  static Serializer<GenericOkResponseStatusEnum> get serializer =>
      _$genericOkResponseStatusEnumSerializer;

  const GenericOkResponseStatusEnum._(String name) : super(name);

  static BuiltSet<GenericOkResponseStatusEnum> get values =>
      _$genericOkResponseStatusEnumValues;
  static GenericOkResponseStatusEnum valueOf(String name) =>
      _$genericOkResponseStatusEnumValueOf(name);
}
