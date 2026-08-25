// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationResponseUser extends RegistrationResponseUser {
  @override
  final String identityHash;
  @override
  final String? principalId;

  factory _$RegistrationResponseUser([
    void Function(RegistrationResponseUserBuilder)? updates,
  ]) => (RegistrationResponseUserBuilder()..update(updates))._build();

  _$RegistrationResponseUser._({required this.identityHash, this.principalId})
    : super._();
  @override
  RegistrationResponseUser rebuild(
    void Function(RegistrationResponseUserBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegistrationResponseUserBuilder toBuilder() =>
      RegistrationResponseUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationResponseUser &&
        identityHash == other.identityHash &&
        principalId == other.principalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identityHash.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationResponseUser')
          ..add('identityHash', identityHash)
          ..add('principalId', principalId))
        .toString();
  }
}

class RegistrationResponseUserBuilder
    implements
        Builder<RegistrationResponseUser, RegistrationResponseUserBuilder> {
  _$RegistrationResponseUser? _$v;

  String? _identityHash;
  String? get identityHash => _$this._identityHash;
  set identityHash(String? identityHash) => _$this._identityHash = identityHash;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  RegistrationResponseUserBuilder() {
    RegistrationResponseUser._defaults(this);
  }

  RegistrationResponseUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityHash = $v.identityHash;
      _principalId = $v.principalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationResponseUser other) {
    _$v = other as _$RegistrationResponseUser;
  }

  @override
  void update(void Function(RegistrationResponseUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationResponseUser build() => _build();

  _$RegistrationResponseUser _build() {
    final _$result =
        _$v ??
        _$RegistrationResponseUser._(
          identityHash: BuiltValueNullFieldError.checkNotNull(
            identityHash,
            r'RegistrationResponseUser',
            'identityHash',
          ),
          principalId: principalId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
