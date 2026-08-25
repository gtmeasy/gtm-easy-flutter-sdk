// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_survey_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitSurveyResponse extends SubmitSurveyResponse {
  @override
  final String submissionId;
  @override
  final int accepted;
  @override
  final BuiltList<String> warnings;

  factory _$SubmitSurveyResponse(
          [void Function(SubmitSurveyResponseBuilder)? updates]) =>
      (SubmitSurveyResponseBuilder()..update(updates))._build();

  _$SubmitSurveyResponse._(
      {required this.submissionId,
      required this.accepted,
      required this.warnings})
      : super._();
  @override
  SubmitSurveyResponse rebuild(
          void Function(SubmitSurveyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitSurveyResponseBuilder toBuilder() =>
      SubmitSurveyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitSurveyResponse &&
        submissionId == other.submissionId &&
        accepted == other.accepted &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, submissionId.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitSurveyResponse')
          ..add('submissionId', submissionId)
          ..add('accepted', accepted)
          ..add('warnings', warnings))
        .toString();
  }
}

class SubmitSurveyResponseBuilder
    implements Builder<SubmitSurveyResponse, SubmitSurveyResponseBuilder> {
  _$SubmitSurveyResponse? _$v;

  String? _submissionId;
  String? get submissionId => _$this._submissionId;
  set submissionId(String? submissionId) => _$this._submissionId = submissionId;

  int? _accepted;
  int? get accepted => _$this._accepted;
  set accepted(int? accepted) => _$this._accepted = accepted;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  SubmitSurveyResponseBuilder() {
    SubmitSurveyResponse._defaults(this);
  }

  SubmitSurveyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _submissionId = $v.submissionId;
      _accepted = $v.accepted;
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitSurveyResponse other) {
    _$v = other as _$SubmitSurveyResponse;
  }

  @override
  void update(void Function(SubmitSurveyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitSurveyResponse build() => _build();

  _$SubmitSurveyResponse _build() {
    _$SubmitSurveyResponse _$result;
    try {
      _$result = _$v ??
          _$SubmitSurveyResponse._(
            submissionId: BuiltValueNullFieldError.checkNotNull(
                submissionId, r'SubmitSurveyResponse', 'submissionId'),
            accepted: BuiltValueNullFieldError.checkNotNull(
                accepted, r'SubmitSurveyResponse', 'accepted'),
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SubmitSurveyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
