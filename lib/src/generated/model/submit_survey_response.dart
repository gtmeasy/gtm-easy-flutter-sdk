//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_survey_response.g.dart';

/// SubmitSurveyResponse
///
/// Properties:
/// * [submissionId]
/// * [accepted] - Number of answer rows persisted.
/// * [warnings]
@BuiltValue()
abstract class SubmitSurveyResponse
    implements Built<SubmitSurveyResponse, SubmitSurveyResponseBuilder> {
  @BuiltValueField(wireName: r'submissionId')
  String get submissionId;

  /// Number of answer rows persisted.
  @BuiltValueField(wireName: r'accepted')
  int get accepted;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  SubmitSurveyResponse._();

  factory SubmitSurveyResponse([void updates(SubmitSurveyResponseBuilder b)]) =
      _$SubmitSurveyResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitSurveyResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitSurveyResponse> get serializer =>
      _$SubmitSurveyResponseSerializer();
}

class _$SubmitSurveyResponseSerializer
    implements PrimitiveSerializer<SubmitSurveyResponse> {
  @override
  final Iterable<Type> types = const [
    SubmitSurveyResponse,
    _$SubmitSurveyResponse,
  ];

  @override
  final String wireName = r'SubmitSurveyResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitSurveyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'submissionId';
    yield serializers.serialize(
      object.submissionId,
      specifiedType: const FullType(String),
    );
    yield r'accepted';
    yield serializers.serialize(
      object.accepted,
      specifiedType: const FullType(int),
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
    SubmitSurveyResponse object, {
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
    required SubmitSurveyResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'submissionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.submissionId = valueDes;
          break;
        case r'accepted':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.accepted = valueDes;
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
  SubmitSurveyResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitSurveyResponseBuilder();
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
