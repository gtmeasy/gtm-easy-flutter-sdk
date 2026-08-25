// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store_webhook_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppStoreWebhookRequest extends AppStoreWebhookRequest {
  @override
  final String signedPayload;

  factory _$AppStoreWebhookRequest(
          [void Function(AppStoreWebhookRequestBuilder)? updates]) =>
      (AppStoreWebhookRequestBuilder()..update(updates))._build();

  _$AppStoreWebhookRequest._({required this.signedPayload}) : super._();
  @override
  AppStoreWebhookRequest rebuild(
          void Function(AppStoreWebhookRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStoreWebhookRequestBuilder toBuilder() =>
      AppStoreWebhookRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppStoreWebhookRequest &&
        signedPayload == other.signedPayload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signedPayload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppStoreWebhookRequest')
          ..add('signedPayload', signedPayload))
        .toString();
  }
}

class AppStoreWebhookRequestBuilder
    implements Builder<AppStoreWebhookRequest, AppStoreWebhookRequestBuilder> {
  _$AppStoreWebhookRequest? _$v;

  String? _signedPayload;
  String? get signedPayload => _$this._signedPayload;
  set signedPayload(String? signedPayload) =>
      _$this._signedPayload = signedPayload;

  AppStoreWebhookRequestBuilder() {
    AppStoreWebhookRequest._defaults(this);
  }

  AppStoreWebhookRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedPayload = $v.signedPayload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppStoreWebhookRequest other) {
    _$v = other as _$AppStoreWebhookRequest;
  }

  @override
  void update(void Function(AppStoreWebhookRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppStoreWebhookRequest build() => _build();

  _$AppStoreWebhookRequest _build() {
    final _$result = _$v ??
        _$AppStoreWebhookRequest._(
          signedPayload: BuiltValueNullFieldError.checkNotNull(
              signedPayload, r'AppStoreWebhookRequest', 'signedPayload'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
