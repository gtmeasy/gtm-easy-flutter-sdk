// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identify_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IdentifyUserRequestEnvironmentEnum
    _$identifyUserRequestEnvironmentEnum_production =
    const IdentifyUserRequestEnvironmentEnum._('production');
const IdentifyUserRequestEnvironmentEnum
    _$identifyUserRequestEnvironmentEnum_staging =
    const IdentifyUserRequestEnvironmentEnum._('staging');
const IdentifyUserRequestEnvironmentEnum
    _$identifyUserRequestEnvironmentEnum_development =
    const IdentifyUserRequestEnvironmentEnum._('development');

IdentifyUserRequestEnvironmentEnum _$identifyUserRequestEnvironmentEnumValueOf(
    String name) {
  switch (name) {
    case 'production':
      return _$identifyUserRequestEnvironmentEnum_production;
    case 'staging':
      return _$identifyUserRequestEnvironmentEnum_staging;
    case 'development':
      return _$identifyUserRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IdentifyUserRequestEnvironmentEnum>
    _$identifyUserRequestEnvironmentEnumValues = BuiltSet<
        IdentifyUserRequestEnvironmentEnum>(const <IdentifyUserRequestEnvironmentEnum>[
  _$identifyUserRequestEnvironmentEnum_production,
  _$identifyUserRequestEnvironmentEnum_staging,
  _$identifyUserRequestEnvironmentEnum_development,
]);

const IdentifyUserRequestPlatformEnum _$identifyUserRequestPlatformEnum_ios =
    const IdentifyUserRequestPlatformEnum._('ios');
const IdentifyUserRequestPlatformEnum
    _$identifyUserRequestPlatformEnum_android =
    const IdentifyUserRequestPlatformEnum._('android');
const IdentifyUserRequestPlatformEnum _$identifyUserRequestPlatformEnum_web =
    const IdentifyUserRequestPlatformEnum._('web');
const IdentifyUserRequestPlatformEnum _$identifyUserRequestPlatformEnum_macos =
    const IdentifyUserRequestPlatformEnum._('macos');
const IdentifyUserRequestPlatformEnum
    _$identifyUserRequestPlatformEnum_windows =
    const IdentifyUserRequestPlatformEnum._('windows');
const IdentifyUserRequestPlatformEnum _$identifyUserRequestPlatformEnum_linux =
    const IdentifyUserRequestPlatformEnum._('linux');
const IdentifyUserRequestPlatformEnum _$identifyUserRequestPlatformEnum_server =
    const IdentifyUserRequestPlatformEnum._('server');

IdentifyUserRequestPlatformEnum _$identifyUserRequestPlatformEnumValueOf(
    String name) {
  switch (name) {
    case 'ios':
      return _$identifyUserRequestPlatformEnum_ios;
    case 'android':
      return _$identifyUserRequestPlatformEnum_android;
    case 'web':
      return _$identifyUserRequestPlatformEnum_web;
    case 'macos':
      return _$identifyUserRequestPlatformEnum_macos;
    case 'windows':
      return _$identifyUserRequestPlatformEnum_windows;
    case 'linux':
      return _$identifyUserRequestPlatformEnum_linux;
    case 'server':
      return _$identifyUserRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IdentifyUserRequestPlatformEnum>
    _$identifyUserRequestPlatformEnumValues = BuiltSet<
        IdentifyUserRequestPlatformEnum>(const <IdentifyUserRequestPlatformEnum>[
  _$identifyUserRequestPlatformEnum_ios,
  _$identifyUserRequestPlatformEnum_android,
  _$identifyUserRequestPlatformEnum_web,
  _$identifyUserRequestPlatformEnum_macos,
  _$identifyUserRequestPlatformEnum_windows,
  _$identifyUserRequestPlatformEnum_linux,
  _$identifyUserRequestPlatformEnum_server,
]);

Serializer<IdentifyUserRequestEnvironmentEnum>
    _$identifyUserRequestEnvironmentEnumSerializer =
    _$IdentifyUserRequestEnvironmentEnumSerializer();
Serializer<IdentifyUserRequestPlatformEnum>
    _$identifyUserRequestPlatformEnumSerializer =
    _$IdentifyUserRequestPlatformEnumSerializer();

class _$IdentifyUserRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<IdentifyUserRequestEnvironmentEnum> {
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
  final Iterable<Type> types = const <Type>[IdentifyUserRequestEnvironmentEnum];
  @override
  final String wireName = 'IdentifyUserRequestEnvironmentEnum';

  @override
  Object serialize(
          Serializers serializers, IdentifyUserRequestEnvironmentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IdentifyUserRequestEnvironmentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IdentifyUserRequestEnvironmentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IdentifyUserRequestPlatformEnumSerializer
    implements PrimitiveSerializer<IdentifyUserRequestPlatformEnum> {
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
  final Iterable<Type> types = const <Type>[IdentifyUserRequestPlatformEnum];
  @override
  final String wireName = 'IdentifyUserRequestPlatformEnum';

  @override
  Object serialize(
          Serializers serializers, IdentifyUserRequestPlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IdentifyUserRequestPlatformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IdentifyUserRequestPlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IdentifyUserRequest extends IdentifyUserRequest {
  @override
  final String app;
  @override
  final IdentifyUserRequestEnvironmentEnum? environment;
  @override
  final IdentifyUserRequestPlatformEnum? platform;
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
  final String? country;
  @override
  final String? locale;
  @override
  final String? timezone;
  @override
  final BuiltMap<String, JsonObject?>? traits;

  factory _$IdentifyUserRequest(
          [void Function(IdentifyUserRequestBuilder)? updates]) =>
      (IdentifyUserRequestBuilder()..update(updates))._build();

  _$IdentifyUserRequest._(
      {required this.app,
      this.environment,
      this.platform,
      this.userId,
      this.anonymousId,
      this.deviceId,
      this.username,
      this.email,
      this.appVersion,
      this.buildNumber,
      this.country,
      this.locale,
      this.timezone,
      this.traits})
      : super._();
  @override
  IdentifyUserRequest rebuild(
          void Function(IdentifyUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifyUserRequestBuilder toBuilder() =>
      IdentifyUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifyUserRequest &&
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
        country == other.country &&
        locale == other.locale &&
        timezone == other.timezone &&
        traits == other.traits;
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
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdentifyUserRequest')
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
          ..add('country', country)
          ..add('locale', locale)
          ..add('timezone', timezone)
          ..add('traits', traits))
        .toString();
  }
}

class IdentifyUserRequestBuilder
    implements Builder<IdentifyUserRequest, IdentifyUserRequestBuilder> {
  _$IdentifyUserRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  IdentifyUserRequestEnvironmentEnum? _environment;
  IdentifyUserRequestEnvironmentEnum? get environment => _$this._environment;
  set environment(IdentifyUserRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  IdentifyUserRequestPlatformEnum? _platform;
  IdentifyUserRequestPlatformEnum? get platform => _$this._platform;
  set platform(IdentifyUserRequestPlatformEnum? platform) =>
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

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  MapBuilder<String, JsonObject?>? _traits;
  MapBuilder<String, JsonObject?> get traits =>
      _$this._traits ??= MapBuilder<String, JsonObject?>();
  set traits(MapBuilder<String, JsonObject?>? traits) =>
      _$this._traits = traits;

  IdentifyUserRequestBuilder() {
    IdentifyUserRequest._defaults(this);
  }

  IdentifyUserRequestBuilder get _$this {
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
      _country = $v.country;
      _locale = $v.locale;
      _timezone = $v.timezone;
      _traits = $v.traits?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifyUserRequest other) {
    _$v = other as _$IdentifyUserRequest;
  }

  @override
  void update(void Function(IdentifyUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdentifyUserRequest build() => _build();

  _$IdentifyUserRequest _build() {
    _$IdentifyUserRequest _$result;
    try {
      _$result = _$v ??
          _$IdentifyUserRequest._(
            app: BuiltValueNullFieldError.checkNotNull(
                app, r'IdentifyUserRequest', 'app'),
            environment: environment,
            platform: platform,
            userId: userId,
            anonymousId: anonymousId,
            deviceId: deviceId,
            username: username,
            email: email,
            appVersion: appVersion,
            buildNumber: buildNumber,
            country: country,
            locale: locale,
            timezone: timezone,
            traits: _traits?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'traits';
        _traits?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IdentifyUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
