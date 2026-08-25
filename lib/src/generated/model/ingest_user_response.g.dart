// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestUserResponse extends IngestUserResponse {
  @override
  final IngestUserResponseUser user;
  @override
  final BuiltList<String> warnings;

  factory _$IngestUserResponse(
          [void Function(IngestUserResponseBuilder)? updates]) =>
      (IngestUserResponseBuilder()..update(updates))._build();

  _$IngestUserResponse._({required this.user, required this.warnings})
      : super._();
  @override
  IngestUserResponse rebuild(
          void Function(IngestUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestUserResponseBuilder toBuilder() =>
      IngestUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestUserResponse &&
        user == other.user &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestUserResponse')
          ..add('user', user)
          ..add('warnings', warnings))
        .toString();
  }
}

class IngestUserResponseBuilder
    implements Builder<IngestUserResponse, IngestUserResponseBuilder> {
  _$IngestUserResponse? _$v;

  IngestUserResponseUserBuilder? _user;
  IngestUserResponseUserBuilder get user =>
      _$this._user ??= IngestUserResponseUserBuilder();
  set user(IngestUserResponseUserBuilder? user) => _$this._user = user;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  IngestUserResponseBuilder() {
    IngestUserResponse._defaults(this);
  }

  IngestUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestUserResponse other) {
    _$v = other as _$IngestUserResponse;
  }

  @override
  void update(void Function(IngestUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestUserResponse build() => _build();

  _$IngestUserResponse _build() {
    _$IngestUserResponse _$result;
    try {
      _$result = _$v ??
          _$IngestUserResponse._(
            user: user.build(),
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IngestUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
