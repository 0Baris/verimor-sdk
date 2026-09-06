//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:verimor_switch/src/model/webhook_payload_examples200_response_answered_event.dart';
import 'package:verimor_switch/src/model/webhook_payload_examples200_response_hangup_event.dart';
import 'package:verimor_switch/src/model/webhook_payload_examples200_response_ringing_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_payload_examples200_response.g.dart';

/// WebhookPayloadExamples200Response
///
/// Properties:
/// * [ringingEvent] 
/// * [answeredEvent] 
/// * [hangupEvent] 
@BuiltValue()
abstract class WebhookPayloadExamples200Response implements Built<WebhookPayloadExamples200Response, WebhookPayloadExamples200ResponseBuilder> {
  @BuiltValueField(wireName: r'ringing_event')
  WebhookPayloadExamples200ResponseRingingEvent? get ringingEvent;

  @BuiltValueField(wireName: r'answered_event')
  WebhookPayloadExamples200ResponseAnsweredEvent? get answeredEvent;

  @BuiltValueField(wireName: r'hangup_event')
  WebhookPayloadExamples200ResponseHangupEvent? get hangupEvent;

  WebhookPayloadExamples200Response._();

  factory WebhookPayloadExamples200Response([void updates(WebhookPayloadExamples200ResponseBuilder b)]) = _$WebhookPayloadExamples200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookPayloadExamples200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookPayloadExamples200Response> get serializer => _$WebhookPayloadExamples200ResponseSerializer();
}

class _$WebhookPayloadExamples200ResponseSerializer implements PrimitiveSerializer<WebhookPayloadExamples200Response> {
  @override
  final Iterable<Type> types = const [WebhookPayloadExamples200Response, _$WebhookPayloadExamples200Response];

  @override
  final String wireName = r'WebhookPayloadExamples200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookPayloadExamples200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ringingEvent != null) {
      yield r'ringing_event';
      yield serializers.serialize(
        object.ringingEvent,
        specifiedType: const FullType(WebhookPayloadExamples200ResponseRingingEvent),
      );
    }
    if (object.answeredEvent != null) {
      yield r'answered_event';
      yield serializers.serialize(
        object.answeredEvent,
        specifiedType: const FullType(WebhookPayloadExamples200ResponseAnsweredEvent),
      );
    }
    if (object.hangupEvent != null) {
      yield r'hangup_event';
      yield serializers.serialize(
        object.hangupEvent,
        specifiedType: const FullType(WebhookPayloadExamples200ResponseHangupEvent),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookPayloadExamples200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookPayloadExamples200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ringing_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookPayloadExamples200ResponseRingingEvent),
          ) as WebhookPayloadExamples200ResponseRingingEvent;
          result.ringingEvent.replace(valueDes);
          break;
        case r'answered_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookPayloadExamples200ResponseAnsweredEvent),
          ) as WebhookPayloadExamples200ResponseAnsweredEvent;
          result.answeredEvent.replace(valueDes);
          break;
        case r'hangup_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhookPayloadExamples200ResponseHangupEvent),
          ) as WebhookPayloadExamples200ResponseHangupEvent;
          result.hangupEvent.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookPayloadExamples200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookPayloadExamples200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

