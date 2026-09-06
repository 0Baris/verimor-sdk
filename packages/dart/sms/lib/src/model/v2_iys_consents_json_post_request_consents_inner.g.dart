// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_iys_consents_json_post_request_consents_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2IysConsentsJsonPostRequestConsentsInner
    extends V2IysConsentsJsonPostRequestConsentsInner {
  @override
  final String type;
  @override
  final String source_;
  @override
  final String status;
  @override
  final String recipientType;
  @override
  final DateTime consentDate;
  @override
  final String recipient;

  factory _$V2IysConsentsJsonPostRequestConsentsInner(
          [void Function(V2IysConsentsJsonPostRequestConsentsInnerBuilder)?
              updates]) =>
      (V2IysConsentsJsonPostRequestConsentsInnerBuilder()..update(updates))
          ._build();

  _$V2IysConsentsJsonPostRequestConsentsInner._(
      {required this.type,
      required this.source_,
      required this.status,
      required this.recipientType,
      required this.consentDate,
      required this.recipient})
      : super._();
  @override
  V2IysConsentsJsonPostRequestConsentsInner rebuild(
          void Function(V2IysConsentsJsonPostRequestConsentsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2IysConsentsJsonPostRequestConsentsInnerBuilder toBuilder() =>
      V2IysConsentsJsonPostRequestConsentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2IysConsentsJsonPostRequestConsentsInner &&
        type == other.type &&
        source_ == other.source_ &&
        status == other.status &&
        recipientType == other.recipientType &&
        consentDate == other.consentDate &&
        recipient == other.recipient;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, recipientType.hashCode);
    _$hash = $jc(_$hash, consentDate.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2IysConsentsJsonPostRequestConsentsInner')
          ..add('type', type)
          ..add('source_', source_)
          ..add('status', status)
          ..add('recipientType', recipientType)
          ..add('consentDate', consentDate)
          ..add('recipient', recipient))
        .toString();
  }
}

class V2IysConsentsJsonPostRequestConsentsInnerBuilder
    implements
        Builder<V2IysConsentsJsonPostRequestConsentsInner,
            V2IysConsentsJsonPostRequestConsentsInnerBuilder> {
  _$V2IysConsentsJsonPostRequestConsentsInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _recipientType;
  String? get recipientType => _$this._recipientType;
  set recipientType(String? recipientType) =>
      _$this._recipientType = recipientType;

  DateTime? _consentDate;
  DateTime? get consentDate => _$this._consentDate;
  set consentDate(DateTime? consentDate) => _$this._consentDate = consentDate;

  String? _recipient;
  String? get recipient => _$this._recipient;
  set recipient(String? recipient) => _$this._recipient = recipient;

  V2IysConsentsJsonPostRequestConsentsInnerBuilder() {
    V2IysConsentsJsonPostRequestConsentsInner._defaults(this);
  }

  V2IysConsentsJsonPostRequestConsentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _source_ = $v.source_;
      _status = $v.status;
      _recipientType = $v.recipientType;
      _consentDate = $v.consentDate;
      _recipient = $v.recipient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2IysConsentsJsonPostRequestConsentsInner other) {
    _$v = other as _$V2IysConsentsJsonPostRequestConsentsInner;
  }

  @override
  void update(
      void Function(V2IysConsentsJsonPostRequestConsentsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  V2IysConsentsJsonPostRequestConsentsInner build() => _build();

  _$V2IysConsentsJsonPostRequestConsentsInner _build() {
    final _$result = _$v ??
        _$V2IysConsentsJsonPostRequestConsentsInner._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'V2IysConsentsJsonPostRequestConsentsInner', 'type'),
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'V2IysConsentsJsonPostRequestConsentsInner', 'source_'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'V2IysConsentsJsonPostRequestConsentsInner', 'status'),
          recipientType: BuiltValueNullFieldError.checkNotNull(recipientType,
              r'V2IysConsentsJsonPostRequestConsentsInner', 'recipientType'),
          consentDate: BuiltValueNullFieldError.checkNotNull(consentDate,
              r'V2IysConsentsJsonPostRequestConsentsInner', 'consentDate'),
          recipient: BuiltValueNullFieldError.checkNotNull(recipient,
              r'V2IysConsentsJsonPostRequestConsentsInner', 'recipient'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
