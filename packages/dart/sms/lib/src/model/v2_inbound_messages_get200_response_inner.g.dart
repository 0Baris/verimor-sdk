// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_inbound_messages_get200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2InboundMessagesGet200ResponseInner
    extends V2InboundMessagesGet200ResponseInner {
  @override
  final int? messageId;
  @override
  final DateTime? createdAt;
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
  final DateTime? receivedAt;

  factory _$V2InboundMessagesGet200ResponseInner(
          [void Function(V2InboundMessagesGet200ResponseInnerBuilder)?
              updates]) =>
      (V2InboundMessagesGet200ResponseInnerBuilder()..update(updates))._build();

  _$V2InboundMessagesGet200ResponseInner._(
      {this.messageId,
      this.createdAt,
      this.network,
      this.sourceAddr,
      this.destinationAddr,
      this.keyword,
      this.content,
      this.receivedAt})
      : super._();
  @override
  V2InboundMessagesGet200ResponseInner rebuild(
          void Function(V2InboundMessagesGet200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2InboundMessagesGet200ResponseInnerBuilder toBuilder() =>
      V2InboundMessagesGet200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2InboundMessagesGet200ResponseInner &&
        messageId == other.messageId &&
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
    return (newBuiltValueToStringHelper(r'V2InboundMessagesGet200ResponseInner')
          ..add('messageId', messageId)
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

class V2InboundMessagesGet200ResponseInnerBuilder
    implements
        Builder<V2InboundMessagesGet200ResponseInner,
            V2InboundMessagesGet200ResponseInnerBuilder> {
  _$V2InboundMessagesGet200ResponseInner? _$v;

  int? _messageId;
  int? get messageId => _$this._messageId;
  set messageId(int? messageId) => _$this._messageId = messageId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

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

  DateTime? _receivedAt;
  DateTime? get receivedAt => _$this._receivedAt;
  set receivedAt(DateTime? receivedAt) => _$this._receivedAt = receivedAt;

  V2InboundMessagesGet200ResponseInnerBuilder() {
    V2InboundMessagesGet200ResponseInner._defaults(this);
  }

  V2InboundMessagesGet200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageId = $v.messageId;
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
  void replace(V2InboundMessagesGet200ResponseInner other) {
    _$v = other as _$V2InboundMessagesGet200ResponseInner;
  }

  @override
  void update(
      void Function(V2InboundMessagesGet200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2InboundMessagesGet200ResponseInner build() => _build();

  _$V2InboundMessagesGet200ResponseInner _build() {
    final _$result = _$v ??
        _$V2InboundMessagesGet200ResponseInner._(
          messageId: messageId,
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
