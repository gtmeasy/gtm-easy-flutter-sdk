//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_response_answer.g.dart';

/// SurveyResponseAnswer
///
/// Properties:
/// * [questionId]
/// * [type] - Question type. Known: single_choice | multi_choice | rating | scale | nps | boolean | text | link. Unknown values are stored as text.
/// * [questionText] - Human-readable prompt, for friendly dashboards.
/// * [position]
/// * [choices] - Option IDs (single_choice = one element).
/// * [choiceLabels] - Optional parallel human labels for `choices`.
/// * [number] - rating | scale | nps numeric answer.
/// * [text] - Free-text answer (up to 2000 chars).
/// * [bool_]
/// * [skipped]
/// * [metadata] - Optional per-answer extensibility payload (answer timing, validation flags…). Merged OVER submission-level metadata.
@BuiltValue()
abstract class SurveyResponseAnswer
    implements Built<SurveyResponseAnswer, SurveyResponseAnswerBuilder> {
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  /// Question type. Known: single_choice | multi_choice | rating | scale | nps | boolean | text | link. Unknown values are stored as text.
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Human-readable prompt, for friendly dashboards.
  @BuiltValueField(wireName: r'questionText')
  String? get questionText;

  @BuiltValueField(wireName: r'position')
  int? get position;

  /// Option IDs (single_choice = one element).
  @BuiltValueField(wireName: r'choices')
  BuiltList<String>? get choices;

  /// Optional parallel human labels for `choices`.
  @BuiltValueField(wireName: r'choiceLabels')
  BuiltList<String>? get choiceLabels;

  /// rating | scale | nps numeric answer.
  @BuiltValueField(wireName: r'number')
  num? get number;

  /// Free-text answer (up to 2000 chars).
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'bool')
  bool? get bool_;

  @BuiltValueField(wireName: r'skipped')
  bool? get skipped;

  /// Optional per-answer extensibility payload (answer timing, validation flags…). Merged OVER submission-level metadata.
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  SurveyResponseAnswer._();

  factory SurveyResponseAnswer([void updates(SurveyResponseAnswerBuilder b)]) =
      _$SurveyResponseAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyResponseAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyResponseAnswer> get serializer =>
      _$SurveyResponseAnswerSerializer();
}

class _$SurveyResponseAnswerSerializer
    implements PrimitiveSerializer<SurveyResponseAnswer> {
  @override
  final Iterable<Type> types = const [
    SurveyResponseAnswer,
    _$SurveyResponseAnswer
  ];

  @override
  final String wireName = r'SurveyResponseAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyResponseAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.questionText != null) {
      yield r'questionText';
      yield serializers.serialize(
        object.questionText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.choiceLabels != null) {
      yield r'choiceLabels';
      yield serializers.serialize(
        object.choiceLabels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bool_ != null) {
      yield r'bool';
      yield serializers.serialize(
        object.bool_,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(bool),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyResponseAnswer object, {
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
    required SurveyResponseAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'questionText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.questionText = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.choices.replace(valueDes);
          break;
        case r'choiceLabels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.choiceLabels.replace(valueDes);
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.number = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'bool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.bool_ = valueDes;
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.skipped = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SurveyResponseAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyResponseAnswerBuilder();
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
