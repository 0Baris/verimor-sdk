// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ivr_kampanya_rapor_alimi_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IVRKampanyaRaporAlimiPostRequest
    extends IVRKampanyaRaporAlimiPostRequest {
  @override
  final int? notificationId;
  @override
  final DateTime? notificationDate;
  @override
  final String? domainId;
  @override
  final int? ivrCampaignId;
  @override
  final String? ivrCampaignName;
  @override
  final int? ivrLeadId;
  @override
  final String? phone;
  @override
  final String? digit;
  @override
  final String? callUuid;
  @override
  final String? status;

  factory _$IVRKampanyaRaporAlimiPostRequest(
          [void Function(IVRKampanyaRaporAlimiPostRequestBuilder)? updates]) =>
      (IVRKampanyaRaporAlimiPostRequestBuilder()..update(updates))._build();

  _$IVRKampanyaRaporAlimiPostRequest._(
      {this.notificationId,
      this.notificationDate,
      this.domainId,
      this.ivrCampaignId,
      this.ivrCampaignName,
      this.ivrLeadId,
      this.phone,
      this.digit,
      this.callUuid,
      this.status})
      : super._();
  @override
  IVRKampanyaRaporAlimiPostRequest rebuild(
          void Function(IVRKampanyaRaporAlimiPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IVRKampanyaRaporAlimiPostRequestBuilder toBuilder() =>
      IVRKampanyaRaporAlimiPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IVRKampanyaRaporAlimiPostRequest &&
        notificationId == other.notificationId &&
        notificationDate == other.notificationDate &&
        domainId == other.domainId &&
        ivrCampaignId == other.ivrCampaignId &&
        ivrCampaignName == other.ivrCampaignName &&
        ivrLeadId == other.ivrLeadId &&
        phone == other.phone &&
        digit == other.digit &&
        callUuid == other.callUuid &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationId.hashCode);
    _$hash = $jc(_$hash, notificationDate.hashCode);
    _$hash = $jc(_$hash, domainId.hashCode);
    _$hash = $jc(_$hash, ivrCampaignId.hashCode);
    _$hash = $jc(_$hash, ivrCampaignName.hashCode);
    _$hash = $jc(_$hash, ivrLeadId.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, digit.hashCode);
    _$hash = $jc(_$hash, callUuid.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IVRKampanyaRaporAlimiPostRequest')
          ..add('notificationId', notificationId)
          ..add('notificationDate', notificationDate)
          ..add('domainId', domainId)
          ..add('ivrCampaignId', ivrCampaignId)
          ..add('ivrCampaignName', ivrCampaignName)
          ..add('ivrLeadId', ivrLeadId)
          ..add('phone', phone)
          ..add('digit', digit)
          ..add('callUuid', callUuid)
          ..add('status', status))
        .toString();
  }
}

class IVRKampanyaRaporAlimiPostRequestBuilder
    implements
        Builder<IVRKampanyaRaporAlimiPostRequest,
            IVRKampanyaRaporAlimiPostRequestBuilder> {
  _$IVRKampanyaRaporAlimiPostRequest? _$v;

  int? _notificationId;
  int? get notificationId => _$this._notificationId;
  set notificationId(int? notificationId) =>
      _$this._notificationId = notificationId;

  DateTime? _notificationDate;
  DateTime? get notificationDate => _$this._notificationDate;
  set notificationDate(DateTime? notificationDate) =>
      _$this._notificationDate = notificationDate;

  String? _domainId;
  String? get domainId => _$this._domainId;
  set domainId(String? domainId) => _$this._domainId = domainId;

  int? _ivrCampaignId;
  int? get ivrCampaignId => _$this._ivrCampaignId;
  set ivrCampaignId(int? ivrCampaignId) =>
      _$this._ivrCampaignId = ivrCampaignId;

  String? _ivrCampaignName;
  String? get ivrCampaignName => _$this._ivrCampaignName;
  set ivrCampaignName(String? ivrCampaignName) =>
      _$this._ivrCampaignName = ivrCampaignName;

  int? _ivrLeadId;
  int? get ivrLeadId => _$this._ivrLeadId;
  set ivrLeadId(int? ivrLeadId) => _$this._ivrLeadId = ivrLeadId;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _digit;
  String? get digit => _$this._digit;
  set digit(String? digit) => _$this._digit = digit;

  String? _callUuid;
  String? get callUuid => _$this._callUuid;
  set callUuid(String? callUuid) => _$this._callUuid = callUuid;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  IVRKampanyaRaporAlimiPostRequestBuilder() {
    IVRKampanyaRaporAlimiPostRequest._defaults(this);
  }

  IVRKampanyaRaporAlimiPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationId = $v.notificationId;
      _notificationDate = $v.notificationDate;
      _domainId = $v.domainId;
      _ivrCampaignId = $v.ivrCampaignId;
      _ivrCampaignName = $v.ivrCampaignName;
      _ivrLeadId = $v.ivrLeadId;
      _phone = $v.phone;
      _digit = $v.digit;
      _callUuid = $v.callUuid;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IVRKampanyaRaporAlimiPostRequest other) {
    _$v = other as _$IVRKampanyaRaporAlimiPostRequest;
  }

  @override
  void update(void Function(IVRKampanyaRaporAlimiPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IVRKampanyaRaporAlimiPostRequest build() => _build();

  _$IVRKampanyaRaporAlimiPostRequest _build() {
    final _$result = _$v ??
        _$IVRKampanyaRaporAlimiPostRequest._(
          notificationId: notificationId,
          notificationDate: notificationDate,
          domainId: domainId,
          ivrCampaignId: ivrCampaignId,
          ivrCampaignName: ivrCampaignName,
          ivrLeadId: ivrLeadId,
          phone: phone,
          digit: digit,
          callUuid: callUuid,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
