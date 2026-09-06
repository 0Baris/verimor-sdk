// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gonderim_raporu_alimi_post_request_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GonderimRaporuAlimiPostRequestInner
    extends GonderimRaporuAlimiPostRequestInner {
  @override
  final String? type;
  @override
  final int? campaignId;
  @override
  final String? campaignCustomId;
  @override
  final String? messageId;
  @override
  final String? messageCustomId;
  @override
  final String? dest;
  @override
  final int? size;
  @override
  final int? internationalMultiplier;
  @override
  final int? credits;
  @override
  final String? status;
  @override
  final String? gsmError;
  @override
  final String? sentAt;
  @override
  final String? doneAt;

  factory _$GonderimRaporuAlimiPostRequestInner(
          [void Function(GonderimRaporuAlimiPostRequestInnerBuilder)?
              updates]) =>
      (GonderimRaporuAlimiPostRequestInnerBuilder()..update(updates))._build();

  _$GonderimRaporuAlimiPostRequestInner._(
      {this.type,
      this.campaignId,
      this.campaignCustomId,
      this.messageId,
      this.messageCustomId,
      this.dest,
      this.size,
      this.internationalMultiplier,
      this.credits,
      this.status,
      this.gsmError,
      this.sentAt,
      this.doneAt})
      : super._();
  @override
  GonderimRaporuAlimiPostRequestInner rebuild(
          void Function(GonderimRaporuAlimiPostRequestInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GonderimRaporuAlimiPostRequestInnerBuilder toBuilder() =>
      GonderimRaporuAlimiPostRequestInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GonderimRaporuAlimiPostRequestInner &&
        type == other.type &&
        campaignId == other.campaignId &&
        campaignCustomId == other.campaignCustomId &&
        messageId == other.messageId &&
        messageCustomId == other.messageCustomId &&
        dest == other.dest &&
        size == other.size &&
        internationalMultiplier == other.internationalMultiplier &&
        credits == other.credits &&
        status == other.status &&
        gsmError == other.gsmError &&
        sentAt == other.sentAt &&
        doneAt == other.doneAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, campaignId.hashCode);
    _$hash = $jc(_$hash, campaignCustomId.hashCode);
    _$hash = $jc(_$hash, messageId.hashCode);
    _$hash = $jc(_$hash, messageCustomId.hashCode);
    _$hash = $jc(_$hash, dest.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, internationalMultiplier.hashCode);
    _$hash = $jc(_$hash, credits.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, gsmError.hashCode);
    _$hash = $jc(_$hash, sentAt.hashCode);
    _$hash = $jc(_$hash, doneAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GonderimRaporuAlimiPostRequestInner')
          ..add('type', type)
          ..add('campaignId', campaignId)
          ..add('campaignCustomId', campaignCustomId)
          ..add('messageId', messageId)
          ..add('messageCustomId', messageCustomId)
          ..add('dest', dest)
          ..add('size', size)
          ..add('internationalMultiplier', internationalMultiplier)
          ..add('credits', credits)
          ..add('status', status)
          ..add('gsmError', gsmError)
          ..add('sentAt', sentAt)
          ..add('doneAt', doneAt))
        .toString();
  }
}

class GonderimRaporuAlimiPostRequestInnerBuilder
    implements
        Builder<GonderimRaporuAlimiPostRequestInner,
            GonderimRaporuAlimiPostRequestInnerBuilder> {
  _$GonderimRaporuAlimiPostRequestInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _campaignId;
  int? get campaignId => _$this._campaignId;
  set campaignId(int? campaignId) => _$this._campaignId = campaignId;

  String? _campaignCustomId;
  String? get campaignCustomId => _$this._campaignCustomId;
  set campaignCustomId(String? campaignCustomId) =>
      _$this._campaignCustomId = campaignCustomId;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  String? _messageCustomId;
  String? get messageCustomId => _$this._messageCustomId;
  set messageCustomId(String? messageCustomId) =>
      _$this._messageCustomId = messageCustomId;

  String? _dest;
  String? get dest => _$this._dest;
  set dest(String? dest) => _$this._dest = dest;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  int? _internationalMultiplier;
  int? get internationalMultiplier => _$this._internationalMultiplier;
  set internationalMultiplier(int? internationalMultiplier) =>
      _$this._internationalMultiplier = internationalMultiplier;

  int? _credits;
  int? get credits => _$this._credits;
  set credits(int? credits) => _$this._credits = credits;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _gsmError;
  String? get gsmError => _$this._gsmError;
  set gsmError(String? gsmError) => _$this._gsmError = gsmError;

  String? _sentAt;
  String? get sentAt => _$this._sentAt;
  set sentAt(String? sentAt) => _$this._sentAt = sentAt;

  String? _doneAt;
  String? get doneAt => _$this._doneAt;
  set doneAt(String? doneAt) => _$this._doneAt = doneAt;

  GonderimRaporuAlimiPostRequestInnerBuilder() {
    GonderimRaporuAlimiPostRequestInner._defaults(this);
  }

  GonderimRaporuAlimiPostRequestInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _campaignId = $v.campaignId;
      _campaignCustomId = $v.campaignCustomId;
      _messageId = $v.messageId;
      _messageCustomId = $v.messageCustomId;
      _dest = $v.dest;
      _size = $v.size;
      _internationalMultiplier = $v.internationalMultiplier;
      _credits = $v.credits;
      _status = $v.status;
      _gsmError = $v.gsmError;
      _sentAt = $v.sentAt;
      _doneAt = $v.doneAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GonderimRaporuAlimiPostRequestInner other) {
    _$v = other as _$GonderimRaporuAlimiPostRequestInner;
  }

  @override
  void update(
      void Function(GonderimRaporuAlimiPostRequestInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GonderimRaporuAlimiPostRequestInner build() => _build();

  _$GonderimRaporuAlimiPostRequestInner _build() {
    final _$result = _$v ??
        _$GonderimRaporuAlimiPostRequestInner._(
          type: type,
          campaignId: campaignId,
          campaignCustomId: campaignCustomId,
          messageId: messageId,
          messageCustomId: messageCustomId,
          dest: dest,
          size: size,
          internationalMultiplier: internationalMultiplier,
          credits: credits,
          status: status,
          gsmError: gsmError,
          sentAt: sentAt,
          doneAt: doneAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
