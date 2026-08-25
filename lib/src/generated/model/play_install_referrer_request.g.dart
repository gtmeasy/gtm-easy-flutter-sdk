// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_install_referrer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlayInstallReferrerRequestEnvironmentEnum
_$playInstallReferrerRequestEnvironmentEnum_production =
    const PlayInstallReferrerRequestEnvironmentEnum._('production');
const PlayInstallReferrerRequestEnvironmentEnum
_$playInstallReferrerRequestEnvironmentEnum_staging =
    const PlayInstallReferrerRequestEnvironmentEnum._('staging');
const PlayInstallReferrerRequestEnvironmentEnum
_$playInstallReferrerRequestEnvironmentEnum_development =
    const PlayInstallReferrerRequestEnvironmentEnum._('development');

PlayInstallReferrerRequestEnvironmentEnum
_$playInstallReferrerRequestEnvironmentEnumValueOf(String name) {
  switch (name) {
    case 'production':
      return _$playInstallReferrerRequestEnvironmentEnum_production;
    case 'staging':
      return _$playInstallReferrerRequestEnvironmentEnum_staging;
    case 'development':
      return _$playInstallReferrerRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlayInstallReferrerRequestEnvironmentEnum>
_$playInstallReferrerRequestEnvironmentEnumValues =
    BuiltSet<PlayInstallReferrerRequestEnvironmentEnum>(
      const <PlayInstallReferrerRequestEnvironmentEnum>[
        _$playInstallReferrerRequestEnvironmentEnum_production,
        _$playInstallReferrerRequestEnvironmentEnum_staging,
        _$playInstallReferrerRequestEnvironmentEnum_development,
      ],
    );

const PlayInstallReferrerRequestPlatformEnum
_$playInstallReferrerRequestPlatformEnum_android =
    const PlayInstallReferrerRequestPlatformEnum._('android');

PlayInstallReferrerRequestPlatformEnum
_$playInstallReferrerRequestPlatformEnumValueOf(String name) {
  switch (name) {
    case 'android':
      return _$playInstallReferrerRequestPlatformEnum_android;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlayInstallReferrerRequestPlatformEnum>
_$playInstallReferrerRequestPlatformEnumValues =
    BuiltSet<PlayInstallReferrerRequestPlatformEnum>(
      const <PlayInstallReferrerRequestPlatformEnum>[
        _$playInstallReferrerRequestPlatformEnum_android,
      ],
    );

Serializer<PlayInstallReferrerRequestEnvironmentEnum>
_$playInstallReferrerRequestEnvironmentEnumSerializer =
    _$PlayInstallReferrerRequestEnvironmentEnumSerializer();
Serializer<PlayInstallReferrerRequestPlatformEnum>
_$playInstallReferrerRequestPlatformEnumSerializer =
    _$PlayInstallReferrerRequestPlatformEnumSerializer();

class _$PlayInstallReferrerRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<PlayInstallReferrerRequestEnvironmentEnum> {
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
    PlayInstallReferrerRequestEnvironmentEnum,
  ];
  @override
  final String wireName = 'PlayInstallReferrerRequestEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    PlayInstallReferrerRequestEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PlayInstallReferrerRequestEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PlayInstallReferrerRequestEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PlayInstallReferrerRequestPlatformEnumSerializer
    implements PrimitiveSerializer<PlayInstallReferrerRequestPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'android': 'android',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'android': 'android',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PlayInstallReferrerRequestPlatformEnum,
  ];
  @override
  final String wireName = 'PlayInstallReferrerRequestPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    PlayInstallReferrerRequestPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PlayInstallReferrerRequestPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PlayInstallReferrerRequestPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PlayInstallReferrerRequest extends PlayInstallReferrerRequest {
  @override
  final String app;
  @override
  final PlayInstallReferrerRequestEnvironmentEnum? environment;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final PlayInstallReferrerRequestPlatformEnum? platform;
  @override
  final String? source_;
  @override
  final DateTime? occurredAt;
  @override
  final String playInstallReferrer;
  @override
  final BuiltMap<String, JsonObject?>? properties;

  factory _$PlayInstallReferrerRequest([
    void Function(PlayInstallReferrerRequestBuilder)? updates,
  ]) => (PlayInstallReferrerRequestBuilder()..update(updates))._build();

  _$PlayInstallReferrerRequest._({
    required this.app,
    this.environment,
    this.userId,
    this.anonymousId,
    this.platform,
    this.source_,
    this.occurredAt,
    required this.playInstallReferrer,
    this.properties,
  }) : super._();
  @override
  PlayInstallReferrerRequest rebuild(
    void Function(PlayInstallReferrerRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlayInstallReferrerRequestBuilder toBuilder() =>
      PlayInstallReferrerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayInstallReferrerRequest &&
        app == other.app &&
        environment == other.environment &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        platform == other.platform &&
        source_ == other.source_ &&
        occurredAt == other.occurredAt &&
        playInstallReferrer == other.playInstallReferrer &&
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
    _$hash = $jc(_$hash, playInstallReferrer.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayInstallReferrerRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('platform', platform)
          ..add('source_', source_)
          ..add('occurredAt', occurredAt)
          ..add('playInstallReferrer', playInstallReferrer)
          ..add('properties', properties))
        .toString();
  }
}

class PlayInstallReferrerRequestBuilder
    implements
        Builder<PlayInstallReferrerRequest, PlayInstallReferrerRequestBuilder> {
  _$PlayInstallReferrerRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  PlayInstallReferrerRequestEnvironmentEnum? _environment;
  PlayInstallReferrerRequestEnvironmentEnum? get environment =>
      _$this._environment;
  set environment(PlayInstallReferrerRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _anonymousId;
  String? get anonymousId => _$this._anonymousId;
  set anonymousId(String? anonymousId) => _$this._anonymousId = anonymousId;

  PlayInstallReferrerRequestPlatformEnum? _platform;
  PlayInstallReferrerRequestPlatformEnum? get platform => _$this._platform;
  set platform(PlayInstallReferrerRequestPlatformEnum? platform) =>
      _$this._platform = platform;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  DateTime? _occurredAt;
  DateTime? get occurredAt => _$this._occurredAt;
  set occurredAt(DateTime? occurredAt) => _$this._occurredAt = occurredAt;

  String? _playInstallReferrer;
  String? get playInstallReferrer => _$this._playInstallReferrer;
  set playInstallReferrer(String? playInstallReferrer) =>
      _$this._playInstallReferrer = playInstallReferrer;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  PlayInstallReferrerRequestBuilder() {
    PlayInstallReferrerRequest._defaults(this);
  }

  PlayInstallReferrerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _platform = $v.platform;
      _source_ = $v.source_;
      _occurredAt = $v.occurredAt;
      _playInstallReferrer = $v.playInstallReferrer;
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayInstallReferrerRequest other) {
    _$v = other as _$PlayInstallReferrerRequest;
  }

  @override
  void update(void Function(PlayInstallReferrerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayInstallReferrerRequest build() => _build();

  _$PlayInstallReferrerRequest _build() {
    _$PlayInstallReferrerRequest _$result;
    try {
      _$result =
          _$v ??
          _$PlayInstallReferrerRequest._(
            app: BuiltValueNullFieldError.checkNotNull(
              app,
              r'PlayInstallReferrerRequest',
              'app',
            ),
            environment: environment,
            userId: userId,
            anonymousId: anonymousId,
            platform: platform,
            source_: source_,
            occurredAt: occurredAt,
            playInstallReferrer: BuiltValueNullFieldError.checkNotNull(
              playInstallReferrer,
              r'PlayInstallReferrerRequest',
              'playInstallReferrer',
            ),
            properties: _properties?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlayInstallReferrerRequest',
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
