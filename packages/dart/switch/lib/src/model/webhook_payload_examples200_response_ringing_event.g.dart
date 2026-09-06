// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_payload_examples200_response_ringing_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookPayloadExamples200ResponseRingingEvent
    extends WebhookPayloadExamples200ResponseRingingEvent {
  @override
  final String? event;
  @override
  final String? callId;
  @override
  final String? callerNumber;
  @override
  final String? calledNumber;
  @override
  final String? timestamp;

  factory _$WebhookPayloadExamples200ResponseRingingEvent(
          [void Function(WebhookPayloadExamples200ResponseRingingEventBuilder)?
              updates]) =>
      (WebhookPayloadExamples200ResponseRingingEventBuilder()..update(updates))
          ._build();

  _$WebhookPayloadExamples200ResponseRingingEvent._(
      {this.event,
      this.callId,
      this.callerNumber,
      this.calledNumber,
      this.timestamp})
      : super._();
  @override
  WebhookPayloadExamples200ResponseRingingEvent rebuild(
          void Function(WebhookPayloadExamples200ResponseRingingEventBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookPayloadExamples200ResponseRingingEventBuilder toBuilder() =>
      WebhookPayloadExamples200ResponseRingingEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookPayloadExamples200ResponseRingingEvent &&
        event == other.event &&
        callId == other.callId &&
        callerNumber == other.callerNumber &&
        calledNumber == other.calledNumber &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, callId.hashCode);
    _$hash = $jc(_$hash, callerNumber.hashCode);
    _$hash = $jc(_$hash, calledNumber.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WebhookPayloadExamples200ResponseRingingEvent')
          ..add('event', event)
          ..add('callId', callId)
          ..add('callerNumber', callerNumber)
          ..add('calledNumber', calledNumber)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class WebhookPayloadExamples200ResponseRingingEventBuilder
    implements
        Builder<WebhookPayloadExamples200ResponseRingingEvent,
            WebhookPayloadExamples200ResponseRingingEventBuilder> {
  _$WebhookPayloadExamples200ResponseRingingEvent? _$v;

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

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  WebhookPayloadExamples200ResponseRingingEventBuilder() {
    WebhookPayloadExamples200ResponseRingingEvent._defaults(this);
  }

  WebhookPayloadExamples200ResponseRingingEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _callId = $v.callId;
      _callerNumber = $v.callerNumber;
      _calledNumber = $v.calledNumber;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookPayloadExamples200ResponseRingingEvent other) {
    _$v = other as _$WebhookPayloadExamples200ResponseRingingEvent;
  }

  @override
  void update(
      void Function(WebhookPayloadExamples200ResponseRingingEventBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookPayloadExamples200ResponseRingingEvent build() => _build();

  _$WebhookPayloadExamples200ResponseRingingEvent _build() {
    final _$result = _$v ??
        _$WebhookPayloadExamples200ResponseRingingEvent._(
          event: event,
          callId: callId,
          callerNumber: callerNumber,
          calledNumber: calledNumber,
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
