// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_ok_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GenericOkResponseStatusEnum _$genericOkResponseStatusEnum_ok =
    const GenericOkResponseStatusEnum._('ok');

GenericOkResponseStatusEnum _$genericOkResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$genericOkResponseStatusEnum_ok;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GenericOkResponseStatusEnum>
_$genericOkResponseStatusEnumValues = BuiltSet<GenericOkResponseStatusEnum>(
  const <GenericOkResponseStatusEnum>[_$genericOkResponseStatusEnum_ok],
);

Serializer<GenericOkResponseStatusEnum>
_$genericOkResponseStatusEnumSerializer =
    _$GenericOkResponseStatusEnumSerializer();

class _$GenericOkResponseStatusEnumSerializer
    implements PrimitiveSerializer<GenericOkResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{'ok': 'ok'};
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
  };

  @override
  final Iterable<Type> types = const <Type>[GenericOkResponseStatusEnum];
  @override
  final String wireName = 'GenericOkResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    GenericOkResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GenericOkResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GenericOkResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GenericOkResponse extends GenericOkResponse {
  @override
  final GenericOkResponseStatusEnum status;

  factory _$GenericOkResponse([
    void Function(GenericOkResponseBuilder)? updates,
  ]) => (GenericOkResponseBuilder()..update(updates))._build();

  _$GenericOkResponse._({required this.status}) : super._();
  @override
  GenericOkResponse rebuild(void Function(GenericOkResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericOkResponseBuilder toBuilder() =>
      GenericOkResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenericOkResponse && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GenericOkResponse',
    )..add('status', status)).toString();
  }
}

class GenericOkResponseBuilder
    implements Builder<GenericOkResponse, GenericOkResponseBuilder> {
  _$GenericOkResponse? _$v;

  GenericOkResponseStatusEnum? _status;
  GenericOkResponseStatusEnum? get status => _$this._status;
  set status(GenericOkResponseStatusEnum? status) => _$this._status = status;

  GenericOkResponseBuilder() {
    GenericOkResponse._defaults(this);
  }

  GenericOkResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericOkResponse other) {
    _$v = other as _$GenericOkResponse;
  }

  @override
  void update(void Function(GenericOkResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenericOkResponse build() => _build();

  _$GenericOkResponse _build() {
    final _$result =
        _$v ??
        _$GenericOkResponse._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'GenericOkResponse',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
