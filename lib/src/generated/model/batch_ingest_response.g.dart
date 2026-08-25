// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_ingest_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchIngestResponse extends BatchIngestResponse {
  @override
  final int accepted;
  @override
  final int rejected;
  @override
  final BuiltList<BatchIngestItemResult> results;

  factory _$BatchIngestResponse(
          [void Function(BatchIngestResponseBuilder)? updates]) =>
      (BatchIngestResponseBuilder()..update(updates))._build();

  _$BatchIngestResponse._(
      {required this.accepted, required this.rejected, required this.results})
      : super._();
  @override
  BatchIngestResponse rebuild(
          void Function(BatchIngestResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchIngestResponseBuilder toBuilder() =>
      BatchIngestResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchIngestResponse &&
        accepted == other.accepted &&
        rejected == other.rejected &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchIngestResponse')
          ..add('accepted', accepted)
          ..add('rejected', rejected)
          ..add('results', results))
        .toString();
  }
}

class BatchIngestResponseBuilder
    implements Builder<BatchIngestResponse, BatchIngestResponseBuilder> {
  _$BatchIngestResponse? _$v;

  int? _accepted;
  int? get accepted => _$this._accepted;
  set accepted(int? accepted) => _$this._accepted = accepted;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  ListBuilder<BatchIngestItemResult>? _results;
  ListBuilder<BatchIngestItemResult> get results =>
      _$this._results ??= ListBuilder<BatchIngestItemResult>();
  set results(ListBuilder<BatchIngestItemResult>? results) =>
      _$this._results = results;

  BatchIngestResponseBuilder() {
    BatchIngestResponse._defaults(this);
  }

  BatchIngestResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepted = $v.accepted;
      _rejected = $v.rejected;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchIngestResponse other) {
    _$v = other as _$BatchIngestResponse;
  }

  @override
  void update(void Function(BatchIngestResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchIngestResponse build() => _build();

  _$BatchIngestResponse _build() {
    _$BatchIngestResponse _$result;
    try {
      _$result = _$v ??
          _$BatchIngestResponse._(
            accepted: BuiltValueNullFieldError.checkNotNull(
                accepted, r'BatchIngestResponse', 'accepted'),
            rejected: BuiltValueNullFieldError.checkNotNull(
                rejected, r'BatchIngestResponse', 'rejected'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchIngestResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
