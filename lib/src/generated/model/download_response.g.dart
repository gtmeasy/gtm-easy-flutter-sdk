// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DownloadResponse extends DownloadResponse {
  @override
  final RegistrationResponseEvent event;
  @override
  final BuiltList<String> warnings;

  factory _$DownloadResponse(
          [void Function(DownloadResponseBuilder)? updates]) =>
      (DownloadResponseBuilder()..update(updates))._build();

  _$DownloadResponse._({required this.event, required this.warnings})
      : super._();
  @override
  DownloadResponse rebuild(void Function(DownloadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadResponseBuilder toBuilder() =>
      DownloadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadResponse &&
        event == other.event &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadResponse')
          ..add('event', event)
          ..add('warnings', warnings))
        .toString();
  }
}

class DownloadResponseBuilder
    implements Builder<DownloadResponse, DownloadResponseBuilder> {
  _$DownloadResponse? _$v;

  RegistrationResponseEventBuilder? _event;
  RegistrationResponseEventBuilder get event =>
      _$this._event ??= RegistrationResponseEventBuilder();
  set event(RegistrationResponseEventBuilder? event) => _$this._event = event;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  DownloadResponseBuilder() {
    DownloadResponse._defaults(this);
  }

  DownloadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event.toBuilder();
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadResponse other) {
    _$v = other as _$DownloadResponse;
  }

  @override
  void update(void Function(DownloadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadResponse build() => _build();

  _$DownloadResponse _build() {
    _$DownloadResponse _$result;
    try {
      _$result = _$v ??
          _$DownloadResponse._(
            event: event.build(),
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'event';
        event.build();
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DownloadResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
