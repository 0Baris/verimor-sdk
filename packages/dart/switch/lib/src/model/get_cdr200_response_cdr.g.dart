// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cdr200_response_cdr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCdr200ResponseCdr extends GetCdr200ResponseCdr {
  @override
  final String? direction;
  @override
  final String? callerIdNumber;
  @override
  final String? destinationNumber;
  @override
  final String? result;
  @override
  final String? sipHangupDisposition;
  @override
  final bool? missed;
  @override
  final String? returnUuid;
  @override
  final String? callUuid;
  @override
  final String? startStamp;
  @override
  final String? answerStamp;
  @override
  final String? endStamp;
  @override
  final String? duration;
  @override
  final String? talkDuration;
  @override
  final String? queueWaitSeconds;
  @override
  final String? recordingPresent;

  factory _$GetCdr200ResponseCdr(
          [void Function(GetCdr200ResponseCdrBuilder)? updates]) =>
      (GetCdr200ResponseCdrBuilder()..update(updates))._build();

  _$GetCdr200ResponseCdr._(
      {this.direction,
      this.callerIdNumber,
      this.destinationNumber,
      this.result,
      this.sipHangupDisposition,
      this.missed,
      this.returnUuid,
      this.callUuid,
      this.startStamp,
      this.answerStamp,
      this.endStamp,
      this.duration,
      this.talkDuration,
      this.queueWaitSeconds,
      this.recordingPresent})
      : super._();
  @override
  GetCdr200ResponseCdr rebuild(
          void Function(GetCdr200ResponseCdrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCdr200ResponseCdrBuilder toBuilder() =>
      GetCdr200ResponseCdrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCdr200ResponseCdr &&
        direction == other.direction &&
        callerIdNumber == other.callerIdNumber &&
        destinationNumber == other.destinationNumber &&
        result == other.result &&
        sipHangupDisposition == other.sipHangupDisposition &&
        missed == other.missed &&
        returnUuid == other.returnUuid &&
        callUuid == other.callUuid &&
        startStamp == other.startStamp &&
        answerStamp == other.answerStamp &&
        endStamp == other.endStamp &&
        duration == other.duration &&
        talkDuration == other.talkDuration &&
        queueWaitSeconds == other.queueWaitSeconds &&
        recordingPresent == other.recordingPresent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, callerIdNumber.hashCode);
    _$hash = $jc(_$hash, destinationNumber.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, sipHangupDisposition.hashCode);
    _$hash = $jc(_$hash, missed.hashCode);
    _$hash = $jc(_$hash, returnUuid.hashCode);
    _$hash = $jc(_$hash, callUuid.hashCode);
    _$hash = $jc(_$hash, startStamp.hashCode);
    _$hash = $jc(_$hash, answerStamp.hashCode);
    _$hash = $jc(_$hash, endStamp.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, talkDuration.hashCode);
    _$hash = $jc(_$hash, queueWaitSeconds.hashCode);
    _$hash = $jc(_$hash, recordingPresent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCdr200ResponseCdr')
          ..add('direction', direction)
          ..add('callerIdNumber', callerIdNumber)
          ..add('destinationNumber', destinationNumber)
          ..add('result', result)
          ..add('sipHangupDisposition', sipHangupDisposition)
          ..add('missed', missed)
          ..add('returnUuid', returnUuid)
          ..add('callUuid', callUuid)
          ..add('startStamp', startStamp)
          ..add('answerStamp', answerStamp)
          ..add('endStamp', endStamp)
          ..add('duration', duration)
          ..add('talkDuration', talkDuration)
          ..add('queueWaitSeconds', queueWaitSeconds)
          ..add('recordingPresent', recordingPresent))
        .toString();
  }
}

class GetCdr200ResponseCdrBuilder
    implements Builder<GetCdr200ResponseCdr, GetCdr200ResponseCdrBuilder> {
  _$GetCdr200ResponseCdr? _$v;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _callerIdNumber;
  String? get callerIdNumber => _$this._callerIdNumber;
  set callerIdNumber(String? callerIdNumber) =>
      _$this._callerIdNumber = callerIdNumber;

  String? _destinationNumber;
  String? get destinationNumber => _$this._destinationNumber;
  set destinationNumber(String? destinationNumber) =>
      _$this._destinationNumber = destinationNumber;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  String? _sipHangupDisposition;
  String? get sipHangupDisposition => _$this._sipHangupDisposition;
  set sipHangupDisposition(String? sipHangupDisposition) =>
      _$this._sipHangupDisposition = sipHangupDisposition;

  bool? _missed;
  bool? get missed => _$this._missed;
  set missed(bool? missed) => _$this._missed = missed;

  String? _returnUuid;
  String? get returnUuid => _$this._returnUuid;
  set returnUuid(String? returnUuid) => _$this._returnUuid = returnUuid;

  String? _callUuid;
  String? get callUuid => _$this._callUuid;
  set callUuid(String? callUuid) => _$this._callUuid = callUuid;

  String? _startStamp;
  String? get startStamp => _$this._startStamp;
  set startStamp(String? startStamp) => _$this._startStamp = startStamp;

  String? _answerStamp;
  String? get answerStamp => _$this._answerStamp;
  set answerStamp(String? answerStamp) => _$this._answerStamp = answerStamp;

  String? _endStamp;
  String? get endStamp => _$this._endStamp;
  set endStamp(String? endStamp) => _$this._endStamp = endStamp;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _talkDuration;
  String? get talkDuration => _$this._talkDuration;
  set talkDuration(String? talkDuration) => _$this._talkDuration = talkDuration;

  String? _queueWaitSeconds;
  String? get queueWaitSeconds => _$this._queueWaitSeconds;
  set queueWaitSeconds(String? queueWaitSeconds) =>
      _$this._queueWaitSeconds = queueWaitSeconds;

  String? _recordingPresent;
  String? get recordingPresent => _$this._recordingPresent;
  set recordingPresent(String? recordingPresent) =>
      _$this._recordingPresent = recordingPresent;

  GetCdr200ResponseCdrBuilder() {
    GetCdr200ResponseCdr._defaults(this);
  }

  GetCdr200ResponseCdrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direction = $v.direction;
      _callerIdNumber = $v.callerIdNumber;
      _destinationNumber = $v.destinationNumber;
      _result = $v.result;
      _sipHangupDisposition = $v.sipHangupDisposition;
      _missed = $v.missed;
      _returnUuid = $v.returnUuid;
      _callUuid = $v.callUuid;
      _startStamp = $v.startStamp;
      _answerStamp = $v.answerStamp;
      _endStamp = $v.endStamp;
      _duration = $v.duration;
      _talkDuration = $v.talkDuration;
      _queueWaitSeconds = $v.queueWaitSeconds;
      _recordingPresent = $v.recordingPresent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCdr200ResponseCdr other) {
    _$v = other as _$GetCdr200ResponseCdr;
  }

  @override
  void update(void Function(GetCdr200ResponseCdrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCdr200ResponseCdr build() => _build();

  _$GetCdr200ResponseCdr _build() {
    final _$result = _$v ??
        _$GetCdr200ResponseCdr._(
          direction: direction,
          callerIdNumber: callerIdNumber,
          destinationNumber: destinationNumber,
          result: result,
          sipHangupDisposition: sipHangupDisposition,
          missed: missed,
          returnUuid: returnUuid,
          callUuid: callUuid,
          startStamp: startStamp,
          answerStamp: answerStamp,
          endStamp: endStamp,
          duration: duration,
          talkDuration: talkDuration,
          queueWaitSeconds: queueWaitSeconds,
          recordingPresent: recordingPresent,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
