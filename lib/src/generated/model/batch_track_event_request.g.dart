// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_track_event_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchTrackEventRequest extends BatchTrackEventRequest {
  @override
  final BuiltList<TrackEventRequest> events;

  factory _$BatchTrackEventRequest([
    void Function(BatchTrackEventRequestBuilder)? updates,
  ]) => (BatchTrackEventRequestBuilder()..update(updates))._build();

  _$BatchTrackEventRequest._({required this.events}) : super._();
  @override
  BatchTrackEventRequest rebuild(
    void Function(BatchTrackEventRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BatchTrackEventRequestBuilder toBuilder() =>
      BatchTrackEventRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchTrackEventRequest && events == other.events;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'BatchTrackEventRequest',
    )..add('events', events)).toString();
  }
}

class BatchTrackEventRequestBuilder
    implements Builder<BatchTrackEventRequest, BatchTrackEventRequestBuilder> {
  _$BatchTrackEventRequest? _$v;

  ListBuilder<TrackEventRequest>? _events;
  ListBuilder<TrackEventRequest> get events =>
      _$this._events ??= ListBuilder<TrackEventRequest>();
  set events(ListBuilder<TrackEventRequest>? events) => _$this._events = events;

  BatchTrackEventRequestBuilder() {
    BatchTrackEventRequest._defaults(this);
  }

  BatchTrackEventRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchTrackEventRequest other) {
    _$v = other as _$BatchTrackEventRequest;
  }

  @override
  void update(void Function(BatchTrackEventRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchTrackEventRequest build() => _build();

  _$BatchTrackEventRequest _build() {
    _$BatchTrackEventRequest _$result;
    try {
      _$result = _$v ?? _$BatchTrackEventRequest._(events: events.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BatchTrackEventRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
