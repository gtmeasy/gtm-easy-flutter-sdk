enum SurveyStatus { completed, partial, dismissed }

class SurveyAnswer {
  const SurveyAnswer._({
    required this.questionId,
    required this.type,
    this.questionText,
    this.position,
    this.choices,
    this.choiceLabels,
    this.number,
    this.text,
    this.boolValue,
  });

  factory SurveyAnswer.singleChoice(
    String questionId,
    String choice, {
    String? questionText,
    String? choiceLabel,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'single_choice',
      questionText: questionText,
      position: position,
      choices: [choice],
      choiceLabels: choiceLabel == null ? null : [choiceLabel],
    );
  }

  factory SurveyAnswer.multiChoice(
    String questionId,
    List<String> choices, {
    String? questionText,
    List<String>? choiceLabels,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'multi_choice',
      questionText: questionText,
      position: position,
      choices: List<String>.from(choices),
      choiceLabels:
          choiceLabels == null ? null : List<String>.from(choiceLabels),
    );
  }

  factory SurveyAnswer.rating(
    String questionId,
    num value, {
    String? questionText,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'rating',
      questionText: questionText,
      position: position,
      number: value,
    );
  }

  factory SurveyAnswer.scale(
    String questionId,
    num value, {
    String? questionText,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'scale',
      questionText: questionText,
      position: position,
      number: value,
    );
  }

  factory SurveyAnswer.nps(
    String questionId,
    num value, {
    String? questionText,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'nps',
      questionText: questionText,
      position: position,
      number: value,
    );
  }

  factory SurveyAnswer.boolean(
    String questionId,
    bool value, {
    String? questionText,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'boolean',
      questionText: questionText,
      position: position,
      boolValue: value,
    );
  }

  factory SurveyAnswer.text(
    String questionId,
    String value, {
    String? questionText,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'text',
      questionText: questionText,
      position: position,
      text: value,
    );
  }

  factory SurveyAnswer.link(
    String questionId,
    String url, {
    String? questionText,
    int? position,
  }) {
    return SurveyAnswer._(
      questionId: questionId,
      type: 'link',
      questionText: questionText,
      position: position,
      text: url,
    );
  }

  final String questionId;
  final String type;
  final String? questionText;
  final int? position;
  final List<String>? choices;
  final List<String>? choiceLabels;
  final num? number;
  final String? text;
  final bool? boolValue;

  Map<String, Object?> toJson() {
    return <String, Object?>{
      'questionId': questionId,
      'type': type,
      if (questionText != null) 'questionText': questionText,
      if (position != null) 'position': position,
      if (choices != null) 'choices': choices,
      if (choiceLabels != null) 'choiceLabels': choiceLabels,
      if (number != null) 'number': number,
      if (text != null) 'text': text,
      if (boolValue != null) 'bool': boolValue,
    };
  }
}
