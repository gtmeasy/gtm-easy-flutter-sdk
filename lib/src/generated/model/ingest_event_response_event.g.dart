// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_event_response_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestEventResponseEvent extends IngestEventResponseEvent {
  @override
  final String id;
  @override
  final String eventName;

  factory _$IngestEventResponseEvent([
    void Function(IngestEventResponseEventBuilder)? updates,
  ]) => (IngestEventResponseEventBuilder()..update(updates))._build();

  _$IngestEventResponseEvent._({required this.id, required this.eventName})
    : super._();
  @override
  IngestEventResponseEvent rebuild(
    void Function(IngestEventResponseEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestEventResponseEventBuilder toBuilder() =>
      IngestEventResponseEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestEventResponseEvent &&
        id == other.id &&
        eventName == other.eventName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestEventResponseEvent')
          ..add('id', id)
          ..add('eventName', eventName))
        .toString();
  }
}

class IngestEventResponseEventBuilder
    implements
        Builder<IngestEventResponseEvent, IngestEventResponseEventBuilder> {
  _$IngestEventResponseEvent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _eventName;
  String? get eventName => _$this._eventName;
  set eventName(String? eventName) => _$this._eventName = eventName;

  IngestEventResponseEventBuilder() {
    IngestEventResponseEvent._defaults(this);
  }

  IngestEventResponseEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _eventName = $v.eventName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestEventResponseEvent other) {
    _$v = other as _$IngestEventResponseEvent;
  }

  @override
  void update(void Function(IngestEventResponseEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestEventResponseEvent build() => _build();

  _$IngestEventResponseEvent _build() {
    final _$result =
        _$v ??
        _$IngestEventResponseEvent._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'IngestEventResponseEvent',
            'id',
          ),
          eventName: BuiltValueNullFieldError.checkNotNull(
            eventName,
            r'IngestEventResponseEvent',
            'eventName',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
