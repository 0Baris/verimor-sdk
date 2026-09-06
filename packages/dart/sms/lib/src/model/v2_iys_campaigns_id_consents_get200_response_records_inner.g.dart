// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_iys_campaigns_id_consents_get200_response_records_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner
    extends V2IysCampaignsIdConsentsGet200ResponseRecordsInner {
  @override
  final String? type;
  @override
  final String? source_;
  @override
  final String? recipient;
  @override
  final String? status;
  @override
  final DateTime? consentDate;
  @override
  final String? recipientType;
  @override
  final String? requestStatus;
  @override
  final String? requestError;

  factory _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner(
          [void Function(
                  V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder)?
              updates]) =>
      (V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder()
            ..update(updates))
          ._build();

  _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner._(
      {this.type,
      this.source_,
      this.recipient,
      this.status,
      this.consentDate,
      this.recipientType,
      this.requestStatus,
      this.requestError})
      : super._();
  @override
  V2IysCampaignsIdConsentsGet200ResponseRecordsInner rebuild(
          void Function(
                  V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder toBuilder() =>
      V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2IysCampaignsIdConsentsGet200ResponseRecordsInner &&
        type == other.type &&
        source_ == other.source_ &&
        recipient == other.recipient &&
        status == other.status &&
        consentDate == other.consentDate &&
        recipientType == other.recipientType &&
        requestStatus == other.requestStatus &&
        requestError == other.requestError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, consentDate.hashCode);
    _$hash = $jc(_$hash, recipientType.hashCode);
    _$hash = $jc(_$hash, requestStatus.hashCode);
    _$hash = $jc(_$hash, requestError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2IysCampaignsIdConsentsGet200ResponseRecordsInner')
          ..add('type', type)
          ..add('source_', source_)
          ..add('recipient', recipient)
          ..add('status', status)
          ..add('consentDate', consentDate)
          ..add('recipientType', recipientType)
          ..add('requestStatus', requestStatus)
          ..add('requestError', requestError))
        .toString();
  }
}

class V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder
    implements
        Builder<V2IysCampaignsIdConsentsGet200ResponseRecordsInner,
            V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder> {
  _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _recipient;
  String? get recipient => _$this._recipient;
  set recipient(String? recipient) => _$this._recipient = recipient;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _consentDate;
  DateTime? get consentDate => _$this._consentDate;
  set consentDate(DateTime? consentDate) => _$this._consentDate = consentDate;

  String? _recipientType;
  String? get recipientType => _$this._recipientType;
  set recipientType(String? recipientType) =>
      _$this._recipientType = recipientType;

  String? _requestStatus;
  String? get requestStatus => _$this._requestStatus;
  set requestStatus(String? requestStatus) =>
      _$this._requestStatus = requestStatus;

  String? _requestError;
  String? get requestError => _$this._requestError;
  set requestError(String? requestError) => _$this._requestError = requestError;

  V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder() {
    V2IysCampaignsIdConsentsGet200ResponseRecordsInner._defaults(this);
  }

  V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _source_ = $v.source_;
      _recipient = $v.recipient;
      _status = $v.status;
      _consentDate = $v.consentDate;
      _recipientType = $v.recipientType;
      _requestStatus = $v.requestStatus;
      _requestError = $v.requestError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2IysCampaignsIdConsentsGet200ResponseRecordsInner other) {
    _$v = other as _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner;
  }

  @override
  void update(
      void Function(V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  V2IysCampaignsIdConsentsGet200ResponseRecordsInner build() => _build();

  _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner _build() {
    final _$result = _$v ??
        _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner._(
          type: type,
          source_: source_,
          recipient: recipient,
          status: status,
          consentDate: consentDate,
          recipientType: recipientType,
          requestStatus: requestStatus,
          requestError: requestError,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
