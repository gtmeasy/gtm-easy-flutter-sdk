//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gtmeasy_growth/src/generated/model/registration_response_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_response.g.dart';

/// DownloadResponse
///
/// Properties:
/// * [event]
/// * [warnings]
@BuiltValue()
abstract class DownloadResponse
    implements Built<DownloadResponse, DownloadResponseBuilder> {
  @BuiltValueField(wireName: r'event')
  RegistrationResponseEvent get event;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  DownloadResponse._();

  factory DownloadResponse([void updates(DownloadResponseBuilder b)]) =
      _$DownloadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadResponse> get serializer =>
      _$DownloadResponseSerializer();
}

class _$DownloadResponseSerializer
    implements PrimitiveSerializer<DownloadResponse> {
  @override
  final Iterable<Type> types = const [DownloadResponse, _$DownloadResponse];

  @override
  final String wireName = r'DownloadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    DownloadResponse object, {
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
    required DownloadResponseBuilder result,
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
                    specifiedType: const FullType(RegistrationResponseEvent),
                  )
                  as RegistrationResponseEvent;
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
  DownloadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadResponseBuilder();
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
