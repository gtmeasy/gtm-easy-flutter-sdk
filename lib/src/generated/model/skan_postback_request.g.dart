// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skan_postback_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SkanPostbackRequestCoarseConversionValueEnum
_$skanPostbackRequestCoarseConversionValueEnum_low =
    const SkanPostbackRequestCoarseConversionValueEnum._('low');
const SkanPostbackRequestCoarseConversionValueEnum
_$skanPostbackRequestCoarseConversionValueEnum_medium =
    const SkanPostbackRequestCoarseConversionValueEnum._('medium');
const SkanPostbackRequestCoarseConversionValueEnum
_$skanPostbackRequestCoarseConversionValueEnum_high =
    const SkanPostbackRequestCoarseConversionValueEnum._('high');

SkanPostbackRequestCoarseConversionValueEnum
_$skanPostbackRequestCoarseConversionValueEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$skanPostbackRequestCoarseConversionValueEnum_low;
    case 'medium':
      return _$skanPostbackRequestCoarseConversionValueEnum_medium;
    case 'high':
      return _$skanPostbackRequestCoarseConversionValueEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SkanPostbackRequestCoarseConversionValueEnum>
_$skanPostbackRequestCoarseConversionValueEnumValues =
    BuiltSet<SkanPostbackRequestCoarseConversionValueEnum>(
      const <SkanPostbackRequestCoarseConversionValueEnum>[
        _$skanPostbackRequestCoarseConversionValueEnum_low,
        _$skanPostbackRequestCoarseConversionValueEnum_medium,
        _$skanPostbackRequestCoarseConversionValueEnum_high,
      ],
    );

Serializer<SkanPostbackRequestCoarseConversionValueEnum>
_$skanPostbackRequestCoarseConversionValueEnumSerializer =
    _$SkanPostbackRequestCoarseConversionValueEnumSerializer();

class _$SkanPostbackRequestCoarseConversionValueEnumSerializer
    implements
        PrimitiveSerializer<SkanPostbackRequestCoarseConversionValueEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SkanPostbackRequestCoarseConversionValueEnum,
  ];
  @override
  final String wireName = 'SkanPostbackRequestCoarseConversionValueEnum';

  @override
  Object serialize(
    Serializers serializers,
    SkanPostbackRequestCoarseConversionValueEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SkanPostbackRequestCoarseConversionValueEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SkanPostbackRequestCoarseConversionValueEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SkanPostbackRequest extends SkanPostbackRequest {
  @override
  final String version;
  @override
  final String adNetworkId;
  @override
  final int? campaignId;
  @override
  final String? sourceIdentifier;
  @override
  final String transactionId;
  @override
  final int appId;
  @override
  final String attributionSignature;
  @override
  final bool? redownload;
  @override
  final int? sourceAppId;
  @override
  final String? sourceDomain;
  @override
  final int? fidelityType;
  @override
  final int? conversionValue;
  @override
  final SkanPostbackRequestCoarseConversionValueEnum? coarseConversionValue;
  @override
  final bool? didWin;
  @override
  final int? postbackSequenceIndex;

  factory _$SkanPostbackRequest([
    void Function(SkanPostbackRequestBuilder)? updates,
  ]) => (SkanPostbackRequestBuilder()..update(updates))._build();

  _$SkanPostbackRequest._({
    required this.version,
    required this.adNetworkId,
    this.campaignId,
    this.sourceIdentifier,
    required this.transactionId,
    required this.appId,
    required this.attributionSignature,
    this.redownload,
    this.sourceAppId,
    this.sourceDomain,
    this.fidelityType,
    this.conversionValue,
    this.coarseConversionValue,
    this.didWin,
    this.postbackSequenceIndex,
  }) : super._();
  @override
  SkanPostbackRequest rebuild(
    void Function(SkanPostbackRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SkanPostbackRequestBuilder toBuilder() =>
      SkanPostbackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkanPostbackRequest &&
        version == other.version &&
        adNetworkId == other.adNetworkId &&
        campaignId == other.campaignId &&
        sourceIdentifier == other.sourceIdentifier &&
        transactionId == other.transactionId &&
        appId == other.appId &&
        attributionSignature == other.attributionSignature &&
        redownload == other.redownload &&
        sourceAppId == other.sourceAppId &&
        sourceDomain == other.sourceDomain &&
        fidelityType == other.fidelityType &&
        conversionValue == other.conversionValue &&
        coarseConversionValue == other.coarseConversionValue &&
        didWin == other.didWin &&
        postbackSequenceIndex == other.postbackSequenceIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, adNetworkId.hashCode);
    _$hash = $jc(_$hash, campaignId.hashCode);
    _$hash = $jc(_$hash, sourceIdentifier.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, appId.hashCode);
    _$hash = $jc(_$hash, attributionSignature.hashCode);
    _$hash = $jc(_$hash, redownload.hashCode);
    _$hash = $jc(_$hash, sourceAppId.hashCode);
    _$hash = $jc(_$hash, sourceDomain.hashCode);
    _$hash = $jc(_$hash, fidelityType.hashCode);
    _$hash = $jc(_$hash, conversionValue.hashCode);
    _$hash = $jc(_$hash, coarseConversionValue.hashCode);
    _$hash = $jc(_$hash, didWin.hashCode);
    _$hash = $jc(_$hash, postbackSequenceIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkanPostbackRequest')
          ..add('version', version)
          ..add('adNetworkId', adNetworkId)
          ..add('campaignId', campaignId)
          ..add('sourceIdentifier', sourceIdentifier)
          ..add('transactionId', transactionId)
          ..add('appId', appId)
          ..add('attributionSignature', attributionSignature)
          ..add('redownload', redownload)
          ..add('sourceAppId', sourceAppId)
          ..add('sourceDomain', sourceDomain)
          ..add('fidelityType', fidelityType)
          ..add('conversionValue', conversionValue)
          ..add('coarseConversionValue', coarseConversionValue)
          ..add('didWin', didWin)
          ..add('postbackSequenceIndex', postbackSequenceIndex))
        .toString();
  }
}

class SkanPostbackRequestBuilder
    implements Builder<SkanPostbackRequest, SkanPostbackRequestBuilder> {
  _$SkanPostbackRequest? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _adNetworkId;
  String? get adNetworkId => _$this._adNetworkId;
  set adNetworkId(String? adNetworkId) => _$this._adNetworkId = adNetworkId;

  int? _campaignId;
  int? get campaignId => _$this._campaignId;
  set campaignId(int? campaignId) => _$this._campaignId = campaignId;

  String? _sourceIdentifier;
  String? get sourceIdentifier => _$this._sourceIdentifier;
  set sourceIdentifier(String? sourceIdentifier) =>
      _$this._sourceIdentifier = sourceIdentifier;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  int? _appId;
  int? get appId => _$this._appId;
  set appId(int? appId) => _$this._appId = appId;

  String? _attributionSignature;
  String? get attributionSignature => _$this._attributionSignature;
  set attributionSignature(String? attributionSignature) =>
      _$this._attributionSignature = attributionSignature;

  bool? _redownload;
  bool? get redownload => _$this._redownload;
  set redownload(bool? redownload) => _$this._redownload = redownload;

  int? _sourceAppId;
  int? get sourceAppId => _$this._sourceAppId;
  set sourceAppId(int? sourceAppId) => _$this._sourceAppId = sourceAppId;

  String? _sourceDomain;
  String? get sourceDomain => _$this._sourceDomain;
  set sourceDomain(String? sourceDomain) => _$this._sourceDomain = sourceDomain;

  int? _fidelityType;
  int? get fidelityType => _$this._fidelityType;
  set fidelityType(int? fidelityType) => _$this._fidelityType = fidelityType;

  int? _conversionValue;
  int? get conversionValue => _$this._conversionValue;
  set conversionValue(int? conversionValue) =>
      _$this._conversionValue = conversionValue;

  SkanPostbackRequestCoarseConversionValueEnum? _coarseConversionValue;
  SkanPostbackRequestCoarseConversionValueEnum? get coarseConversionValue =>
      _$this._coarseConversionValue;
  set coarseConversionValue(
    SkanPostbackRequestCoarseConversionValueEnum? coarseConversionValue,
  ) => _$this._coarseConversionValue = coarseConversionValue;

  bool? _didWin;
  bool? get didWin => _$this._didWin;
  set didWin(bool? didWin) => _$this._didWin = didWin;

  int? _postbackSequenceIndex;
  int? get postbackSequenceIndex => _$this._postbackSequenceIndex;
  set postbackSequenceIndex(int? postbackSequenceIndex) =>
      _$this._postbackSequenceIndex = postbackSequenceIndex;

  SkanPostbackRequestBuilder() {
    SkanPostbackRequest._defaults(this);
  }

  SkanPostbackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _adNetworkId = $v.adNetworkId;
      _campaignId = $v.campaignId;
      _sourceIdentifier = $v.sourceIdentifier;
      _transactionId = $v.transactionId;
      _appId = $v.appId;
      _attributionSignature = $v.attributionSignature;
      _redownload = $v.redownload;
      _sourceAppId = $v.sourceAppId;
      _sourceDomain = $v.sourceDomain;
      _fidelityType = $v.fidelityType;
      _conversionValue = $v.conversionValue;
      _coarseConversionValue = $v.coarseConversionValue;
      _didWin = $v.didWin;
      _postbackSequenceIndex = $v.postbackSequenceIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkanPostbackRequest other) {
    _$v = other as _$SkanPostbackRequest;
  }

  @override
  void update(void Function(SkanPostbackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkanPostbackRequest build() => _build();

  _$SkanPostbackRequest _build() {
    final _$result =
        _$v ??
        _$SkanPostbackRequest._(
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'SkanPostbackRequest',
            'version',
          ),
          adNetworkId: BuiltValueNullFieldError.checkNotNull(
            adNetworkId,
            r'SkanPostbackRequest',
            'adNetworkId',
          ),
          campaignId: campaignId,
          sourceIdentifier: sourceIdentifier,
          transactionId: BuiltValueNullFieldError.checkNotNull(
            transactionId,
            r'SkanPostbackRequest',
            'transactionId',
          ),
          appId: BuiltValueNullFieldError.checkNotNull(
            appId,
            r'SkanPostbackRequest',
            'appId',
          ),
          attributionSignature: BuiltValueNullFieldError.checkNotNull(
            attributionSignature,
            r'SkanPostbackRequest',
            'attributionSignature',
          ),
          redownload: redownload,
          sourceAppId: sourceAppId,
          sourceDomain: sourceDomain,
          fidelityType: fidelityType,
          conversionValue: conversionValue,
          coarseConversionValue: coarseConversionValue,
          didWin: didWin,
          postbackSequenceIndex: postbackSequenceIndex,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
