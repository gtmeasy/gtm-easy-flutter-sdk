// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_attribution_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AppleAttributionRequestEnvironmentEnum
_$appleAttributionRequestEnvironmentEnum_production =
    const AppleAttributionRequestEnvironmentEnum._('production');
const AppleAttributionRequestEnvironmentEnum
_$appleAttributionRequestEnvironmentEnum_staging =
    const AppleAttributionRequestEnvironmentEnum._('staging');
const AppleAttributionRequestEnvironmentEnum
_$appleAttributionRequestEnvironmentEnum_development =
    const AppleAttributionRequestEnvironmentEnum._('development');

AppleAttributionRequestEnvironmentEnum
_$appleAttributionRequestEnvironmentEnumValueOf(String name) {
  switch (name) {
    case 'production':
      return _$appleAttributionRequestEnvironmentEnum_production;
    case 'staging':
      return _$appleAttributionRequestEnvironmentEnum_staging;
    case 'development':
      return _$appleAttributionRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AppleAttributionRequestEnvironmentEnum>
_$appleAttributionRequestEnvironmentEnumValues =
    BuiltSet<AppleAttributionRequestEnvironmentEnum>(
      const <AppleAttributionRequestEnvironmentEnum>[
        _$appleAttributionRequestEnvironmentEnum_production,
        _$appleAttributionRequestEnvironmentEnum_staging,
        _$appleAttributionRequestEnvironmentEnum_development,
      ],
    );

const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_ios =
    const AppleAttributionRequestPlatformEnum._('ios');
const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_android =
    const AppleAttributionRequestPlatformEnum._('android');
const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_web =
    const AppleAttributionRequestPlatformEnum._('web');
const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_macos =
    const AppleAttributionRequestPlatformEnum._('macos');
const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_windows =
    const AppleAttributionRequestPlatformEnum._('windows');
const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_linux =
    const AppleAttributionRequestPlatformEnum._('linux');
const AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnum_server =
    const AppleAttributionRequestPlatformEnum._('server');

AppleAttributionRequestPlatformEnum
_$appleAttributionRequestPlatformEnumValueOf(String name) {
  switch (name) {
    case 'ios':
      return _$appleAttributionRequestPlatformEnum_ios;
    case 'android':
      return _$appleAttributionRequestPlatformEnum_android;
    case 'web':
      return _$appleAttributionRequestPlatformEnum_web;
    case 'macos':
      return _$appleAttributionRequestPlatformEnum_macos;
    case 'windows':
      return _$appleAttributionRequestPlatformEnum_windows;
    case 'linux':
      return _$appleAttributionRequestPlatformEnum_linux;
    case 'server':
      return _$appleAttributionRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AppleAttributionRequestPlatformEnum>
_$appleAttributionRequestPlatformEnumValues =
    BuiltSet<AppleAttributionRequestPlatformEnum>(
      const <AppleAttributionRequestPlatformEnum>[
        _$appleAttributionRequestPlatformEnum_ios,
        _$appleAttributionRequestPlatformEnum_android,
        _$appleAttributionRequestPlatformEnum_web,
        _$appleAttributionRequestPlatformEnum_macos,
        _$appleAttributionRequestPlatformEnum_windows,
        _$appleAttributionRequestPlatformEnum_linux,
        _$appleAttributionRequestPlatformEnum_server,
      ],
    );

Serializer<AppleAttributionRequestEnvironmentEnum>
_$appleAttributionRequestEnvironmentEnumSerializer =
    _$AppleAttributionRequestEnvironmentEnumSerializer();
Serializer<AppleAttributionRequestPlatformEnum>
_$appleAttributionRequestPlatformEnumSerializer =
    _$AppleAttributionRequestPlatformEnumSerializer();

class _$AppleAttributionRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<AppleAttributionRequestEnvironmentEnum> {
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
  final Iterable<Type> types = const <Type>[
    AppleAttributionRequestEnvironmentEnum,
  ];
  @override
  final String wireName = 'AppleAttributionRequestEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    AppleAttributionRequestEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AppleAttributionRequestEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AppleAttributionRequestEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AppleAttributionRequestPlatformEnumSerializer
    implements PrimitiveSerializer<AppleAttributionRequestPlatformEnum> {
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
  final Iterable<Type> types = const <Type>[
    AppleAttributionRequestPlatformEnum,
  ];
  @override
  final String wireName = 'AppleAttributionRequestPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    AppleAttributionRequestPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AppleAttributionRequestPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AppleAttributionRequestPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AppleAttributionRequest extends AppleAttributionRequest {
  @override
  final String app;
  @override
  final AppleAttributionRequestEnvironmentEnum? environment;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final String? deviceId;
  @override
  final AppleAttributionRequestPlatformEnum? platform;
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
  final DateTime? occurredAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final String appleAttributionToken;

  factory _$AppleAttributionRequest([
    void Function(AppleAttributionRequestBuilder)? updates,
  ]) => (AppleAttributionRequestBuilder()..update(updates))._build();

  _$AppleAttributionRequest._({
    required this.app,
    this.environment,
    this.userId,
    this.anonymousId,
    this.deviceId,
    this.platform,
    this.appVersion,
    this.buildNumber,
    this.source_,
    this.country,
    this.locale,
    this.timezone,
    this.occurredAt,
    this.properties,
    required this.appleAttributionToken,
  }) : super._();
  @override
  AppleAttributionRequest rebuild(
    void Function(AppleAttributionRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AppleAttributionRequestBuilder toBuilder() =>
      AppleAttributionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppleAttributionRequest &&
        app == other.app &&
        environment == other.environment &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        deviceId == other.deviceId &&
        platform == other.platform &&
        appVersion == other.appVersion &&
        buildNumber == other.buildNumber &&
        source_ == other.source_ &&
        country == other.country &&
        locale == other.locale &&
        timezone == other.timezone &&
        occurredAt == other.occurredAt &&
        properties == other.properties &&
        appleAttributionToken == other.appleAttributionToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, anonymousId.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, buildNumber.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, occurredAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, appleAttributionToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppleAttributionRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('deviceId', deviceId)
          ..add('platform', platform)
          ..add('appVersion', appVersion)
          ..add('buildNumber', buildNumber)
          ..add('source_', source_)
          ..add('country', country)
          ..add('locale', locale)
          ..add('timezone', timezone)
          ..add('occurredAt', occurredAt)
          ..add('properties', properties)
          ..add('appleAttributionToken', appleAttributionToken))
        .toString();
  }
}

class AppleAttributionRequestBuilder
    implements
        Builder<AppleAttributionRequest, AppleAttributionRequestBuilder> {
  _$AppleAttributionRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  AppleAttributionRequestEnvironmentEnum? _environment;
  AppleAttributionRequestEnvironmentEnum? get environment =>
      _$this._environment;
  set environment(AppleAttributionRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _anonymousId;
  String? get anonymousId => _$this._anonymousId;
  set anonymousId(String? anonymousId) => _$this._anonymousId = anonymousId;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  AppleAttributionRequestPlatformEnum? _platform;
  AppleAttributionRequestPlatformEnum? get platform => _$this._platform;
  set platform(AppleAttributionRequestPlatformEnum? platform) =>
      _$this._platform = platform;

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

  DateTime? _occurredAt;
  DateTime? get occurredAt => _$this._occurredAt;
  set occurredAt(DateTime? occurredAt) => _$this._occurredAt = occurredAt;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  String? _appleAttributionToken;
  String? get appleAttributionToken => _$this._appleAttributionToken;
  set appleAttributionToken(String? appleAttributionToken) =>
      _$this._appleAttributionToken = appleAttributionToken;

  AppleAttributionRequestBuilder() {
    AppleAttributionRequest._defaults(this);
  }

  AppleAttributionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _deviceId = $v.deviceId;
      _platform = $v.platform;
      _appVersion = $v.appVersion;
      _buildNumber = $v.buildNumber;
      _source_ = $v.source_;
      _country = $v.country;
      _locale = $v.locale;
      _timezone = $v.timezone;
      _occurredAt = $v.occurredAt;
      _properties = $v.properties?.toBuilder();
      _appleAttributionToken = $v.appleAttributionToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppleAttributionRequest other) {
    _$v = other as _$AppleAttributionRequest;
  }

  @override
  void update(void Function(AppleAttributionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppleAttributionRequest build() => _build();

  _$AppleAttributionRequest _build() {
    _$AppleAttributionRequest _$result;
    try {
      _$result =
          _$v ??
          _$AppleAttributionRequest._(
            app: BuiltValueNullFieldError.checkNotNull(
              app,
              r'AppleAttributionRequest',
              'app',
            ),
            environment: environment,
            userId: userId,
            anonymousId: anonymousId,
            deviceId: deviceId,
            platform: platform,
            appVersion: appVersion,
            buildNumber: buildNumber,
            source_: source_,
            country: country,
            locale: locale,
            timezone: timezone,
            occurredAt: occurredAt,
            properties: _properties?.build(),
            appleAttributionToken: BuiltValueNullFieldError.checkNotNull(
              appleAttributionToken,
              r'AppleAttributionRequest',
              'appleAttributionToken',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AppleAttributionRequest',
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
