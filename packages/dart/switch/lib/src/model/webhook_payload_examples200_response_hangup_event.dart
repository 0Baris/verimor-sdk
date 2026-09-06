//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_payload_examples200_response_hangup_event.g.dart';

/// Çağrı sonlandığında gönderilen payload
///
/// Properties:
/// * [event] 
/// * [callId] 
/// * [callerNumber] 
/// * [calledNumber] 
/// * [duration] 
/// * [hangupCause] 
@BuiltValue()
abstract class WebhookPayloadExamples200ResponseHangupEvent implements Built<WebhookPayloadExamples200ResponseHangupEvent, WebhookPayloadExamples200ResponseHangupEventBuilder> {
  @BuiltValueField(wireName: r'event')
  String? get event;

  @BuiltValueField(wireName: r'call_id')
  String? get callId;

  @BuiltValueField(wireName: r'caller_number')
  String? get callerNumber;

  @BuiltValueField(wireName: r'called_number')
  String? get calledNumber;

  @BuiltValueField(wireName: r'duration')
  int? get duration;

  @BuiltValueField(wireName: r'hangup_cause')
  String? get hangupCause;

  WebhookPayloadExamples200ResponseHangupEvent._();

  factory WebhookPayloadExamples200ResponseHangupEvent([void updates(WebhookPayloadExamples200ResponseHangupEventBuilder b)]) = _$WebhookPayloadExamples200ResponseHangupEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookPayloadExamples200ResponseHangupEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookPayloadExamples200ResponseHangupEvent> get serializer => _$WebhookPayloadExamples200ResponseHangupEventSerializer();
}

class _$WebhookPayloadExamples200ResponseHangupEventSerializer implements PrimitiveSerializer<WebhookPayloadExamples200ResponseHangupEvent> {
  @override
  final Iterable<Type> types = const [WebhookPayloadExamples200ResponseHangupEvent, _$WebhookPayloadExamples200ResponseHangupEvent];

  @override
  final String wireName = r'WebhookPayloadExamples200ResponseHangupEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookPayloadExamples200ResponseHangupEvent object, {
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
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.hangupCause != null) {
      yield r'hangup_cause';
      yield serializers.serialize(
        object.hangupCause,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookPayloadExamples200ResponseHangupEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookPayloadExamples200ResponseHangupEventBuilder result,
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
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'hangup_cause':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hangupCause = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookPayloadExamples200ResponseHangupEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookPayloadExamples200ResponseHangupEventBuilder();
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

