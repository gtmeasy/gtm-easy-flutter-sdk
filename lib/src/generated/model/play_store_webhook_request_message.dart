//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'play_store_webhook_request_message.g.dart';

/// PlayStoreWebhookRequestMessage
///
/// Properties:
/// * [data]
/// * [attributes]
/// * [messageId]
/// * [publishTime]
@BuiltValue()
abstract class PlayStoreWebhookRequestMessage
    implements
        Built<PlayStoreWebhookRequestMessage,
            PlayStoreWebhookRequestMessageBuilder> {
  @BuiltValueField(wireName: r'data')
  String get data;

  @BuiltValueField(wireName: r'attributes')
  BuiltMap<String, String>? get attributes;

  @BuiltValueField(wireName: r'messageId')
  String? get messageId;

  @BuiltValueField(wireName: r'publishTime')
  String? get publishTime;

  PlayStoreWebhookRequestMessage._();

  factory PlayStoreWebhookRequestMessage(
          [void updates(PlayStoreWebhookRequestMessageBuilder b)]) =
      _$PlayStoreWebhookRequestMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlayStoreWebhookRequestMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlayStoreWebhookRequestMessage> get serializer =>
      _$PlayStoreWebhookRequestMessageSerializer();
}

class _$PlayStoreWebhookRequestMessageSerializer
    implements PrimitiveSerializer<PlayStoreWebhookRequestMessage> {
  @override
  final Iterable<Type> types = const [
    PlayStoreWebhookRequestMessage,
    _$PlayStoreWebhookRequestMessage
  ];

  @override
  final String wireName = r'PlayStoreWebhookRequestMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlayStoreWebhookRequestMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(String),
    );
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.messageId != null) {
      yield r'messageId';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.publishTime != null) {
      yield r'publishTime';
      yield serializers.serialize(
        object.publishTime,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlayStoreWebhookRequestMessage object, {
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
    required PlayStoreWebhookRequestMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.data = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'messageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.messageId = valueDes;
          break;
        case r'publishTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publishTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlayStoreWebhookRequestMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlayStoreWebhookRequestMessageBuilder();
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
