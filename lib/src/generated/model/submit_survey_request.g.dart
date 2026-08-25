// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_survey_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubmitSurveyRequestEnvironmentEnum
_$submitSurveyRequestEnvironmentEnum_production =
    const SubmitSurveyRequestEnvironmentEnum._('production');
const SubmitSurveyRequestEnvironmentEnum
_$submitSurveyRequestEnvironmentEnum_staging =
    const SubmitSurveyRequestEnvironmentEnum._('staging');
const SubmitSurveyRequestEnvironmentEnum
_$submitSurveyRequestEnvironmentEnum_development =
    const SubmitSurveyRequestEnvironmentEnum._('development');

SubmitSurveyRequestEnvironmentEnum _$submitSurveyRequestEnvironmentEnumValueOf(
  String name,
) {
  switch (name) {
    case 'production':
      return _$submitSurveyRequestEnvironmentEnum_production;
    case 'staging':
      return _$submitSurveyRequestEnvironmentEnum_staging;
    case 'development':
      return _$submitSurveyRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SubmitSurveyRequestEnvironmentEnum>
_$submitSurveyRequestEnvironmentEnumValues =
    BuiltSet<SubmitSurveyRequestEnvironmentEnum>(
      const <SubmitSurveyRequestEnvironmentEnum>[
        _$submitSurveyRequestEnvironmentEnum_production,
        _$submitSurveyRequestEnvironmentEnum_staging,
        _$submitSurveyRequestEnvironmentEnum_development,
      ],
    );

const SubmitSurveyRequestPlatformEnum _$submitSurveyRequestPlatformEnum_ios =
    const SubmitSurveyRequestPlatformEnum._('ios');
const SubmitSurveyRequestPlatformEnum
_$submitSurveyRequestPlatformEnum_android =
    const SubmitSurveyRequestPlatformEnum._('android');
const SubmitSurveyRequestPlatformEnum _$submitSurveyRequestPlatformEnum_web =
    const SubmitSurveyRequestPlatformEnum._('web');
const SubmitSurveyRequestPlatformEnum _$submitSurveyRequestPlatformEnum_macos =
    const SubmitSurveyRequestPlatformEnum._('macos');
const SubmitSurveyRequestPlatformEnum
_$submitSurveyRequestPlatformEnum_windows =
    const SubmitSurveyRequestPlatformEnum._('windows');
const SubmitSurveyRequestPlatformEnum _$submitSurveyRequestPlatformEnum_linux =
    const SubmitSurveyRequestPlatformEnum._('linux');
const SubmitSurveyRequestPlatformEnum _$submitSurveyRequestPlatformEnum_server =
    const SubmitSurveyRequestPlatformEnum._('server');

SubmitSurveyRequestPlatformEnum _$submitSurveyRequestPlatformEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ios':
      return _$submitSurveyRequestPlatformEnum_ios;
    case 'android':
      return _$submitSurveyRequestPlatformEnum_android;
    case 'web':
      return _$submitSurveyRequestPlatformEnum_web;
    case 'macos':
      return _$submitSurveyRequestPlatformEnum_macos;
    case 'windows':
      return _$submitSurveyRequestPlatformEnum_windows;
    case 'linux':
      return _$submitSurveyRequestPlatformEnum_linux;
    case 'server':
      return _$submitSurveyRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SubmitSurveyRequestPlatformEnum>
_$submitSurveyRequestPlatformEnumValues =
    BuiltSet<SubmitSurveyRequestPlatformEnum>(
      const <SubmitSurveyRequestPlatformEnum>[
        _$submitSurveyRequestPlatformEnum_ios,
        _$submitSurveyRequestPlatformEnum_android,
        _$submitSurveyRequestPlatformEnum_web,
        _$submitSurveyRequestPlatformEnum_macos,
        _$submitSurveyRequestPlatformEnum_windows,
        _$submitSurveyRequestPlatformEnum_linux,
        _$submitSurveyRequestPlatformEnum_server,
      ],
    );

const SubmitSurveyRequestStatusEnum _$submitSurveyRequestStatusEnum_completed =
    const SubmitSurveyRequestStatusEnum._('completed');
const SubmitSurveyRequestStatusEnum _$submitSurveyRequestStatusEnum_partial =
    const SubmitSurveyRequestStatusEnum._('partial');
const SubmitSurveyRequestStatusEnum _$submitSurveyRequestStatusEnum_dismissed =
    const SubmitSurveyRequestStatusEnum._('dismissed');

SubmitSurveyRequestStatusEnum _$submitSurveyRequestStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'completed':
      return _$submitSurveyRequestStatusEnum_completed;
    case 'partial':
      return _$submitSurveyRequestStatusEnum_partial;
    case 'dismissed':
      return _$submitSurveyRequestStatusEnum_dismissed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SubmitSurveyRequestStatusEnum>
_$submitSurveyRequestStatusEnumValues = BuiltSet<SubmitSurveyRequestStatusEnum>(
  const <SubmitSurveyRequestStatusEnum>[
    _$submitSurveyRequestStatusEnum_completed,
    _$submitSurveyRequestStatusEnum_partial,
    _$submitSurveyRequestStatusEnum_dismissed,
  ],
);

Serializer<SubmitSurveyRequestEnvironmentEnum>
_$submitSurveyRequestEnvironmentEnumSerializer =
    _$SubmitSurveyRequestEnvironmentEnumSerializer();
Serializer<SubmitSurveyRequestPlatformEnum>
_$submitSurveyRequestPlatformEnumSerializer =
    _$SubmitSurveyRequestPlatformEnumSerializer();
Serializer<SubmitSurveyRequestStatusEnum>
_$submitSurveyRequestStatusEnumSerializer =
    _$SubmitSurveyRequestStatusEnumSerializer();

class _$SubmitSurveyRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<SubmitSurveyRequestEnvironmentEnum> {
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
  final Iterable<Type> types = const <Type>[SubmitSurveyRequestEnvironmentEnum];
  @override
  final String wireName = 'SubmitSurveyRequestEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubmitSurveyRequestEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubmitSurveyRequestEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubmitSurveyRequestEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubmitSurveyRequestPlatformEnumSerializer
    implements PrimitiveSerializer<SubmitSurveyRequestPlatformEnum> {
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
  final Iterable<Type> types = const <Type>[SubmitSurveyRequestPlatformEnum];
  @override
  final String wireName = 'SubmitSurveyRequestPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubmitSurveyRequestPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubmitSurveyRequestPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubmitSurveyRequestPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubmitSurveyRequestStatusEnumSerializer
    implements PrimitiveSerializer<SubmitSurveyRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'completed': 'completed',
    'partial': 'partial',
    'dismissed': 'dismissed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'completed': 'completed',
    'partial': 'partial',
    'dismissed': 'dismissed',
  };

  @override
  final Iterable<Type> types = const <Type>[SubmitSurveyRequestStatusEnum];
  @override
  final String wireName = 'SubmitSurveyRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubmitSurveyRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubmitSurveyRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubmitSurveyRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubmitSurveyRequest extends SubmitSurveyRequest {
  @override
  final String? app;
  @override
  final SubmitSurveyRequestEnvironmentEnum? environment;
  @override
  final SubmitSurveyRequestPlatformEnum? platform;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final String? deviceId;
  @override
  final String surveyId;
  @override
  final String? surveyVersion;
  @override
  final String? surveyName;
  @override
  final String? submissionId;
  @override
  final SubmitSurveyRequestStatusEnum? status;
  @override
  final String? appVersion;
  @override
  final String? locale;
  @override
  final String? country;
  @override
  final DateTime? occurredAt;
  @override
  final BuiltList<SurveyResponseAnswer>? responses;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$SubmitSurveyRequest([
    void Function(SubmitSurveyRequestBuilder)? updates,
  ]) => (SubmitSurveyRequestBuilder()..update(updates))._build();

  _$SubmitSurveyRequest._({
    this.app,
    this.environment,
    this.platform,
    this.userId,
    this.anonymousId,
    this.deviceId,
    required this.surveyId,
    this.surveyVersion,
    this.surveyName,
    this.submissionId,
    this.status,
    this.appVersion,
    this.locale,
    this.country,
    this.occurredAt,
    this.responses,
    this.properties,
    this.metadata,
  }) : super._();
  @override
  SubmitSurveyRequest rebuild(
    void Function(SubmitSurveyRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubmitSurveyRequestBuilder toBuilder() =>
      SubmitSurveyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitSurveyRequest &&
        app == other.app &&
        environment == other.environment &&
        platform == other.platform &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        deviceId == other.deviceId &&
        surveyId == other.surveyId &&
        surveyVersion == other.surveyVersion &&
        surveyName == other.surveyName &&
        submissionId == other.submissionId &&
        status == other.status &&
        appVersion == other.appVersion &&
        locale == other.locale &&
        country == other.country &&
        occurredAt == other.occurredAt &&
        responses == other.responses &&
        properties == other.properties &&
        metadata == other.metadata;
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
    _$hash = $jc(_$hash, surveyId.hashCode);
    _$hash = $jc(_$hash, surveyVersion.hashCode);
    _$hash = $jc(_$hash, surveyName.hashCode);
    _$hash = $jc(_$hash, submissionId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, occurredAt.hashCode);
    _$hash = $jc(_$hash, responses.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitSurveyRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('platform', platform)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('deviceId', deviceId)
          ..add('surveyId', surveyId)
          ..add('surveyVersion', surveyVersion)
          ..add('surveyName', surveyName)
          ..add('submissionId', submissionId)
          ..add('status', status)
          ..add('appVersion', appVersion)
          ..add('locale', locale)
          ..add('country', country)
          ..add('occurredAt', occurredAt)
          ..add('responses', responses)
          ..add('properties', properties)
          ..add('metadata', metadata))
        .toString();
  }
}

class SubmitSurveyRequestBuilder
    implements Builder<SubmitSurveyRequest, SubmitSurveyRequestBuilder> {
  _$SubmitSurveyRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  SubmitSurveyRequestEnvironmentEnum? _environment;
  SubmitSurveyRequestEnvironmentEnum? get environment => _$this._environment;
  set environment(SubmitSurveyRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  SubmitSurveyRequestPlatformEnum? _platform;
  SubmitSurveyRequestPlatformEnum? get platform => _$this._platform;
  set platform(SubmitSurveyRequestPlatformEnum? platform) =>
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

  String? _surveyId;
  String? get surveyId => _$this._surveyId;
  set surveyId(String? surveyId) => _$this._surveyId = surveyId;

  String? _surveyVersion;
  String? get surveyVersion => _$this._surveyVersion;
  set surveyVersion(String? surveyVersion) =>
      _$this._surveyVersion = surveyVersion;

  String? _surveyName;
  String? get surveyName => _$this._surveyName;
  set surveyName(String? surveyName) => _$this._surveyName = surveyName;

  String? _submissionId;
  String? get submissionId => _$this._submissionId;
  set submissionId(String? submissionId) => _$this._submissionId = submissionId;

  SubmitSurveyRequestStatusEnum? _status;
  SubmitSurveyRequestStatusEnum? get status => _$this._status;
  set status(SubmitSurveyRequestStatusEnum? status) => _$this._status = status;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  DateTime? _occurredAt;
  DateTime? get occurredAt => _$this._occurredAt;
  set occurredAt(DateTime? occurredAt) => _$this._occurredAt = occurredAt;

  ListBuilder<SurveyResponseAnswer>? _responses;
  ListBuilder<SurveyResponseAnswer> get responses =>
      _$this._responses ??= ListBuilder<SurveyResponseAnswer>();
  set responses(ListBuilder<SurveyResponseAnswer>? responses) =>
      _$this._responses = responses;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  SubmitSurveyRequestBuilder() {
    SubmitSurveyRequest._defaults(this);
  }

  SubmitSurveyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _platform = $v.platform;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _deviceId = $v.deviceId;
      _surveyId = $v.surveyId;
      _surveyVersion = $v.surveyVersion;
      _surveyName = $v.surveyName;
      _submissionId = $v.submissionId;
      _status = $v.status;
      _appVersion = $v.appVersion;
      _locale = $v.locale;
      _country = $v.country;
      _occurredAt = $v.occurredAt;
      _responses = $v.responses?.toBuilder();
      _properties = $v.properties?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitSurveyRequest other) {
    _$v = other as _$SubmitSurveyRequest;
  }

  @override
  void update(void Function(SubmitSurveyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitSurveyRequest build() => _build();

  _$SubmitSurveyRequest _build() {
    _$SubmitSurveyRequest _$result;
    try {
      _$result =
          _$v ??
          _$SubmitSurveyRequest._(
            app: app,
            environment: environment,
            platform: platform,
            userId: userId,
            anonymousId: anonymousId,
            deviceId: deviceId,
            surveyId: BuiltValueNullFieldError.checkNotNull(
              surveyId,
              r'SubmitSurveyRequest',
              'surveyId',
            ),
            surveyVersion: surveyVersion,
            surveyName: surveyName,
            submissionId: submissionId,
            status: status,
            appVersion: appVersion,
            locale: locale,
            country: country,
            occurredAt: occurredAt,
            responses: _responses?.build(),
            properties: _properties?.build(),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responses';
        _responses?.build();
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SubmitSurveyRequest',
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
