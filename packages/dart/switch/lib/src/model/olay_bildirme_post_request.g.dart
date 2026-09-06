// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olay_bildirme_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OlayBildirmePostRequest extends OlayBildirmePostRequest {
  @override
  final String? eventType;
  @override
  final String? domainId;
  @override
  final String? direction;
  @override
  final String? callerIdNumber;
  @override
  final String? outboundCallerIdNumber;
  @override
  final String? destinationNumber;
  @override
  final String? dialedUser;
  @override
  final String? connectedUser;
  @override
  final String? callUuid;
  @override
  final DateTime? startStamp;
  @override
  final DateTime? answerStamp;
  @override
  final DateTime? endStamp;
  @override
  final int? duration;
  @override
  final bool? recordingPresent;
  @override
  final bool? answered;
  @override
  final String? queue;
  @override
  final int? queueWaitDuration;
  @override
  final String? sipHangupDisposition;
  @override
  final String? hangupCause;
  @override
  final String? failureStatus;
  @override
  final String? failurePhrase;

  factory _$OlayBildirmePostRequest(
          [void Function(OlayBildirmePostRequestBuilder)? updates]) =>
      (OlayBildirmePostRequestBuilder()..update(updates))._build();

  _$OlayBildirmePostRequest._(
      {this.eventType,
      this.domainId,
      this.direction,
      this.callerIdNumber,
      this.outboundCallerIdNumber,
      this.destinationNumber,
      this.dialedUser,
      this.connectedUser,
      this.callUuid,
      this.startStamp,
      this.answerStamp,
      this.endStamp,
      this.duration,
      this.recordingPresent,
      this.answered,
      this.queue,
      this.queueWaitDuration,
      this.sipHangupDisposition,
      this.hangupCause,
      this.failureStatus,
      this.failurePhrase})
      : super._();
  @override
  OlayBildirmePostRequest rebuild(
          void Function(OlayBildirmePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OlayBildirmePostRequestBuilder toBuilder() =>
      OlayBildirmePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OlayBildirmePostRequest &&
        eventType == other.eventType &&
        domainId == other.domainId &&
        direction == other.direction &&
        callerIdNumber == other.callerIdNumber &&
        outboundCallerIdNumber == other.outboundCallerIdNumber &&
        destinationNumber == other.destinationNumber &&
        dialedUser == other.dialedUser &&
        connectedUser == other.connectedUser &&
        callUuid == other.callUuid &&
        startStamp == other.startStamp &&
        answerStamp == other.answerStamp &&
        endStamp == other.endStamp &&
        duration == other.duration &&
        recordingPresent == other.recordingPresent &&
        answered == other.answered &&
        queue == other.queue &&
        queueWaitDuration == other.queueWaitDuration &&
        sipHangupDisposition == other.sipHangupDisposition &&
        hangupCause == other.hangupCause &&
        failureStatus == other.failureStatus &&
        failurePhrase == other.failurePhrase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, domainId.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, callerIdNumber.hashCode);
    _$hash = $jc(_$hash, outboundCallerIdNumber.hashCode);
    _$hash = $jc(_$hash, destinationNumber.hashCode);
    _$hash = $jc(_$hash, dialedUser.hashCode);
    _$hash = $jc(_$hash, connectedUser.hashCode);
    _$hash = $jc(_$hash, callUuid.hashCode);
    _$hash = $jc(_$hash, startStamp.hashCode);
    _$hash = $jc(_$hash, answerStamp.hashCode);
    _$hash = $jc(_$hash, endStamp.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, recordingPresent.hashCode);
    _$hash = $jc(_$hash, answered.hashCode);
    _$hash = $jc(_$hash, queue.hashCode);
    _$hash = $jc(_$hash, queueWaitDuration.hashCode);
    _$hash = $jc(_$hash, sipHangupDisposition.hashCode);
    _$hash = $jc(_$hash, hangupCause.hashCode);
    _$hash = $jc(_$hash, failureStatus.hashCode);
    _$hash = $jc(_$hash, failurePhrase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OlayBildirmePostRequest')
          ..add('eventType', eventType)
          ..add('domainId', domainId)
          ..add('direction', direction)
          ..add('callerIdNumber', callerIdNumber)
          ..add('outboundCallerIdNumber', outboundCallerIdNumber)
          ..add('destinationNumber', destinationNumber)
          ..add('dialedUser', dialedUser)
          ..add('connectedUser', connectedUser)
          ..add('callUuid', callUuid)
          ..add('startStamp', startStamp)
          ..add('answerStamp', answerStamp)
          ..add('endStamp', endStamp)
          ..add('duration', duration)
          ..add('recordingPresent', recordingPresent)
          ..add('answered', answered)
          ..add('queue', queue)
          ..add('queueWaitDuration', queueWaitDuration)
          ..add('sipHangupDisposition', sipHangupDisposition)
          ..add('hangupCause', hangupCause)
          ..add('failureStatus', failureStatus)
          ..add('failurePhrase', failurePhrase))
        .toString();
  }
}

class OlayBildirmePostRequestBuilder
    implements
        Builder<OlayBildirmePostRequest, OlayBildirmePostRequestBuilder> {
  _$OlayBildirmePostRequest? _$v;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(String? eventType) => _$this._eventType = eventType;

  String? _domainId;
  String? get domainId => _$this._domainId;
  set domainId(String? domainId) => _$this._domainId = domainId;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _callerIdNumber;
  String? get callerIdNumber => _$this._callerIdNumber;
  set callerIdNumber(String? callerIdNumber) =>
      _$this._callerIdNumber = callerIdNumber;

  String? _outboundCallerIdNumber;
  String? get outboundCallerIdNumber => _$this._outboundCallerIdNumber;
  set outboundCallerIdNumber(String? outboundCallerIdNumber) =>
      _$this._outboundCallerIdNumber = outboundCallerIdNumber;

  String? _destinationNumber;
  String? get destinationNumber => _$this._destinationNumber;
  set destinationNumber(String? destinationNumber) =>
      _$this._destinationNumber = destinationNumber;

  String? _dialedUser;
  String? get dialedUser => _$this._dialedUser;
  set dialedUser(String? dialedUser) => _$this._dialedUser = dialedUser;

  String? _connectedUser;
  String? get connectedUser => _$this._connectedUser;
  set connectedUser(String? connectedUser) =>
      _$this._connectedUser = connectedUser;

  String? _callUuid;
  String? get callUuid => _$this._callUuid;
  set callUuid(String? callUuid) => _$this._callUuid = callUuid;

  DateTime? _startStamp;
  DateTime? get startStamp => _$this._startStamp;
  set startStamp(DateTime? startStamp) => _$this._startStamp = startStamp;

  DateTime? _answerStamp;
  DateTime? get answerStamp => _$this._answerStamp;
  set answerStamp(DateTime? answerStamp) => _$this._answerStamp = answerStamp;

  DateTime? _endStamp;
  DateTime? get endStamp => _$this._endStamp;
  set endStamp(DateTime? endStamp) => _$this._endStamp = endStamp;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  bool? _recordingPresent;
  bool? get recordingPresent => _$this._recordingPresent;
  set recordingPresent(bool? recordingPresent) =>
      _$this._recordingPresent = recordingPresent;

  bool? _answered;
  bool? get answered => _$this._answered;
  set answered(bool? answered) => _$this._answered = answered;

  String? _queue;
  String? get queue => _$this._queue;
  set queue(String? queue) => _$this._queue = queue;

  int? _queueWaitDuration;
  int? get queueWaitDuration => _$this._queueWaitDuration;
  set queueWaitDuration(int? queueWaitDuration) =>
      _$this._queueWaitDuration = queueWaitDuration;

  String? _sipHangupDisposition;
  String? get sipHangupDisposition => _$this._sipHangupDisposition;
  set sipHangupDisposition(String? sipHangupDisposition) =>
      _$this._sipHangupDisposition = sipHangupDisposition;

  String? _hangupCause;
  String? get hangupCause => _$this._hangupCause;
  set hangupCause(String? hangupCause) => _$this._hangupCause = hangupCause;

  String? _failureStatus;
  String? get failureStatus => _$this._failureStatus;
  set failureStatus(String? failureStatus) =>
      _$this._failureStatus = failureStatus;

  String? _failurePhrase;
  String? get failurePhrase => _$this._failurePhrase;
  set failurePhrase(String? failurePhrase) =>
      _$this._failurePhrase = failurePhrase;

  OlayBildirmePostRequestBuilder() {
    OlayBildirmePostRequest._defaults(this);
  }

  OlayBildirmePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventType = $v.eventType;
      _domainId = $v.domainId;
      _direction = $v.direction;
      _callerIdNumber = $v.callerIdNumber;
      _outboundCallerIdNumber = $v.outboundCallerIdNumber;
      _destinationNumber = $v.destinationNumber;
      _dialedUser = $v.dialedUser;
      _connectedUser = $v.connectedUser;
      _callUuid = $v.callUuid;
      _startStamp = $v.startStamp;
      _answerStamp = $v.answerStamp;
      _endStamp = $v.endStamp;
      _duration = $v.duration;
      _recordingPresent = $v.recordingPresent;
      _answered = $v.answered;
      _queue = $v.queue;
      _queueWaitDuration = $v.queueWaitDuration;
      _sipHangupDisposition = $v.sipHangupDisposition;
      _hangupCause = $v.hangupCause;
      _failureStatus = $v.failureStatus;
      _failurePhrase = $v.failurePhrase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OlayBildirmePostRequest other) {
    _$v = other as _$OlayBildirmePostRequest;
  }

  @override
  void update(void Function(OlayBildirmePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OlayBildirmePostRequest build() => _build();

  _$OlayBildirmePostRequest _build() {
    final _$result = _$v ??
        _$OlayBildirmePostRequest._(
          eventType: eventType,
          domainId: domainId,
          direction: direction,
          callerIdNumber: callerIdNumber,
          outboundCallerIdNumber: outboundCallerIdNumber,
          destinationNumber: destinationNumber,
          dialedUser: dialedUser,
          connectedUser: connectedUser,
          callUuid: callUuid,
          startStamp: startStamp,
          answerStamp: answerStamp,
          endStamp: endStamp,
          duration: duration,
          recordingPresent: recordingPresent,
          answered: answered,
          queue: queue,
          queueWaitDuration: queueWaitDuration,
          sipHangupDisposition: sipHangupDisposition,
          hangupCause: hangupCause,
          failureStatus: failureStatus,
          failurePhrase: failurePhrase,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
