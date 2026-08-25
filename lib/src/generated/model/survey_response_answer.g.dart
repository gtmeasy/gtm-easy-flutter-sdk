// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_response_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyResponseAnswer extends SurveyResponseAnswer {
  @override
  final String questionId;
  @override
  final String type;
  @override
  final String? questionText;
  @override
  final int? position;
  @override
  final BuiltList<String>? choices;
  @override
  final BuiltList<String>? choiceLabels;
  @override
  final num? number;
  @override
  final String? text;
  @override
  final bool? bool_;
  @override
  final bool? skipped;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$SurveyResponseAnswer(
          [void Function(SurveyResponseAnswerBuilder)? updates]) =>
      (SurveyResponseAnswerBuilder()..update(updates))._build();

  _$SurveyResponseAnswer._(
      {required this.questionId,
      required this.type,
      this.questionText,
      this.position,
      this.choices,
      this.choiceLabels,
      this.number,
      this.text,
      this.bool_,
      this.skipped,
      this.metadata})
      : super._();
  @override
  SurveyResponseAnswer rebuild(
          void Function(SurveyResponseAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyResponseAnswerBuilder toBuilder() =>
      SurveyResponseAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyResponseAnswer &&
        questionId == other.questionId &&
        type == other.type &&
        questionText == other.questionText &&
        position == other.position &&
        choices == other.choices &&
        choiceLabels == other.choiceLabels &&
        number == other.number &&
        text == other.text &&
        bool_ == other.bool_ &&
        skipped == other.skipped &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, questionText.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jc(_$hash, choiceLabels.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, bool_.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SurveyResponseAnswer')
          ..add('questionId', questionId)
          ..add('type', type)
          ..add('questionText', questionText)
          ..add('position', position)
          ..add('choices', choices)
          ..add('choiceLabels', choiceLabels)
          ..add('number', number)
          ..add('text', text)
          ..add('bool_', bool_)
          ..add('skipped', skipped)
          ..add('metadata', metadata))
        .toString();
  }
}

class SurveyResponseAnswerBuilder
    implements Builder<SurveyResponseAnswer, SurveyResponseAnswerBuilder> {
  _$SurveyResponseAnswer? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _questionText;
  String? get questionText => _$this._questionText;
  set questionText(String? questionText) => _$this._questionText = questionText;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  ListBuilder<String>? _choices;
  ListBuilder<String> get choices => _$this._choices ??= ListBuilder<String>();
  set choices(ListBuilder<String>? choices) => _$this._choices = choices;

  ListBuilder<String>? _choiceLabels;
  ListBuilder<String> get choiceLabels =>
      _$this._choiceLabels ??= ListBuilder<String>();
  set choiceLabels(ListBuilder<String>? choiceLabels) =>
      _$this._choiceLabels = choiceLabels;

  num? _number;
  num? get number => _$this._number;
  set number(num? number) => _$this._number = number;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _bool_;
  bool? get bool_ => _$this._bool_;
  set bool_(bool? bool_) => _$this._bool_ = bool_;

  bool? _skipped;
  bool? get skipped => _$this._skipped;
  set skipped(bool? skipped) => _$this._skipped = skipped;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  SurveyResponseAnswerBuilder() {
    SurveyResponseAnswer._defaults(this);
  }

  SurveyResponseAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _type = $v.type;
      _questionText = $v.questionText;
      _position = $v.position;
      _choices = $v.choices?.toBuilder();
      _choiceLabels = $v.choiceLabels?.toBuilder();
      _number = $v.number;
      _text = $v.text;
      _bool_ = $v.bool_;
      _skipped = $v.skipped;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyResponseAnswer other) {
    _$v = other as _$SurveyResponseAnswer;
  }

  @override
  void update(void Function(SurveyResponseAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyResponseAnswer build() => _build();

  _$SurveyResponseAnswer _build() {
    _$SurveyResponseAnswer _$result;
    try {
      _$result = _$v ??
          _$SurveyResponseAnswer._(
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'SurveyResponseAnswer', 'questionId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'SurveyResponseAnswer', 'type'),
            questionText: questionText,
            position: position,
            choices: _choices?.build(),
            choiceLabels: _choiceLabels?.build(),
            number: number,
            text: text,
            bool_: bool_,
            skipped: skipped,
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        _choices?.build();
        _$failedField = 'choiceLabels';
        _choiceLabels?.build();

        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SurveyResponseAnswer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
