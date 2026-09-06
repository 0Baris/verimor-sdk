// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ivr_campaign_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIvrCampaignRequest extends CreateIvrCampaignRequest {
  @override
  final String callType;
  @override
  final String? queueNumber;
  @override
  final int? threadMultiplier;
  @override
  final int? maxThreadCount;
  @override
  final String name;
  @override
  final String? dateRangeBegin;
  @override
  final String? dateRangeEnd;
  @override
  final String? timeRangeBegin;
  @override
  final String? timeRangeEnd;
  @override
  final BuiltList<int>? activeDays;
  @override
  final int? ringTimeout;
  @override
  final String? cli;
  @override
  final int? welcomeAnnouncementId;
  @override
  final int? callRetries;
  @override
  final String? webhookUrl;
  @override
  final String? digitTarget0;
  @override
  final String? digitTarget1;
  @override
  final String? digitTarget2;
  @override
  final String? digitTarget3;
  @override
  final String? digitTarget4;
  @override
  final String? digitTarget5;
  @override
  final String? digitTarget6;
  @override
  final String? digitTarget7;
  @override
  final String? digitTarget8;
  @override
  final String? digitTarget9;
  @override
  final String? digitTargetStar;
  @override
  final String? digitTargetSquare;
  @override
  final String? timeoutTarget;
  @override
  final String? invalidTarget;
  @override
  final int? digitRetries;
  @override
  final int? digitTimeout;
  @override
  final BuiltList<CreateIvrCampaignRequestPhoneListInner> phoneList;
  @override
  final bool? isCommercial;
  @override
  final String? iysRecipientType;
  @override
  final String? iysBrandCode;
  @override
  final bool? recordingEnabled;

  factory _$CreateIvrCampaignRequest(
          [void Function(CreateIvrCampaignRequestBuilder)? updates]) =>
      (CreateIvrCampaignRequestBuilder()..update(updates))._build();

  _$CreateIvrCampaignRequest._(
      {required this.callType,
      this.queueNumber,
      this.threadMultiplier,
      this.maxThreadCount,
      required this.name,
      this.dateRangeBegin,
      this.dateRangeEnd,
      this.timeRangeBegin,
      this.timeRangeEnd,
      this.activeDays,
      this.ringTimeout,
      this.cli,
      this.welcomeAnnouncementId,
      this.callRetries,
      this.webhookUrl,
      this.digitTarget0,
      this.digitTarget1,
      this.digitTarget2,
      this.digitTarget3,
      this.digitTarget4,
      this.digitTarget5,
      this.digitTarget6,
      this.digitTarget7,
      this.digitTarget8,
      this.digitTarget9,
      this.digitTargetStar,
      this.digitTargetSquare,
      this.timeoutTarget,
      this.invalidTarget,
      this.digitRetries,
      this.digitTimeout,
      required this.phoneList,
      this.isCommercial,
      this.iysRecipientType,
      this.iysBrandCode,
      this.recordingEnabled})
      : super._();
  @override
  CreateIvrCampaignRequest rebuild(
          void Function(CreateIvrCampaignRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIvrCampaignRequestBuilder toBuilder() =>
      CreateIvrCampaignRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIvrCampaignRequest &&
        callType == other.callType &&
        queueNumber == other.queueNumber &&
        threadMultiplier == other.threadMultiplier &&
        maxThreadCount == other.maxThreadCount &&
        name == other.name &&
        dateRangeBegin == other.dateRangeBegin &&
        dateRangeEnd == other.dateRangeEnd &&
        timeRangeBegin == other.timeRangeBegin &&
        timeRangeEnd == other.timeRangeEnd &&
        activeDays == other.activeDays &&
        ringTimeout == other.ringTimeout &&
        cli == other.cli &&
        welcomeAnnouncementId == other.welcomeAnnouncementId &&
        callRetries == other.callRetries &&
        webhookUrl == other.webhookUrl &&
        digitTarget0 == other.digitTarget0 &&
        digitTarget1 == other.digitTarget1 &&
        digitTarget2 == other.digitTarget2 &&
        digitTarget3 == other.digitTarget3 &&
        digitTarget4 == other.digitTarget4 &&
        digitTarget5 == other.digitTarget5 &&
        digitTarget6 == other.digitTarget6 &&
        digitTarget7 == other.digitTarget7 &&
        digitTarget8 == other.digitTarget8 &&
        digitTarget9 == other.digitTarget9 &&
        digitTargetStar == other.digitTargetStar &&
        digitTargetSquare == other.digitTargetSquare &&
        timeoutTarget == other.timeoutTarget &&
        invalidTarget == other.invalidTarget &&
        digitRetries == other.digitRetries &&
        digitTimeout == other.digitTimeout &&
        phoneList == other.phoneList &&
        isCommercial == other.isCommercial &&
        iysRecipientType == other.iysRecipientType &&
        iysBrandCode == other.iysBrandCode &&
        recordingEnabled == other.recordingEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, callType.hashCode);
    _$hash = $jc(_$hash, queueNumber.hashCode);
    _$hash = $jc(_$hash, threadMultiplier.hashCode);
    _$hash = $jc(_$hash, maxThreadCount.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dateRangeBegin.hashCode);
    _$hash = $jc(_$hash, dateRangeEnd.hashCode);
    _$hash = $jc(_$hash, timeRangeBegin.hashCode);
    _$hash = $jc(_$hash, timeRangeEnd.hashCode);
    _$hash = $jc(_$hash, activeDays.hashCode);
    _$hash = $jc(_$hash, ringTimeout.hashCode);
    _$hash = $jc(_$hash, cli.hashCode);
    _$hash = $jc(_$hash, welcomeAnnouncementId.hashCode);
    _$hash = $jc(_$hash, callRetries.hashCode);
    _$hash = $jc(_$hash, webhookUrl.hashCode);
    _$hash = $jc(_$hash, digitTarget0.hashCode);
    _$hash = $jc(_$hash, digitTarget1.hashCode);
    _$hash = $jc(_$hash, digitTarget2.hashCode);
    _$hash = $jc(_$hash, digitTarget3.hashCode);
    _$hash = $jc(_$hash, digitTarget4.hashCode);
    _$hash = $jc(_$hash, digitTarget5.hashCode);
    _$hash = $jc(_$hash, digitTarget6.hashCode);
    _$hash = $jc(_$hash, digitTarget7.hashCode);
    _$hash = $jc(_$hash, digitTarget8.hashCode);
    _$hash = $jc(_$hash, digitTarget9.hashCode);
    _$hash = $jc(_$hash, digitTargetStar.hashCode);
    _$hash = $jc(_$hash, digitTargetSquare.hashCode);
    _$hash = $jc(_$hash, timeoutTarget.hashCode);
    _$hash = $jc(_$hash, invalidTarget.hashCode);
    _$hash = $jc(_$hash, digitRetries.hashCode);
    _$hash = $jc(_$hash, digitTimeout.hashCode);
    _$hash = $jc(_$hash, phoneList.hashCode);
    _$hash = $jc(_$hash, isCommercial.hashCode);
    _$hash = $jc(_$hash, iysRecipientType.hashCode);
    _$hash = $jc(_$hash, iysBrandCode.hashCode);
    _$hash = $jc(_$hash, recordingEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateIvrCampaignRequest')
          ..add('callType', callType)
          ..add('queueNumber', queueNumber)
          ..add('threadMultiplier', threadMultiplier)
          ..add('maxThreadCount', maxThreadCount)
          ..add('name', name)
          ..add('dateRangeBegin', dateRangeBegin)
          ..add('dateRangeEnd', dateRangeEnd)
          ..add('timeRangeBegin', timeRangeBegin)
          ..add('timeRangeEnd', timeRangeEnd)
          ..add('activeDays', activeDays)
          ..add('ringTimeout', ringTimeout)
          ..add('cli', cli)
          ..add('welcomeAnnouncementId', welcomeAnnouncementId)
          ..add('callRetries', callRetries)
          ..add('webhookUrl', webhookUrl)
          ..add('digitTarget0', digitTarget0)
          ..add('digitTarget1', digitTarget1)
          ..add('digitTarget2', digitTarget2)
          ..add('digitTarget3', digitTarget3)
          ..add('digitTarget4', digitTarget4)
          ..add('digitTarget5', digitTarget5)
          ..add('digitTarget6', digitTarget6)
          ..add('digitTarget7', digitTarget7)
          ..add('digitTarget8', digitTarget8)
          ..add('digitTarget9', digitTarget9)
          ..add('digitTargetStar', digitTargetStar)
          ..add('digitTargetSquare', digitTargetSquare)
          ..add('timeoutTarget', timeoutTarget)
          ..add('invalidTarget', invalidTarget)
          ..add('digitRetries', digitRetries)
          ..add('digitTimeout', digitTimeout)
          ..add('phoneList', phoneList)
          ..add('isCommercial', isCommercial)
          ..add('iysRecipientType', iysRecipientType)
          ..add('iysBrandCode', iysBrandCode)
          ..add('recordingEnabled', recordingEnabled))
        .toString();
  }
}

class CreateIvrCampaignRequestBuilder
    implements
        Builder<CreateIvrCampaignRequest, CreateIvrCampaignRequestBuilder> {
  _$CreateIvrCampaignRequest? _$v;

  String? _callType;
  String? get callType => _$this._callType;
  set callType(String? callType) => _$this._callType = callType;

  String? _queueNumber;
  String? get queueNumber => _$this._queueNumber;
  set queueNumber(String? queueNumber) => _$this._queueNumber = queueNumber;

  int? _threadMultiplier;
  int? get threadMultiplier => _$this._threadMultiplier;
  set threadMultiplier(int? threadMultiplier) =>
      _$this._threadMultiplier = threadMultiplier;

  int? _maxThreadCount;
  int? get maxThreadCount => _$this._maxThreadCount;
  set maxThreadCount(int? maxThreadCount) =>
      _$this._maxThreadCount = maxThreadCount;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _dateRangeBegin;
  String? get dateRangeBegin => _$this._dateRangeBegin;
  set dateRangeBegin(String? dateRangeBegin) =>
      _$this._dateRangeBegin = dateRangeBegin;

  String? _dateRangeEnd;
  String? get dateRangeEnd => _$this._dateRangeEnd;
  set dateRangeEnd(String? dateRangeEnd) => _$this._dateRangeEnd = dateRangeEnd;

  String? _timeRangeBegin;
  String? get timeRangeBegin => _$this._timeRangeBegin;
  set timeRangeBegin(String? timeRangeBegin) =>
      _$this._timeRangeBegin = timeRangeBegin;

  String? _timeRangeEnd;
  String? get timeRangeEnd => _$this._timeRangeEnd;
  set timeRangeEnd(String? timeRangeEnd) => _$this._timeRangeEnd = timeRangeEnd;

  ListBuilder<int>? _activeDays;
  ListBuilder<int> get activeDays => _$this._activeDays ??= ListBuilder<int>();
  set activeDays(ListBuilder<int>? activeDays) =>
      _$this._activeDays = activeDays;

  int? _ringTimeout;
  int? get ringTimeout => _$this._ringTimeout;
  set ringTimeout(int? ringTimeout) => _$this._ringTimeout = ringTimeout;

  String? _cli;
  String? get cli => _$this._cli;
  set cli(String? cli) => _$this._cli = cli;

  int? _welcomeAnnouncementId;
  int? get welcomeAnnouncementId => _$this._welcomeAnnouncementId;
  set welcomeAnnouncementId(int? welcomeAnnouncementId) =>
      _$this._welcomeAnnouncementId = welcomeAnnouncementId;

  int? _callRetries;
  int? get callRetries => _$this._callRetries;
  set callRetries(int? callRetries) => _$this._callRetries = callRetries;

  String? _webhookUrl;
  String? get webhookUrl => _$this._webhookUrl;
  set webhookUrl(String? webhookUrl) => _$this._webhookUrl = webhookUrl;

  String? _digitTarget0;
  String? get digitTarget0 => _$this._digitTarget0;
  set digitTarget0(String? digitTarget0) => _$this._digitTarget0 = digitTarget0;

  String? _digitTarget1;
  String? get digitTarget1 => _$this._digitTarget1;
  set digitTarget1(String? digitTarget1) => _$this._digitTarget1 = digitTarget1;

  String? _digitTarget2;
  String? get digitTarget2 => _$this._digitTarget2;
  set digitTarget2(String? digitTarget2) => _$this._digitTarget2 = digitTarget2;

  String? _digitTarget3;
  String? get digitTarget3 => _$this._digitTarget3;
  set digitTarget3(String? digitTarget3) => _$this._digitTarget3 = digitTarget3;

  String? _digitTarget4;
  String? get digitTarget4 => _$this._digitTarget4;
  set digitTarget4(String? digitTarget4) => _$this._digitTarget4 = digitTarget4;

  String? _digitTarget5;
  String? get digitTarget5 => _$this._digitTarget5;
  set digitTarget5(String? digitTarget5) => _$this._digitTarget5 = digitTarget5;

  String? _digitTarget6;
  String? get digitTarget6 => _$this._digitTarget6;
  set digitTarget6(String? digitTarget6) => _$this._digitTarget6 = digitTarget6;

  String? _digitTarget7;
  String? get digitTarget7 => _$this._digitTarget7;
  set digitTarget7(String? digitTarget7) => _$this._digitTarget7 = digitTarget7;

  String? _digitTarget8;
  String? get digitTarget8 => _$this._digitTarget8;
  set digitTarget8(String? digitTarget8) => _$this._digitTarget8 = digitTarget8;

  String? _digitTarget9;
  String? get digitTarget9 => _$this._digitTarget9;
  set digitTarget9(String? digitTarget9) => _$this._digitTarget9 = digitTarget9;

  String? _digitTargetStar;
  String? get digitTargetStar => _$this._digitTargetStar;
  set digitTargetStar(String? digitTargetStar) =>
      _$this._digitTargetStar = digitTargetStar;

  String? _digitTargetSquare;
  String? get digitTargetSquare => _$this._digitTargetSquare;
  set digitTargetSquare(String? digitTargetSquare) =>
      _$this._digitTargetSquare = digitTargetSquare;

  String? _timeoutTarget;
  String? get timeoutTarget => _$this._timeoutTarget;
  set timeoutTarget(String? timeoutTarget) =>
      _$this._timeoutTarget = timeoutTarget;

  String? _invalidTarget;
  String? get invalidTarget => _$this._invalidTarget;
  set invalidTarget(String? invalidTarget) =>
      _$this._invalidTarget = invalidTarget;

  int? _digitRetries;
  int? get digitRetries => _$this._digitRetries;
  set digitRetries(int? digitRetries) => _$this._digitRetries = digitRetries;

  int? _digitTimeout;
  int? get digitTimeout => _$this._digitTimeout;
  set digitTimeout(int? digitTimeout) => _$this._digitTimeout = digitTimeout;

  ListBuilder<CreateIvrCampaignRequestPhoneListInner>? _phoneList;
  ListBuilder<CreateIvrCampaignRequestPhoneListInner> get phoneList =>
      _$this._phoneList ??=
          ListBuilder<CreateIvrCampaignRequestPhoneListInner>();
  set phoneList(
          ListBuilder<CreateIvrCampaignRequestPhoneListInner>? phoneList) =>
      _$this._phoneList = phoneList;

  bool? _isCommercial;
  bool? get isCommercial => _$this._isCommercial;
  set isCommercial(bool? isCommercial) => _$this._isCommercial = isCommercial;

  String? _iysRecipientType;
  String? get iysRecipientType => _$this._iysRecipientType;
  set iysRecipientType(String? iysRecipientType) =>
      _$this._iysRecipientType = iysRecipientType;

  String? _iysBrandCode;
  String? get iysBrandCode => _$this._iysBrandCode;
  set iysBrandCode(String? iysBrandCode) => _$this._iysBrandCode = iysBrandCode;

  bool? _recordingEnabled;
  bool? get recordingEnabled => _$this._recordingEnabled;
  set recordingEnabled(bool? recordingEnabled) =>
      _$this._recordingEnabled = recordingEnabled;

  CreateIvrCampaignRequestBuilder() {
    CreateIvrCampaignRequest._defaults(this);
  }

  CreateIvrCampaignRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _callType = $v.callType;
      _queueNumber = $v.queueNumber;
      _threadMultiplier = $v.threadMultiplier;
      _maxThreadCount = $v.maxThreadCount;
      _name = $v.name;
      _dateRangeBegin = $v.dateRangeBegin;
      _dateRangeEnd = $v.dateRangeEnd;
      _timeRangeBegin = $v.timeRangeBegin;
      _timeRangeEnd = $v.timeRangeEnd;
      _activeDays = $v.activeDays?.toBuilder();
      _ringTimeout = $v.ringTimeout;
      _cli = $v.cli;
      _welcomeAnnouncementId = $v.welcomeAnnouncementId;
      _callRetries = $v.callRetries;
      _webhookUrl = $v.webhookUrl;
      _digitTarget0 = $v.digitTarget0;
      _digitTarget1 = $v.digitTarget1;
      _digitTarget2 = $v.digitTarget2;
      _digitTarget3 = $v.digitTarget3;
      _digitTarget4 = $v.digitTarget4;
      _digitTarget5 = $v.digitTarget5;
      _digitTarget6 = $v.digitTarget6;
      _digitTarget7 = $v.digitTarget7;
      _digitTarget8 = $v.digitTarget8;
      _digitTarget9 = $v.digitTarget9;
      _digitTargetStar = $v.digitTargetStar;
      _digitTargetSquare = $v.digitTargetSquare;
      _timeoutTarget = $v.timeoutTarget;
      _invalidTarget = $v.invalidTarget;
      _digitRetries = $v.digitRetries;
      _digitTimeout = $v.digitTimeout;
      _phoneList = $v.phoneList.toBuilder();
      _isCommercial = $v.isCommercial;
      _iysRecipientType = $v.iysRecipientType;
      _iysBrandCode = $v.iysBrandCode;
      _recordingEnabled = $v.recordingEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIvrCampaignRequest other) {
    _$v = other as _$CreateIvrCampaignRequest;
  }

  @override
  void update(void Function(CreateIvrCampaignRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIvrCampaignRequest build() => _build();

  _$CreateIvrCampaignRequest _build() {
    _$CreateIvrCampaignRequest _$result;
    try {
      _$result = _$v ??
          _$CreateIvrCampaignRequest._(
            callType: BuiltValueNullFieldError.checkNotNull(
                callType, r'CreateIvrCampaignRequest', 'callType'),
            queueNumber: queueNumber,
            threadMultiplier: threadMultiplier,
            maxThreadCount: maxThreadCount,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateIvrCampaignRequest', 'name'),
            dateRangeBegin: dateRangeBegin,
            dateRangeEnd: dateRangeEnd,
            timeRangeBegin: timeRangeBegin,
            timeRangeEnd: timeRangeEnd,
            activeDays: _activeDays?.build(),
            ringTimeout: ringTimeout,
            cli: cli,
            welcomeAnnouncementId: welcomeAnnouncementId,
            callRetries: callRetries,
            webhookUrl: webhookUrl,
            digitTarget0: digitTarget0,
            digitTarget1: digitTarget1,
            digitTarget2: digitTarget2,
            digitTarget3: digitTarget3,
            digitTarget4: digitTarget4,
            digitTarget5: digitTarget5,
            digitTarget6: digitTarget6,
            digitTarget7: digitTarget7,
            digitTarget8: digitTarget8,
            digitTarget9: digitTarget9,
            digitTargetStar: digitTargetStar,
            digitTargetSquare: digitTargetSquare,
            timeoutTarget: timeoutTarget,
            invalidTarget: invalidTarget,
            digitRetries: digitRetries,
            digitTimeout: digitTimeout,
            phoneList: phoneList.build(),
            isCommercial: isCommercial,
            iysRecipientType: iysRecipientType,
            iysBrandCode: iysBrandCode,
            recordingEnabled: recordingEnabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeDays';
        _activeDays?.build();

        _$failedField = 'phoneList';
        phoneList.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateIvrCampaignRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
