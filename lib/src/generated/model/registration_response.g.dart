// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationResponse extends RegistrationResponse {
  @override
  final RegistrationResponseUser user;
  @override
  final RegistrationResponseEvent event;
  @override
  final BuiltList<String> warnings;

  factory _$RegistrationResponse(
          [void Function(RegistrationResponseBuilder)? updates]) =>
      (RegistrationResponseBuilder()..update(updates))._build();

  _$RegistrationResponse._(
      {required this.user, required this.event, required this.warnings})
      : super._();
  @override
  RegistrationResponse rebuild(
          void Function(RegistrationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationResponseBuilder toBuilder() =>
      RegistrationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationResponse &&
        user == other.user &&
        event == other.event &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationResponse')
          ..add('user', user)
          ..add('event', event)
          ..add('warnings', warnings))
        .toString();
  }
}

class RegistrationResponseBuilder
    implements Builder<RegistrationResponse, RegistrationResponseBuilder> {
  _$RegistrationResponse? _$v;

  RegistrationResponseUserBuilder? _user;
  RegistrationResponseUserBuilder get user =>
      _$this._user ??= RegistrationResponseUserBuilder();
  set user(RegistrationResponseUserBuilder? user) => _$this._user = user;

  RegistrationResponseEventBuilder? _event;
  RegistrationResponseEventBuilder get event =>
      _$this._event ??= RegistrationResponseEventBuilder();
  set event(RegistrationResponseEventBuilder? event) => _$this._event = event;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  RegistrationResponseBuilder() {
    RegistrationResponse._defaults(this);
  }

  RegistrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _event = $v.event.toBuilder();
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationResponse other) {
    _$v = other as _$RegistrationResponse;
  }

  @override
  void update(void Function(RegistrationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationResponse build() => _build();

  _$RegistrationResponse _build() {
    _$RegistrationResponse _$result;
    try {
      _$result = _$v ??
          _$RegistrationResponse._(
            user: user.build(),
            event: event.build(),
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'event';
        event.build();
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegistrationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
