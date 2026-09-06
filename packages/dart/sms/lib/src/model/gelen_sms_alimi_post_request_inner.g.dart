// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gelen_sms_alimi_post_request_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GelenSMSAlimiPostRequestInner extends GelenSMSAlimiPostRequestInner {
  @override
  final int? messageId;
  @override
  final String? type;
  @override
  final String? createdAt;
  @override
  final String? network;
  @override
  final String? sourceAddr;
  @override
  final String? destinationAddr;
  @override
  final String? keyword;
  @override
  final String? content;
  @override
  final String? receivedAt;

  factory _$GelenSMSAlimiPostRequestInner(
          [void Function(GelenSMSAlimiPostRequestInnerBuilder)? updates]) =>
      (GelenSMSAlimiPostRequestInnerBuilder()..update(updates))._build();

  _$GelenSMSAlimiPostRequestInner._(
      {this.messageId,
      this.type,
      this.createdAt,
      this.network,
      this.sourceAddr,
      this.destinationAddr,
      this.keyword,
      this.content,
      this.receivedAt})
      : super._();
  @override
  GelenSMSAlimiPostRequestInner rebuild(
          void Function(GelenSMSAlimiPostRequestInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GelenSMSAlimiPostRequestInnerBuilder toBuilder() =>
      GelenSMSAlimiPostRequestInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GelenSMSAlimiPostRequestInner &&
        messageId == other.messageId &&
        type == other.type &&
        createdAt == other.createdAt &&
        network == other.network &&
        sourceAddr == other.sourceAddr &&
        destinationAddr == other.destinationAddr &&
        keyword == other.keyword &&
        content == other.content &&
        receivedAt == other.receivedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, messageId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jc(_$hash, sourceAddr.hashCode);
    _$hash = $jc(_$hash, destinationAddr.hashCode);
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, receivedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GelenSMSAlimiPostRequestInner')
          ..add('messageId', messageId)
          ..add('type', type)
          ..add('createdAt', createdAt)
          ..add('network', network)
          ..add('sourceAddr', sourceAddr)
          ..add('destinationAddr', destinationAddr)
          ..add('keyword', keyword)
          ..add('content', content)
          ..add('receivedAt', receivedAt))
        .toString();
  }
}

class GelenSMSAlimiPostRequestInnerBuilder
    implements
        Builder<GelenSMSAlimiPostRequestInner,
            GelenSMSAlimiPostRequestInnerBuilder> {
  _$GelenSMSAlimiPostRequestInner? _$v;

  int? _messageId;
  int? get messageId => _$this._messageId;
  set messageId(int? messageId) => _$this._messageId = messageId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _network;
  String? get network => _$this._network;
  set network(String? network) => _$this._network = network;

  String? _sourceAddr;
  String? get sourceAddr => _$this._sourceAddr;
  set sourceAddr(String? sourceAddr) => _$this._sourceAddr = sourceAddr;

  String? _destinationAddr;
  String? get destinationAddr => _$this._destinationAddr;
  set destinationAddr(String? destinationAddr) =>
      _$this._destinationAddr = destinationAddr;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _receivedAt;
  String? get receivedAt => _$this._receivedAt;
  set receivedAt(String? receivedAt) => _$this._receivedAt = receivedAt;

  GelenSMSAlimiPostRequestInnerBuilder() {
    GelenSMSAlimiPostRequestInner._defaults(this);
  }

  GelenSMSAlimiPostRequestInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageId = $v.messageId;
      _type = $v.type;
      _createdAt = $v.createdAt;
      _network = $v.network;
      _sourceAddr = $v.sourceAddr;
      _destinationAddr = $v.destinationAddr;
      _keyword = $v.keyword;
      _content = $v.content;
      _receivedAt = $v.receivedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GelenSMSAlimiPostRequestInner other) {
    _$v = other as _$GelenSMSAlimiPostRequestInner;
  }

  @override
  void update(void Function(GelenSMSAlimiPostRequestInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GelenSMSAlimiPostRequestInner build() => _build();

  _$GelenSMSAlimiPostRequestInner _build() {
    final _$result = _$v ??
        _$GelenSMSAlimiPostRequestInner._(
          messageId: messageId,
          type: type,
          createdAt: createdAt,
          network: network,
          sourceAddr: sourceAddr,
          destinationAddr: destinationAddr,
          keyword: keyword,
          content: content,
          receivedAt: receivedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
