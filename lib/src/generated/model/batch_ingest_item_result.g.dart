// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_ingest_item_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BatchIngestItemResultStatusEnum
    _$batchIngestItemResultStatusEnum_accepted =
    const BatchIngestItemResultStatusEnum._('accepted');
const BatchIngestItemResultStatusEnum
    _$batchIngestItemResultStatusEnum_ignored =
    const BatchIngestItemResultStatusEnum._('ignored');
const BatchIngestItemResultStatusEnum
    _$batchIngestItemResultStatusEnum_rejected =
    const BatchIngestItemResultStatusEnum._('rejected');

BatchIngestItemResultStatusEnum _$batchIngestItemResultStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'accepted':
      return _$batchIngestItemResultStatusEnum_accepted;
    case 'ignored':
      return _$batchIngestItemResultStatusEnum_ignored;
    case 'rejected':
      return _$batchIngestItemResultStatusEnum_rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BatchIngestItemResultStatusEnum>
    _$batchIngestItemResultStatusEnumValues = BuiltSet<
        BatchIngestItemResultStatusEnum>(const <BatchIngestItemResultStatusEnum>[
  _$batchIngestItemResultStatusEnum_accepted,
  _$batchIngestItemResultStatusEnum_ignored,
  _$batchIngestItemResultStatusEnum_rejected,
]);

Serializer<BatchIngestItemResultStatusEnum>
    _$batchIngestItemResultStatusEnumSerializer =
    _$BatchIngestItemResultStatusEnumSerializer();

class _$BatchIngestItemResultStatusEnumSerializer
    implements PrimitiveSerializer<BatchIngestItemResultStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'accepted': 'accepted',
    'ignored': 'ignored',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'accepted': 'accepted',
    'ignored': 'ignored',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[BatchIngestItemResultStatusEnum];
  @override
  final String wireName = 'BatchIngestItemResultStatusEnum';

  @override
  Object serialize(
          Serializers serializers, BatchIngestItemResultStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BatchIngestItemResultStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BatchIngestItemResultStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BatchIngestItemResult extends BatchIngestItemResult {
  @override
  final int index;
  @override
  final String? eventId;
  @override
  final BatchIngestItemResultStatusEnum status;
  @override
  final String? reason;
  @override
  final BuiltList<String> warnings;

  factory _$BatchIngestItemResult(
          [void Function(BatchIngestItemResultBuilder)? updates]) =>
      (BatchIngestItemResultBuilder()..update(updates))._build();

  _$BatchIngestItemResult._(
      {required this.index,
      this.eventId,
      required this.status,
      this.reason,
      required this.warnings})
      : super._();
  @override
  BatchIngestItemResult rebuild(
          void Function(BatchIngestItemResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchIngestItemResultBuilder toBuilder() =>
      BatchIngestItemResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchIngestItemResult &&
        index == other.index &&
        eventId == other.eventId &&
        status == other.status &&
        reason == other.reason &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchIngestItemResult')
          ..add('index', index)
          ..add('eventId', eventId)
          ..add('status', status)
          ..add('reason', reason)
          ..add('warnings', warnings))
        .toString();
  }
}

class BatchIngestItemResultBuilder
    implements Builder<BatchIngestItemResult, BatchIngestItemResultBuilder> {
  _$BatchIngestItemResult? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  BatchIngestItemResultStatusEnum? _status;
  BatchIngestItemResultStatusEnum? get status => _$this._status;
  set status(BatchIngestItemResultStatusEnum? status) =>
      _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  BatchIngestItemResultBuilder() {
    BatchIngestItemResult._defaults(this);
  }

  BatchIngestItemResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _eventId = $v.eventId;
      _status = $v.status;
      _reason = $v.reason;
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchIngestItemResult other) {
    _$v = other as _$BatchIngestItemResult;
  }

  @override
  void update(void Function(BatchIngestItemResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchIngestItemResult build() => _build();

  _$BatchIngestItemResult _build() {
    _$BatchIngestItemResult _$result;
    try {
      _$result = _$v ??
          _$BatchIngestItemResult._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'BatchIngestItemResult', 'index'),
            eventId: eventId,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'BatchIngestItemResult', 'status'),
            reason: reason,
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchIngestItemResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
