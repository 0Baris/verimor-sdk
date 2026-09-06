//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_payload_examples200_response_ringing_event.g.dart';

/// Çağrı çalmaya başladığında gönderilen payload
///
/// Properties:
/// * [event] 
/// * [callId] 
/// * [callerNumber] 
/// * [calledNumber] 
/// * [timestamp] 
@BuiltValue()
abstract class WebhookPayloadExamples200ResponseRingingEvent implements Built<WebhookPayloadExamples200ResponseRingingEvent, WebhookPayloadExamples200ResponseRingingEventBuilder> {
  @BuiltValueField(wireName: r'event')
  String? get event;

  @BuiltValueField(wireName: r'call_id')
  String? get callId;

  @BuiltValueField(wireName: r'caller_number')
  String? get callerNumber;

  @BuiltValueField(wireName: r'called_number')
  String? get calledNumber;

  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  WebhookPayloadExamples200ResponseRingingEvent._();

  factory WebhookPayloadExamples200ResponseRingingEvent([void updates(WebhookPayloadExamples200ResponseRingingEventBuilder b)]) = _$WebhookPayloadExamples200ResponseRingingEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookPayloadExamples200ResponseRingingEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookPayloadExamples200ResponseRingingEvent> get serializer => _$WebhookPayloadExamples200ResponseRingingEventSerializer();
}

class _$WebhookPayloadExamples200ResponseRingingEventSerializer implements PrimitiveSerializer<WebhookPayloadExamples200ResponseRingingEvent> {
  @override
  final Iterable<Type> types = const [WebhookPayloadExamples200ResponseRingingEvent, _$WebhookPayloadExamples200ResponseRingingEvent];

  @override
  final String wireName = r'WebhookPayloadExamples200ResponseRingingEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookPayloadExamples200ResponseRingingEvent object, {
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
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookPayloadExamples200ResponseRingingEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebhookPayloadExamples200ResponseRingingEventBuilder result,
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
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookPayloadExamples200ResponseRingingEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookPayloadExamples200ResponseRingingEventBuilder();
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

