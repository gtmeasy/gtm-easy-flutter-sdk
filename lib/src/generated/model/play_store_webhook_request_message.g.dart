// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_store_webhook_request_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlayStoreWebhookRequestMessage extends PlayStoreWebhookRequestMessage {
  @override
  final String data;
  @override
  final BuiltMap<String, String>? attributes;
  @override
  final String? messageId;
  @override
  final String? publishTime;

  factory _$PlayStoreWebhookRequestMessage(
          [void Function(PlayStoreWebhookRequestMessageBuilder)? updates]) =>
      (PlayStoreWebhookRequestMessageBuilder()..update(updates))._build();

  _$PlayStoreWebhookRequestMessage._(
      {required this.data, this.attributes, this.messageId, this.publishTime})
      : super._();
  @override
  PlayStoreWebhookRequestMessage rebuild(
          void Function(PlayStoreWebhookRequestMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayStoreWebhookRequestMessageBuilder toBuilder() =>
      PlayStoreWebhookRequestMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayStoreWebhookRequestMessage &&
        data == other.data &&
        attributes == other.attributes &&
        messageId == other.messageId &&
        publishTime == other.publishTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, messageId.hashCode);
    _$hash = $jc(_$hash, publishTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayStoreWebhookRequestMessage')
          ..add('data', data)
          ..add('attributes', attributes)
          ..add('messageId', messageId)
          ..add('publishTime', publishTime))
        .toString();
  }
}

class PlayStoreWebhookRequestMessageBuilder
    implements
        Builder<PlayStoreWebhookRequestMessage,
            PlayStoreWebhookRequestMessageBuilder> {
  _$PlayStoreWebhookRequestMessage? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  MapBuilder<String, String>? _attributes;
  MapBuilder<String, String> get attributes =>
      _$this._attributes ??= MapBuilder<String, String>();
  set attributes(MapBuilder<String, String>? attributes) =>
      _$this._attributes = attributes;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  String? _publishTime;
  String? get publishTime => _$this._publishTime;
  set publishTime(String? publishTime) => _$this._publishTime = publishTime;

  PlayStoreWebhookRequestMessageBuilder() {
    PlayStoreWebhookRequestMessage._defaults(this);
  }

  PlayStoreWebhookRequestMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _attributes = $v.attributes?.toBuilder();
      _messageId = $v.messageId;
      _publishTime = $v.publishTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayStoreWebhookRequestMessage other) {
    _$v = other as _$PlayStoreWebhookRequestMessage;
  }

  @override
  void update(void Function(PlayStoreWebhookRequestMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayStoreWebhookRequestMessage build() => _build();

  _$PlayStoreWebhookRequestMessage _build() {
    _$PlayStoreWebhookRequestMessage _$result;
    try {
      _$result = _$v ??
          _$PlayStoreWebhookRequestMessage._(
            data: BuiltValueNullFieldError.checkNotNull(
                data, r'PlayStoreWebhookRequestMessage', 'data'),
            attributes: _attributes?.build(),
            messageId: messageId,
            publishTime: publishTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlayStoreWebhookRequestMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
