// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegistrationRequestEnvironmentEnum
_$registrationRequestEnvironmentEnum_production =
    const RegistrationRequestEnvironmentEnum._('production');
const RegistrationRequestEnvironmentEnum
_$registrationRequestEnvironmentEnum_staging =
    const RegistrationRequestEnvironmentEnum._('staging');
const RegistrationRequestEnvironmentEnum
_$registrationRequestEnvironmentEnum_development =
    const RegistrationRequestEnvironmentEnum._('development');

RegistrationRequestEnvironmentEnum _$registrationRequestEnvironmentEnumValueOf(
  String name,
) {
  switch (name) {
    case 'production':
      return _$registrationRequestEnvironmentEnum_production;
    case 'staging':
      return _$registrationRequestEnvironmentEnum_staging;
    case 'development':
      return _$registrationRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegistrationRequestEnvironmentEnum>
_$registrationRequestEnvironmentEnumValues =
    BuiltSet<RegistrationRequestEnvironmentEnum>(
      const <RegistrationRequestEnvironmentEnum>[
        _$registrationRequestEnvironmentEnum_production,
        _$registrationRequestEnvironmentEnum_staging,
        _$registrationRequestEnvironmentEnum_development,
      ],
    );

const RegistrationRequestPlatformEnum _$registrationRequestPlatformEnum_ios =
    const RegistrationRequestPlatformEnum._('ios');
const RegistrationRequestPlatformEnum
_$registrationRequestPlatformEnum_android =
    const RegistrationRequestPlatformEnum._('android');
const RegistrationRequestPlatformEnum _$registrationRequestPlatformEnum_web =
    const RegistrationRequestPlatformEnum._('web');
const RegistrationRequestPlatformEnum _$registrationRequestPlatformEnum_macos =
    const RegistrationRequestPlatformEnum._('macos');
const RegistrationRequestPlatformEnum
_$registrationRequestPlatformEnum_windows =
    const RegistrationRequestPlatformEnum._('windows');
const RegistrationRequestPlatformEnum _$registrationRequestPlatformEnum_linux =
    const RegistrationRequestPlatformEnum._('linux');
const RegistrationRequestPlatformEnum _$registrationRequestPlatformEnum_server =
    const RegistrationRequestPlatformEnum._('server');

RegistrationRequestPlatformEnum _$registrationRequestPlatformEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ios':
      return _$registrationRequestPlatformEnum_ios;
    case 'android':
      return _$registrationRequestPlatformEnum_android;
    case 'web':
      return _$registrationRequestPlatformEnum_web;
    case 'macos':
      return _$registrationRequestPlatformEnum_macos;
    case 'windows':
      return _$registrationRequestPlatformEnum_windows;
    case 'linux':
      return _$registrationRequestPlatformEnum_linux;
    case 'server':
      return _$registrationRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegistrationRequestPlatformEnum>
_$registrationRequestPlatformEnumValues =
    BuiltSet<RegistrationRequestPlatformEnum>(
      const <RegistrationRequestPlatformEnum>[
        _$registrationRequestPlatformEnum_ios,
        _$registrationRequestPlatformEnum_android,
        _$registrationRequestPlatformEnum_web,
        _$registrationRequestPlatformEnum_macos,
        _$registrationRequestPlatformEnum_windows,
        _$registrationRequestPlatformEnum_linux,
        _$registrationRequestPlatformEnum_server,
      ],
    );

Serializer<RegistrationRequestEnvironmentEnum>
_$registrationRequestEnvironmentEnumSerializer =
    _$RegistrationRequestEnvironmentEnumSerializer();
Serializer<RegistrationRequestPlatformEnum>
_$registrationRequestPlatformEnumSerializer =
    _$RegistrationRequestPlatformEnumSerializer();

class _$RegistrationRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<RegistrationRequestEnvironmentEnum> {
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
  final Iterable<Type> types = const <Type>[RegistrationRequestEnvironmentEnum];
  @override
  final String wireName = 'RegistrationRequestEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    RegistrationRequestEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RegistrationRequestEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RegistrationRequestEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RegistrationRequestPlatformEnumSerializer
    implements PrimitiveSerializer<RegistrationRequestPlatformEnum> {
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
  final Iterable<Type> types = const <Type>[RegistrationRequestPlatformEnum];
  @override
  final String wireName = 'RegistrationRequestPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    RegistrationRequestPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RegistrationRequestPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RegistrationRequestPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RegistrationRequest extends RegistrationRequest {
  @override
  final String? app;
  @override
  final RegistrationRequestEnvironmentEnum? environment;
  @override
  final RegistrationRequestPlatformEnum? platform;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final String? deviceId;
  @override
  final String? username;
  @override
  final String? email;
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
  final BuiltMap<String, JsonObject?>? traits;
  @override
  final BuiltMap<String, JsonObject?>? properties;

  factory _$RegistrationRequest([
    void Function(RegistrationRequestBuilder)? updates,
  ]) => (RegistrationRequestBuilder()..update(updates))._build();

  _$RegistrationRequest._({
    this.app,
    this.environment,
    this.platform,
    this.userId,
    this.anonymousId,
    this.deviceId,
    this.username,
    this.email,
    this.appVersion,
    this.buildNumber,
    this.source_,
    this.country,
    this.locale,
    this.timezone,
    this.attributionProvider,
    this.attributionId,
    this.occurredAt,
    this.traits,
    this.properties,
  }) : super._();
  @override
  RegistrationRequest rebuild(
    void Function(RegistrationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegistrationRequestBuilder toBuilder() =>
      RegistrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationRequest &&
        app == other.app &&
        environment == other.environment &&
        platform == other.platform &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        deviceId == other.deviceId &&
        username == other.username &&
        email == other.email &&
        appVersion == other.appVersion &&
        buildNumber == other.buildNumber &&
        source_ == other.source_ &&
        country == other.country &&
        locale == other.locale &&
        timezone == other.timezone &&
        attributionProvider == other.attributionProvider &&
        attributionId == other.attributionId &&
        occurredAt == other.occurredAt &&
        traits == other.traits &&
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
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, buildNumber.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, attributionProvider.hashCode);
    _$hash = $jc(_$hash, attributionId.hashCode);
    _$hash = $jc(_$hash, occurredAt.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('platform', platform)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('deviceId', deviceId)
          ..add('username', username)
          ..add('email', email)
          ..add('appVersion', appVersion)
          ..add('buildNumber', buildNumber)
          ..add('source_', source_)
          ..add('country', country)
          ..add('locale', locale)
          ..add('timezone', timezone)
          ..add('attributionProvider', attributionProvider)
          ..add('attributionId', attributionId)
          ..add('occurredAt', occurredAt)
          ..add('traits', traits)
          ..add('properties', properties))
        .toString();
  }
}

class RegistrationRequestBuilder
    implements Builder<RegistrationRequest, RegistrationRequestBuilder> {
  _$RegistrationRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  RegistrationRequestEnvironmentEnum? _environment;
  RegistrationRequestEnvironmentEnum? get environment => _$this._environment;
  set environment(RegistrationRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  RegistrationRequestPlatformEnum? _platform;
  RegistrationRequestPlatformEnum? get platform => _$this._platform;
  set platform(RegistrationRequestPlatformEnum? platform) =>
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

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

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

  MapBuilder<String, JsonObject?>? _traits;
  MapBuilder<String, JsonObject?> get traits =>
      _$this._traits ??= MapBuilder<String, JsonObject?>();
  set traits(MapBuilder<String, JsonObject?>? traits) =>
      _$this._traits = traits;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  RegistrationRequestBuilder() {
    RegistrationRequest._defaults(this);
  }

  RegistrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _platform = $v.platform;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _deviceId = $v.deviceId;
      _username = $v.username;
      _email = $v.email;
      _appVersion = $v.appVersion;
      _buildNumber = $v.buildNumber;
      _source_ = $v.source_;
      _country = $v.country;
      _locale = $v.locale;
      _timezone = $v.timezone;
      _attributionProvider = $v.attributionProvider;
      _attributionId = $v.attributionId;
      _occurredAt = $v.occurredAt;
      _traits = $v.traits?.toBuilder();
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationRequest other) {
    _$v = other as _$RegistrationRequest;
  }

  @override
  void update(void Function(RegistrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationRequest build() => _build();

  _$RegistrationRequest _build() {
    _$RegistrationRequest _$result;
    try {
      _$result =
          _$v ??
          _$RegistrationRequest._(
            app: app,
            environment: environment,
            platform: platform,
            userId: userId,
            anonymousId: anonymousId,
            deviceId: deviceId,
            username: username,
            email: email,
            appVersion: appVersion,
            buildNumber: buildNumber,
            source_: source_,
            country: country,
            locale: locale,
            timezone: timezone,
            attributionProvider: attributionProvider,
            attributionId: attributionId,
            occurredAt: occurredAt,
            traits: _traits?.build(),
            properties: _properties?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'traits';
        _traits?.build();
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RegistrationRequest',
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
