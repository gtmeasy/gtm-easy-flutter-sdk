// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_event_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestEventResponse extends IngestEventResponse {
  @override
  final IngestEventResponseEvent event;
  @override
  final BuiltList<String> warnings;

  factory _$IngestEventResponse(
          [void Function(IngestEventResponseBuilder)? updates]) =>
      (IngestEventResponseBuilder()..update(updates))._build();

  _$IngestEventResponse._({required this.event, required this.warnings})
      : super._();
  @override
  IngestEventResponse rebuild(
          void Function(IngestEventResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestEventResponseBuilder toBuilder() =>
      IngestEventResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestEventResponse &&
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
    return (newBuiltValueToStringHelper(r'IngestEventResponse')
          ..add('event', event)
          ..add('warnings', warnings))
        .toString();
  }
}

class IngestEventResponseBuilder
    implements Builder<IngestEventResponse, IngestEventResponseBuilder> {
  _$IngestEventResponse? _$v;

  IngestEventResponseEventBuilder? _event;
  IngestEventResponseEventBuilder get event =>
      _$this._event ??= IngestEventResponseEventBuilder();
  set event(IngestEventResponseEventBuilder? event) => _$this._event = event;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  IngestEventResponseBuilder() {
    IngestEventResponse._defaults(this);
  }

  IngestEventResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event.toBuilder();
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestEventResponse other) {
    _$v = other as _$IngestEventResponse;
  }

  @override
  void update(void Function(IngestEventResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestEventResponse build() => _build();

  _$IngestEventResponse _build() {
    _$IngestEventResponse _$result;
    try {
      _$result = _$v ??
          _$IngestEventResponse._(
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
            r'IngestEventResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
