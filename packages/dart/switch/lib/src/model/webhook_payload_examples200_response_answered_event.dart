//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_payload_examples200_response_answered_event.g.dart';

/// Çağrı cevaplandığında gönderilen payload
///
/// Properties:
/// * [event] 
/// * [callId] 
/// * [callerNumber] 
/// * [calledNumber] 
/// * [answerTime] 
@BuiltValue()
abstract class WebhookPayloadExamples200ResponseAnsweredEvent implements Built<WebhookPayloadExamples200ResponseAnsweredEvent, WebhookPayloadExamples200ResponseAnsweredEventBuilder> {
  @BuiltValueField(wireName: r'event')
  String? get event;

  @BuiltValueField(wireName: r'call_id')
  String? get callId;

  @BuiltValueField(wireName: r'caller_number')
  String? get callerNumber;

  @BuiltValueField(wireName: r'called_number')
  String? get calledNumber;

  @BuiltValueField(wireName: r'answer_time')
  String? get answerTime;

  WebhookPayloadExamples200ResponseAnsweredEvent._();

  factory WebhookPayloadExamples200ResponseAnsweredEvent([void updates(WebhookPayloadExamples200ResponseAnsweredEventBuilder b)]) = _$WebhookPayloadExamples200ResponseAnsweredEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookPayloadExamples200ResponseAnsweredEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookPayloadExamples200ResponseAnsweredEvent> get serializer => _$WebhookPayloadExamples200ResponseAnsweredEventSerializer();
}

class _$WebhookPayloadExamples200ResponseAnsweredEventSerializer implements PrimitiveSerializer<WebhookPayloadExamples200ResponseAnsweredEvent> {
  @override
  final Iterable<Type> types = const [WebhookPayloadExamples200ResponseAnsweredEvent, _$WebhookPayloadExamples200ResponseAnsweredEvent];

  @override
  final String wireName = r'WebhookPayloadExamples200ResponseAnsweredEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookPayloadExamples200ResponseAnsweredEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(String),
      );
    }
    if (object.callId != null) {
      yield r'call_id';
      yield serializers.serialize(
        object.callId,
        specifiedType: const FullType(String),
      );
    }
    if (object.callerNumber != null) {
      yield r'caller_number';
      yield serializers.serialize(
        object.callerNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.calledNumber != null) {
      yield r'called_number';
      yield serializers.serialize(
        object.calledNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.answerTime != null) {
      yield r'answer_time';
      yield serializers.serialize(
        object.answerTime,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookPayloadExamples200ResponseAnsweredEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookPayloadExamples200ResponseAnsweredEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.event = valueDes;
          break;
        case r'call_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callId = valueDes;
          break;
        case r'caller_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerNumber = valueDes;
          break;
        case r'called_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.calledNumber = valueDes;
          break;
        case r'answer_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answerTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookPayloadExamples200ResponseAnsweredEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookPayloadExamples200ResponseAnsweredEventBuilder();
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

