// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationResponseEvent extends RegistrationResponseEvent {
  @override
  final String id;

  factory _$RegistrationResponseEvent([
    void Function(RegistrationResponseEventBuilder)? updates,
  ]) => (RegistrationResponseEventBuilder()..update(updates))._build();

  _$RegistrationResponseEvent._({required this.id}) : super._();
  @override
  RegistrationResponseEvent rebuild(
    void Function(RegistrationResponseEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegistrationResponseEventBuilder toBuilder() =>
      RegistrationResponseEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationResponseEvent && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RegistrationResponseEvent',
    )..add('id', id)).toString();
  }
}

class RegistrationResponseEventBuilder
    implements
        Builder<RegistrationResponseEvent, RegistrationResponseEventBuilder> {
  _$RegistrationResponseEvent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  RegistrationResponseEventBuilder() {
    RegistrationResponseEvent._defaults(this);
  }

  RegistrationResponseEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationResponseEvent other) {
    _$v = other as _$RegistrationResponseEvent;
  }

  @override
  void update(void Function(RegistrationResponseEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationResponseEvent build() => _build();

  _$RegistrationResponseEvent _build() {
    final _$result =
        _$v ??
        _$RegistrationResponseEvent._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'RegistrationResponseEvent',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
