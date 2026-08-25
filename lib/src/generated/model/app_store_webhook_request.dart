//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_store_webhook_request.g.dart';

/// AppStoreWebhookRequest
///
/// Properties:
/// * [signedPayload]
@BuiltValue()
abstract class AppStoreWebhookRequest
    implements Built<AppStoreWebhookRequest, AppStoreWebhookRequestBuilder> {
  @BuiltValueField(wireName: r'signedPayload')
  String get signedPayload;

  AppStoreWebhookRequest._();

  factory AppStoreWebhookRequest([
    void updates(AppStoreWebhookRequestBuilder b),
  ]) = _$AppStoreWebhookRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppStoreWebhookRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppStoreWebhookRequest> get serializer =>
      _$AppStoreWebhookRequestSerializer();
}

class _$AppStoreWebhookRequestSerializer
    implements PrimitiveSerializer<AppStoreWebhookRequest> {
  @override
  final Iterable<Type> types = const [
    AppStoreWebhookRequest,
    _$AppStoreWebhookRequest,
  ];

  @override
  final String wireName = r'AppStoreWebhookRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppStoreWebhookRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'signedPayload';
    yield serializers.serialize(
      object.signedPayload,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AppStoreWebhookRequest object, {
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
    required AppStoreWebhookRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signedPayload':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.signedPayload = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppStoreWebhookRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppStoreWebhookRequestBuilder();
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
