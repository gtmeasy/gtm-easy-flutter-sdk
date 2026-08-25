//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:gtmeasy_growth/src/generated/model/play_store_webhook_request_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'play_store_webhook_request.g.dart';

/// PlayStoreWebhookRequest
///
/// Properties:
/// * [message]
/// * [subscription]
@BuiltValue()
abstract class PlayStoreWebhookRequest
    implements Built<PlayStoreWebhookRequest, PlayStoreWebhookRequestBuilder> {
  @BuiltValueField(wireName: r'message')
  PlayStoreWebhookRequestMessage get message;

  @BuiltValueField(wireName: r'subscription')
  String? get subscription;

  PlayStoreWebhookRequest._();

  factory PlayStoreWebhookRequest([
    void updates(PlayStoreWebhookRequestBuilder b),
  ]) = _$PlayStoreWebhookRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlayStoreWebhookRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlayStoreWebhookRequest> get serializer =>
      _$PlayStoreWebhookRequestSerializer();
}

class _$PlayStoreWebhookRequestSerializer
    implements PrimitiveSerializer<PlayStoreWebhookRequest> {
  @override
  final Iterable<Type> types = const [
    PlayStoreWebhookRequest,
    _$PlayStoreWebhookRequest,
  ];

  @override
  final String wireName = r'PlayStoreWebhookRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlayStoreWebhookRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(PlayStoreWebhookRequestMessage),
    );
    if (object.subscription != null) {
      yield r'subscription';
      yield serializers.serialize(
        object.subscription,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlayStoreWebhookRequest object, {
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
    required PlayStoreWebhookRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PlayStoreWebhookRequestMessage,
                    ),
                  )
                  as PlayStoreWebhookRequestMessage;
          result.message.replace(valueDes);
          break;
        case r'subscription':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.subscription = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlayStoreWebhookRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlayStoreWebhookRequestBuilder();
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
