// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DownloadRequestEnvironmentEnum
    _$downloadRequestEnvironmentEnum_production =
    const DownloadRequestEnvironmentEnum._('production');
const DownloadRequestEnvironmentEnum _$downloadRequestEnvironmentEnum_staging =
    const DownloadRequestEnvironmentEnum._('staging');
const DownloadRequestEnvironmentEnum
    _$downloadRequestEnvironmentEnum_development =
    const DownloadRequestEnvironmentEnum._('development');

DownloadRequestEnvironmentEnum _$downloadRequestEnvironmentEnumValueOf(
    String name) {
  switch (name) {
    case 'production':
      return _$downloadRequestEnvironmentEnum_production;
    case 'staging':
      return _$downloadRequestEnvironmentEnum_staging;
    case 'development':
      return _$downloadRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DownloadRequestEnvironmentEnum>
    _$downloadRequestEnvironmentEnumValues = BuiltSet<
        DownloadRequestEnvironmentEnum>(const <DownloadRequestEnvironmentEnum>[
  _$downloadRequestEnvironmentEnum_production,
  _$downloadRequestEnvironmentEnum_staging,
  _$downloadRequestEnvironmentEnum_development,
]);

const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_ios =
    const DownloadRequestPlatformEnum._('ios');
const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_android =
    const DownloadRequestPlatformEnum._('android');
const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_web =
    const DownloadRequestPlatformEnum._('web');
const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_macos =
    const DownloadRequestPlatformEnum._('macos');
const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_windows =
    const DownloadRequestPlatformEnum._('windows');
const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_linux =
    const DownloadRequestPlatformEnum._('linux');
const DownloadRequestPlatformEnum _$downloadRequestPlatformEnum_server =
    const DownloadRequestPlatformEnum._('server');

DownloadRequestPlatformEnum _$downloadRequestPlatformEnumValueOf(String name) {
  switch (name) {
    case 'ios':
      return _$downloadRequestPlatformEnum_ios;
    case 'android':
      return _$downloadRequestPlatformEnum_android;
    case 'web':
      return _$downloadRequestPlatformEnum_web;
    case 'macos':
      return _$downloadRequestPlatformEnum_macos;
    case 'windows':
      return _$downloadRequestPlatformEnum_windows;
    case 'linux':
      return _$downloadRequestPlatformEnum_linux;
    case 'server':
      return _$downloadRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DownloadRequestPlatformEnum>
    _$downloadRequestPlatformEnumValues =
    BuiltSet<DownloadRequestPlatformEnum>(const <DownloadRequestPlatformEnum>[
  _$downloadRequestPlatformEnum_ios,
  _$downloadRequestPlatformEnum_android,
  _$downloadRequestPlatformEnum_web,
  _$downloadRequestPlatformEnum_macos,
  _$downloadRequestPlatformEnum_windows,
  _$downloadRequestPlatformEnum_linux,
  _$downloadRequestPlatformEnum_server,
]);

Serializer<DownloadRequestEnvironmentEnum>
    _$downloadRequestEnvironmentEnumSerializer =
    _$DownloadRequestEnvironmentEnumSerializer();
Serializer<DownloadRequestPlatformEnum>
    _$downloadRequestPlatformEnumSerializer =
    _$DownloadRequestPlatformEnumSerializer();

class _$DownloadRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<DownloadRequestEnvironmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'production': 'production',
    'staging': 'staging',
    'development': 'development',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'production': 'production',
    'staging': 'staging',
    'development': 'development',
  };

  @override
  final Iterable<Type> types = const <Type>[DownloadRequestEnvironmentEnum];
  @override
  final String wireName = 'DownloadRequestEnvironmentEnum';

  @override
  Object serialize(
          Serializers serializers, DownloadRequestEnvironmentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DownloadRequestEnvironmentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DownloadRequestEnvironmentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DownloadRequestPlatformEnumSerializer
    implements PrimitiveSerializer<DownloadRequestPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ios': 'ios',
    'android': 'android',
    'web': 'web',
    'macos': 'macos',
    'windows': 'windows',
    'linux': 'linux',
    'server': 'server',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ios': 'ios',
    'android': 'android',
    'web': 'web',
    'macos': 'macos',
    'windows': 'windows',
    'linux': 'linux',
    'server': 'server',
  };

  @override
  final Iterable<Type> types = const <Type>[DownloadRequestPlatformEnum];
  @override
  final String wireName = 'DownloadRequestPlatformEnum';

  @override
  Object serialize(Serializers serializers, DownloadRequestPlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DownloadRequestPlatformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DownloadRequestPlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DownloadRequest extends DownloadRequest {
  @override
  final String? app;
  @override
  final DownloadRequestEnvironmentEnum? environment;
  @override
  final DownloadRequestPlatformEnum? platform;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final String? deviceId;
  @override
  final String? appVersion;
  @override
  final String? buildNumber;
  @override
  final String? source_;
  @override
  final String? country;
  @override
  final String? locale;
  @override
  final String? timezone;
  @override
  final String? attributionProvider;
  @override
  final String? attributionId;
  @override
  final DateTime? occurredAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;

  factory _$DownloadRequest([void Function(DownloadRequestBuilder)? updates]) =>
      (DownloadRequestBuilder()..update(updates))._build();

  _$DownloadRequest._(
      {this.app,
      this.environment,
      this.platform,
      this.userId,
      this.anonymousId,
      this.deviceId,
      this.appVersion,
      this.buildNumber,
      this.source_,
      this.country,
      this.locale,
      this.timezone,
      this.attributionProvider,
      this.attributionId,
      this.occurredAt,
      this.properties})
      : super._();
  @override
  DownloadRequest rebuild(void Function(DownloadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadRequestBuilder toBuilder() => DownloadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadRequest &&
        app == other.app &&
        environment == other.environment &&
        platform == other.platform &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        deviceId == other.deviceId &&
        appVersion == other.appVersion &&
        buildNumber == other.buildNumber &&
        source_ == other.source_ &&
        country == other.country &&
        locale == other.locale &&
        timezone == other.timezone &&
        attributionProvider == other.attributionProvider &&
        attributionId == other.attributionId &&
        occurredAt == other.occurredAt &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, anonymousId.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, buildNumber.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, attributionProvider.hashCode);
    _$hash = $jc(_$hash, attributionId.hashCode);
    _$hash = $jc(_$hash, occurredAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('platform', platform)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('deviceId', deviceId)
          ..add('appVersion', appVersion)
          ..add('buildNumber', buildNumber)
          ..add('source_', source_)
          ..add('country', country)
          ..add('locale', locale)
          ..add('timezone', timezone)
          ..add('attributionProvider', attributionProvider)
          ..add('attributionId', attributionId)
          ..add('occurredAt', occurredAt)
          ..add('properties', properties))
        .toString();
  }
}

class DownloadRequestBuilder
    implements Builder<DownloadRequest, DownloadRequestBuilder> {
  _$DownloadRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  DownloadRequestEnvironmentEnum? _environment;
  DownloadRequestEnvironmentEnum? get environment => _$this._environment;
  set environment(DownloadRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  DownloadRequestPlatformEnum? _platform;
  DownloadRequestPlatformEnum? get platform => _$this._platform;
  set platform(DownloadRequestPlatformEnum? platform) =>
      _$this._platform = platform;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _anonymousId;
  String? get anonymousId => _$this._anonymousId;
  set anonymousId(String? anonymousId) => _$this._anonymousId = anonymousId;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  String? _buildNumber;
  String? get buildNumber => _$this._buildNumber;
  set buildNumber(String? buildNumber) => _$this._buildNumber = buildNumber;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _attributionProvider;
  String? get attributionProvider => _$this._attributionProvider;
  set attributionProvider(String? attributionProvider) =>
      _$this._attributionProvider = attributionProvider;

  String? _attributionId;
  String? get attributionId => _$this._attributionId;
  set attributionId(String? attributionId) =>
      _$this._attributionId = attributionId;

  DateTime? _occurredAt;
  DateTime? get occurredAt => _$this._occurredAt;
  set occurredAt(DateTime? occurredAt) => _$this._occurredAt = occurredAt;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  DownloadRequestBuilder() {
    DownloadRequest._defaults(this);
  }

  DownloadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _platform = $v.platform;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _deviceId = $v.deviceId;
      _appVersion = $v.appVersion;
      _buildNumber = $v.buildNumber;
      _source_ = $v.source_;
      _country = $v.country;
      _locale = $v.locale;
      _timezone = $v.timezone;
      _attributionProvider = $v.attributionProvider;
      _attributionId = $v.attributionId;
      _occurredAt = $v.occurredAt;
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadRequest other) {
    _$v = other as _$DownloadRequest;
  }

  @override
  void update(void Function(DownloadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadRequest build() => _build();

  _$DownloadRequest _build() {
    _$DownloadRequest _$result;
    try {
      _$result = _$v ??
          _$DownloadRequest._(
            app: app,
            environment: environment,
            platform: platform,
            userId: userId,
            anonymousId: anonymousId,
            deviceId: deviceId,
            appVersion: appVersion,
            buildNumber: buildNumber,
            source_: source_,
            country: country,
            locale: locale,
            timezone: timezone,
            attributionProvider: attributionProvider,
            attributionId: attributionId,
            occurredAt: occurredAt,
            properties: _properties?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DownloadRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
