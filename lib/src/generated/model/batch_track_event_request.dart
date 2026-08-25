//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:gtmeasy_growth/src/generated/model/track_event_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_track_event_request.g.dart';

/// BatchTrackEventRequest
///
/// Properties:
/// * [events] - 1–100 tracked events. Invalid items are rejected individually; the batch still returns 200.
@BuiltValue()
abstract class BatchTrackEventRequest
    implements Built<BatchTrackEventRequest, BatchTrackEventRequestBuilder> {
  /// 1–100 tracked events. Invalid items are rejected individually; the batch still returns 200.
  @BuiltValueField(wireName: r'events')
  BuiltList<TrackEventRequest> get events;

  BatchTrackEventRequest._();

  factory BatchTrackEventRequest(
          [void updates(BatchTrackEventRequestBuilder b)]) =
      _$BatchTrackEventRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchTrackEventRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchTrackEventRequest> get serializer =>
      _$BatchTrackEventRequestSerializer();
}

class _$BatchTrackEventRequestSerializer
    implements PrimitiveSerializer<BatchTrackEventRequest> {
  @override
  final Iterable<Type> types = const [
    BatchTrackEventRequest,
    _$BatchTrackEventRequest
  ];

  @override
  final String wireName = r'BatchTrackEventRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchTrackEventRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(TrackEventRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchTrackEventRequest object, {
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
    required BatchTrackEventRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TrackEventRequest)]),
          ) as BuiltList<TrackEventRequest>;
          result.events.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchTrackEventRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchTrackEventRequestBuilder();
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
