// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_user_response_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestUserResponseUser extends IngestUserResponseUser {
  @override
  final String identityHash;
  @override
  final String? principalId;

  factory _$IngestUserResponseUser([
    void Function(IngestUserResponseUserBuilder)? updates,
  ]) => (IngestUserResponseUserBuilder()..update(updates))._build();

  _$IngestUserResponseUser._({required this.identityHash, this.principalId})
    : super._();
  @override
  IngestUserResponseUser rebuild(
    void Function(IngestUserResponseUserBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestUserResponseUserBuilder toBuilder() =>
      IngestUserResponseUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestUserResponseUser &&
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
    return (newBuiltValueToStringHelper(r'IngestUserResponseUser')
          ..add('identityHash', identityHash)
          ..add('principalId', principalId))
        .toString();
  }
}

class IngestUserResponseUserBuilder
    implements Builder<IngestUserResponseUser, IngestUserResponseUserBuilder> {
  _$IngestUserResponseUser? _$v;

  String? _identityHash;
  String? get identityHash => _$this._identityHash;
  set identityHash(String? identityHash) => _$this._identityHash = identityHash;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  IngestUserResponseUserBuilder() {
    IngestUserResponseUser._defaults(this);
  }

  IngestUserResponseUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityHash = $v.identityHash;
      _principalId = $v.principalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestUserResponseUser other) {
    _$v = other as _$IngestUserResponseUser;
  }

  @override
  void update(void Function(IngestUserResponseUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestUserResponseUser build() => _build();

  _$IngestUserResponseUser _build() {
    final _$result =
        _$v ??
        _$IngestUserResponseUser._(
          identityHash: BuiltValueNullFieldError.checkNotNull(
            identityHash,
            r'IngestUserResponseUser',
            'identityHash',
          ),
          principalId: principalId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
