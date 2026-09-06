// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_payload_examples200_response_answered_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookPayloadExamples200ResponseAnsweredEvent
    extends WebhookPayloadExamples200ResponseAnsweredEvent {
  @override
  final String? event;
  @override
  final String? callId;
  @override
  final String? callerNumber;
  @override
  final String? calledNumber;
  @override
  final String? answerTime;

  factory _$WebhookPayloadExamples200ResponseAnsweredEvent(
          [void Function(WebhookPayloadExamples200ResponseAnsweredEventBuilder)?
              updates]) =>
      (WebhookPayloadExamples200ResponseAnsweredEventBuilder()..update(updates))
          ._build();

  _$WebhookPayloadExamples200ResponseAnsweredEvent._(
      {this.event,
      this.callId,
      this.callerNumber,
      this.calledNumber,
      this.answerTime})
      : super._();
  @override
  WebhookPayloadExamples200ResponseAnsweredEvent rebuild(
          void Function(WebhookPayloadExamples200ResponseAnsweredEventBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookPayloadExamples200ResponseAnsweredEventBuilder toBuilder() =>
      WebhookPayloadExamples200ResponseAnsweredEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookPayloadExamples200ResponseAnsweredEvent &&
        event == other.event &&
        callId == other.callId &&
        callerNumber == other.callerNumber &&
        calledNumber == other.calledNumber &&
        answerTime == other.answerTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, callId.hashCode);
    _$hash = $jc(_$hash, callerNumber.hashCode);
    _$hash = $jc(_$hash, calledNumber.hashCode);
    _$hash = $jc(_$hash, answerTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WebhookPayloadExamples200ResponseAnsweredEvent')
          ..add('event', event)
          ..add('callId', callId)
          ..add('callerNumber', callerNumber)
          ..add('calledNumber', calledNumber)
          ..add('answerTime', answerTime))
        .toString();
  }
}

class WebhookPayloadExamples200ResponseAnsweredEventBuilder
    implements
        Builder<WebhookPayloadExamples200ResponseAnsweredEvent,
            WebhookPayloadExamples200ResponseAnsweredEventBuilder> {
  _$WebhookPayloadExamples200ResponseAnsweredEvent? _$v;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _callId;
  String? get callId => _$this._callId;
  set callId(String? callId) => _$this._callId = callId;

  String? _callerNumber;
  String? get callerNumber => _$this._callerNumber;
  set callerNumber(String? callerNumber) => _$this._callerNumber = callerNumber;

  String? _calledNumber;
  String? get calledNumber => _$this._calledNumber;
  set calledNumber(String? calledNumber) => _$this._calledNumber = calledNumber;

  String? _answerTime;
  String? get answerTime => _$this._answerTime;
  set answerTime(String? answerTime) => _$this._answerTime = answerTime;

  WebhookPayloadExamples200ResponseAnsweredEventBuilder() {
    WebhookPayloadExamples200ResponseAnsweredEvent._defaults(this);
  }

  WebhookPayloadExamples200ResponseAnsweredEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _callId = $v.callId;
      _callerNumber = $v.callerNumber;
      _calledNumber = $v.calledNumber;
      _answerTime = $v.answerTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookPayloadExamples200ResponseAnsweredEvent other) {
    _$v = other as _$WebhookPayloadExamples200ResponseAnsweredEvent;
  }

  @override
  void update(
      void Function(WebhookPayloadExamples200ResponseAnsweredEventBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookPayloadExamples200ResponseAnsweredEvent build() => _build();

  _$WebhookPayloadExamples200ResponseAnsweredEvent _build() {
    final _$result = _$v ??
        _$WebhookPayloadExamples200ResponseAnsweredEvent._(
          event: event,
          callId: callId,
          callerNumber: callerNumber,
          calledNumber: calledNumber,
          answerTime: answerTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
