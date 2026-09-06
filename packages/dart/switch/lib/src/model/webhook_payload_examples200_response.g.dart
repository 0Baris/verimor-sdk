// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_payload_examples200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookPayloadExamples200Response
    extends WebhookPayloadExamples200Response {
  @override
  final WebhookPayloadExamples200ResponseRingingEvent? ringingEvent;
  @override
  final WebhookPayloadExamples200ResponseAnsweredEvent? answeredEvent;
  @override
  final WebhookPayloadExamples200ResponseHangupEvent? hangupEvent;

  factory _$WebhookPayloadExamples200Response(
          [void Function(WebhookPayloadExamples200ResponseBuilder)? updates]) =>
      (WebhookPayloadExamples200ResponseBuilder()..update(updates))._build();

  _$WebhookPayloadExamples200Response._(
      {this.ringingEvent, this.answeredEvent, this.hangupEvent})
      : super._();
  @override
  WebhookPayloadExamples200Response rebuild(
          void Function(WebhookPayloadExamples200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookPayloadExamples200ResponseBuilder toBuilder() =>
      WebhookPayloadExamples200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookPayloadExamples200Response &&
        ringingEvent == other.ringingEvent &&
        answeredEvent == other.answeredEvent &&
        hangupEvent == other.hangupEvent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ringingEvent.hashCode);
    _$hash = $jc(_$hash, answeredEvent.hashCode);
    _$hash = $jc(_$hash, hangupEvent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhookPayloadExamples200Response')
          ..add('ringingEvent', ringingEvent)
          ..add('answeredEvent', answeredEvent)
          ..add('hangupEvent', hangupEvent))
        .toString();
  }
}

class WebhookPayloadExamples200ResponseBuilder
    implements
        Builder<WebhookPayloadExamples200Response,
            WebhookPayloadExamples200ResponseBuilder> {
  _$WebhookPayloadExamples200Response? _$v;

  WebhookPayloadExamples200ResponseRingingEventBuilder? _ringingEvent;
  WebhookPayloadExamples200ResponseRingingEventBuilder get ringingEvent =>
      _$this._ringingEvent ??=
          WebhookPayloadExamples200ResponseRingingEventBuilder();
  set ringingEvent(
          WebhookPayloadExamples200ResponseRingingEventBuilder? ringingEvent) =>
      _$this._ringingEvent = ringingEvent;

  WebhookPayloadExamples200ResponseAnsweredEventBuilder? _answeredEvent;
  WebhookPayloadExamples200ResponseAnsweredEventBuilder get answeredEvent =>
      _$this._answeredEvent ??=
          WebhookPayloadExamples200ResponseAnsweredEventBuilder();
  set answeredEvent(
          WebhookPayloadExamples200ResponseAnsweredEventBuilder?
              answeredEvent) =>
      _$this._answeredEvent = answeredEvent;

  WebhookPayloadExamples200ResponseHangupEventBuilder? _hangupEvent;
  WebhookPayloadExamples200ResponseHangupEventBuilder get hangupEvent =>
      _$this._hangupEvent ??=
          WebhookPayloadExamples200ResponseHangupEventBuilder();
  set hangupEvent(
          WebhookPayloadExamples200ResponseHangupEventBuilder? hangupEvent) =>
      _$this._hangupEvent = hangupEvent;

  WebhookPayloadExamples200ResponseBuilder() {
    WebhookPayloadExamples200Response._defaults(this);
  }

  WebhookPayloadExamples200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ringingEvent = $v.ringingEvent?.toBuilder();
      _answeredEvent = $v.answeredEvent?.toBuilder();
      _hangupEvent = $v.hangupEvent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookPayloadExamples200Response other) {
    _$v = other as _$WebhookPayloadExamples200Response;
  }

  @override
  void update(
      void Function(WebhookPayloadExamples200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookPayloadExamples200Response build() => _build();

  _$WebhookPayloadExamples200Response _build() {
    _$WebhookPayloadExamples200Response _$result;
    try {
      _$result = _$v ??
          _$WebhookPayloadExamples200Response._(
            ringingEvent: _ringingEvent?.build(),
            answeredEvent: _answeredEvent?.build(),
            hangupEvent: _hangupEvent?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ringingEvent';
        _ringingEvent?.build();
        _$failedField = 'answeredEvent';
        _answeredEvent?.build();
        _$failedField = 'hangupEvent';
        _hangupEvent?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebhookPayloadExamples200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
