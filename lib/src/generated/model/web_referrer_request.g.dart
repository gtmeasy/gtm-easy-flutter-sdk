// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_referrer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebReferrerRequestEnvironmentEnum
_$webReferrerRequestEnvironmentEnum_production =
    const WebReferrerRequestEnvironmentEnum._('production');
const WebReferrerRequestEnvironmentEnum
_$webReferrerRequestEnvironmentEnum_staging =
    const WebReferrerRequestEnvironmentEnum._('staging');
const WebReferrerRequestEnvironmentEnum
_$webReferrerRequestEnvironmentEnum_development =
    const WebReferrerRequestEnvironmentEnum._('development');

WebReferrerRequestEnvironmentEnum _$webReferrerRequestEnvironmentEnumValueOf(
  String name,
) {
  switch (name) {
    case 'production':
      return _$webReferrerRequestEnvironmentEnum_production;
    case 'staging':
      return _$webReferrerRequestEnvironmentEnum_staging;
    case 'development':
      return _$webReferrerRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebReferrerRequestEnvironmentEnum>
_$webReferrerRequestEnvironmentEnumValues =
    BuiltSet<WebReferrerRequestEnvironmentEnum>(
      const <WebReferrerRequestEnvironmentEnum>[
        _$webReferrerRequestEnvironmentEnum_production,
        _$webReferrerRequestEnvironmentEnum_staging,
        _$webReferrerRequestEnvironmentEnum_development,
      ],
    );

const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_ios =
    const WebReferrerRequestPlatformEnum._('ios');
const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_android =
    const WebReferrerRequestPlatformEnum._('android');
const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_web =
    const WebReferrerRequestPlatformEnum._('web');
const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_macos =
    const WebReferrerRequestPlatformEnum._('macos');
const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_windows =
    const WebReferrerRequestPlatformEnum._('windows');
const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_linux =
    const WebReferrerRequestPlatformEnum._('linux');
const WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnum_server =
    const WebReferrerRequestPlatformEnum._('server');

WebReferrerRequestPlatformEnum _$webReferrerRequestPlatformEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ios':
      return _$webReferrerRequestPlatformEnum_ios;
    case 'android':
      return _$webReferrerRequestPlatformEnum_android;
    case 'web':
      return _$webReferrerRequestPlatformEnum_web;
    case 'macos':
      return _$webReferrerRequestPlatformEnum_macos;
    case 'windows':
      return _$webReferrerRequestPlatformEnum_windows;
    case 'linux':
      return _$webReferrerRequestPlatformEnum_linux;
    case 'server':
      return _$webReferrerRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebReferrerRequestPlatformEnum>
_$webReferrerRequestPlatformEnumValues =
    BuiltSet<WebReferrerRequestPlatformEnum>(
      const <WebReferrerRequestPlatformEnum>[
        _$webReferrerRequestPlatformEnum_ios,
        _$webReferrerRequestPlatformEnum_android,
        _$webReferrerRequestPlatformEnum_web,
        _$webReferrerRequestPlatformEnum_macos,
        _$webReferrerRequestPlatformEnum_windows,
        _$webReferrerRequestPlatformEnum_linux,
        _$webReferrerRequestPlatformEnum_server,
      ],
    );

Serializer<WebReferrerRequestEnvironmentEnum>
_$webReferrerRequestEnvironmentEnumSerializer =
    _$WebReferrerRequestEnvironmentEnumSerializer();
Serializer<WebReferrerRequestPlatformEnum>
_$webReferrerRequestPlatformEnumSerializer =
    _$WebReferrerRequestPlatformEnumSerializer();

class _$WebReferrerRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<WebReferrerRequestEnvironmentEnum> {
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
  final Iterable<Type> types = const <Type>[WebReferrerRequestEnvironmentEnum];
  @override
  final String wireName = 'WebReferrerRequestEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    WebReferrerRequestEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WebReferrerRequestEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WebReferrerRequestEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WebReferrerRequestPlatformEnumSerializer
    implements PrimitiveSerializer<WebReferrerRequestPlatformEnum> {
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
  final Iterable<Type> types = const <Type>[WebReferrerRequestPlatformEnum];
  @override
  final String wireName = 'WebReferrerRequestPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    WebReferrerRequestPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WebReferrerRequestPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WebReferrerRequestPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WebReferrerRequest extends WebReferrerRequest {
  @override
  final String app;
  @override
  final WebReferrerRequestEnvironmentEnum? environment;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final WebReferrerRequestPlatformEnum? platform;
  @override
  final String? source_;
  @override
  final DateTime? occurredAt;
  @override
  final String webReferrer;
  @override
  final String? clickId;
  @override
  final BuiltMap<String, JsonObject?>? properties;

  factory _$WebReferrerRequest([
    void Function(WebReferrerRequestBuilder)? updates,
  ]) => (WebReferrerRequestBuilder()..update(updates))._build();

  _$WebReferrerRequest._({
    required this.app,
    this.environment,
    this.userId,
    this.anonymousId,
    this.platform,
    this.source_,
    this.occurredAt,
    required this.webReferrer,
    this.clickId,
    this.properties,
  }) : super._();
  @override
  WebReferrerRequest rebuild(
    void Function(WebReferrerRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebReferrerRequestBuilder toBuilder() =>
      WebReferrerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebReferrerRequest &&
        app == other.app &&
        environment == other.environment &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        platform == other.platform &&
        source_ == other.source_ &&
        occurredAt == other.occurredAt &&
        webReferrer == other.webReferrer &&
        clickId == other.clickId &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, anonymousId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, occurredAt.hashCode);
    _$hash = $jc(_$hash, webReferrer.hashCode);
    _$hash = $jc(_$hash, clickId.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebReferrerRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('platform', platform)
          ..add('source_', source_)
          ..add('occurredAt', occurredAt)
          ..add('webReferrer', webReferrer)
          ..add('clickId', clickId)
          ..add('properties', properties))
        .toString();
  }
}

class WebReferrerRequestBuilder
    implements Builder<WebReferrerRequest, WebReferrerRequestBuilder> {
  _$WebReferrerRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  WebReferrerRequestEnvironmentEnum? _environment;
  WebReferrerRequestEnvironmentEnum? get environment => _$this._environment;
  set environment(WebReferrerRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _anonymousId;
  String? get anonymousId => _$this._anonymousId;
  set anonymousId(String? anonymousId) => _$this._anonymousId = anonymousId;

  WebReferrerRequestPlatformEnum? _platform;
  WebReferrerRequestPlatformEnum? get platform => _$this._platform;
  set platform(WebReferrerRequestPlatformEnum? platform) =>
      _$this._platform = platform;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  DateTime? _occurredAt;
  DateTime? get occurredAt => _$this._occurredAt;
  set occurredAt(DateTime? occurredAt) => _$this._occurredAt = occurredAt;

  String? _webReferrer;
  String? get webReferrer => _$this._webReferrer;
  set webReferrer(String? webReferrer) => _$this._webReferrer = webReferrer;

  String? _clickId;
  String? get clickId => _$this._clickId;
  set clickId(String? clickId) => _$this._clickId = clickId;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  WebReferrerRequestBuilder() {
    WebReferrerRequest._defaults(this);
  }

  WebReferrerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _platform = $v.platform;
      _source_ = $v.source_;
      _occurredAt = $v.occurredAt;
      _webReferrer = $v.webReferrer;
      _clickId = $v.clickId;
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebReferrerRequest other) {
    _$v = other as _$WebReferrerRequest;
  }

  @override
  void update(void Function(WebReferrerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebReferrerRequest build() => _build();

  _$WebReferrerRequest _build() {
    _$WebReferrerRequest _$result;
    try {
      _$result =
          _$v ??
          _$WebReferrerRequest._(
            app: BuiltValueNullFieldError.checkNotNull(
              app,
              r'WebReferrerRequest',
              'app',
            ),
            environment: environment,
            userId: userId,
            anonymousId: anonymousId,
            platform: platform,
            source_: source_,
            occurredAt: occurredAt,
            webReferrer: BuiltValueNullFieldError.checkNotNull(
              webReferrer,
              r'WebReferrerRequest',
              'webReferrer',
            ),
            clickId: clickId,
            properties: _properties?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WebReferrerRequest',
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
