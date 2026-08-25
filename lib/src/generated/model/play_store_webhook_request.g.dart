// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_store_webhook_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlayStoreWebhookRequest extends PlayStoreWebhookRequest {
  @override
  final PlayStoreWebhookRequestMessage message;
  @override
  final String? subscription;

  factory _$PlayStoreWebhookRequest(
          [void Function(PlayStoreWebhookRequestBuilder)? updates]) =>
      (PlayStoreWebhookRequestBuilder()..update(updates))._build();

  _$PlayStoreWebhookRequest._({required this.message, this.subscription})
      : super._();
  @override
  PlayStoreWebhookRequest rebuild(
          void Function(PlayStoreWebhookRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayStoreWebhookRequestBuilder toBuilder() =>
      PlayStoreWebhookRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayStoreWebhookRequest &&
        message == other.message &&
        subscription == other.subscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, subscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayStoreWebhookRequest')
          ..add('message', message)
          ..add('subscription', subscription))
        .toString();
  }
}

class PlayStoreWebhookRequestBuilder
    implements
        Builder<PlayStoreWebhookRequest, PlayStoreWebhookRequestBuilder> {
  _$PlayStoreWebhookRequest? _$v;

  PlayStoreWebhookRequestMessageBuilder? _message;
  PlayStoreWebhookRequestMessageBuilder get message =>
      _$this._message ??= PlayStoreWebhookRequestMessageBuilder();
  set message(PlayStoreWebhookRequestMessageBuilder? message) =>
      _$this._message = message;

  String? _subscription;
  String? get subscription => _$this._subscription;
  set subscription(String? subscription) => _$this._subscription = subscription;

  PlayStoreWebhookRequestBuilder() {
    PlayStoreWebhookRequest._defaults(this);
  }

  PlayStoreWebhookRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message.toBuilder();
      _subscription = $v.subscription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayStoreWebhookRequest other) {
    _$v = other as _$PlayStoreWebhookRequest;
  }

  @override
  void update(void Function(PlayStoreWebhookRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayStoreWebhookRequest build() => _build();

  _$PlayStoreWebhookRequest _build() {
    _$PlayStoreWebhookRequest _$result;
    try {
      _$result = _$v ??
          _$PlayStoreWebhookRequest._(
            message: message.build(),
            subscription: subscription,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        message.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlayStoreWebhookRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
