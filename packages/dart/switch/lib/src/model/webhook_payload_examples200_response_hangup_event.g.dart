// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_payload_examples200_response_hangup_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookPayloadExamples200ResponseHangupEvent
    extends WebhookPayloadExamples200ResponseHangupEvent {
  @override
  final String? event;
  @override
  final String? callId;
  @override
  final String? callerNumber;
  @override
  final String? calledNumber;
  @override
  final int? duration;
  @override
  final String? hangupCause;

  factory _$WebhookPayloadExamples200ResponseHangupEvent(
          [void Function(WebhookPayloadExamples200ResponseHangupEventBuilder)?
              updates]) =>
      (WebhookPayloadExamples200ResponseHangupEventBuilder()..update(updates))
          ._build();

  _$WebhookPayloadExamples200ResponseHangupEvent._(
      {this.event,
      this.callId,
      this.callerNumber,
      this.calledNumber,
      this.duration,
      this.hangupCause})
      : super._();
  @override
  WebhookPayloadExamples200ResponseHangupEvent rebuild(
          void Function(WebhookPayloadExamples200ResponseHangupEventBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookPayloadExamples200ResponseHangupEventBuilder toBuilder() =>
      WebhookPayloadExamples200ResponseHangupEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookPayloadExamples200ResponseHangupEvent &&
        event == other.event &&
        callId == other.callId &&
        callerNumber == other.callerNumber &&
        calledNumber == other.calledNumber &&
        duration == other.duration &&
        hangupCause == other.hangupCause;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, callId.hashCode);
    _$hash = $jc(_$hash, callerNumber.hashCode);
    _$hash = $jc(_$hash, calledNumber.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, hangupCause.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WebhookPayloadExamples200ResponseHangupEvent')
          ..add('event', event)
          ..add('callId', callId)
          ..add('callerNumber', callerNumber)
          ..add('calledNumber', calledNumber)
          ..add('duration', duration)
          ..add('hangupCause', hangupCause))
        .toString();
  }
}

class WebhookPayloadExamples200ResponseHangupEventBuilder
    implements
        Builder<WebhookPayloadExamples200ResponseHangupEvent,
            WebhookPayloadExamples200ResponseHangupEventBuilder> {
  _$WebhookPayloadExamples200ResponseHangupEvent? _$v;

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

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _hangupCause;
  String? get hangupCause => _$this._hangupCause;
  set hangupCause(String? hangupCause) => _$this._hangupCause = hangupCause;

  WebhookPayloadExamples200ResponseHangupEventBuilder() {
    WebhookPayloadExamples200ResponseHangupEvent._defaults(this);
  }

  WebhookPayloadExamples200ResponseHangupEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _callId = $v.callId;
      _callerNumber = $v.callerNumber;
      _calledNumber = $v.calledNumber;
      _duration = $v.duration;
      _hangupCause = $v.hangupCause;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookPayloadExamples200ResponseHangupEvent other) {
    _$v = other as _$WebhookPayloadExamples200ResponseHangupEvent;
  }

  @override
  void update(
      void Function(WebhookPayloadExamples200ResponseHangupEventBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookPayloadExamples200ResponseHangupEvent build() => _build();

  _$WebhookPayloadExamples200ResponseHangupEvent _build() {
    final _$result = _$v ??
        _$WebhookPayloadExamples200ResponseHangupEvent._(
          event: event,
          callId: callId,
          callerNumber: callerNumber,
          calledNumber: calledNumber,
          duration: duration,
          hangupCause: hangupCause,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
