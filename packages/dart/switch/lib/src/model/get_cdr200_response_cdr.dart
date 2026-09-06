//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cdr200_response_cdr.g.dart';

/// GetCdr200ResponseCdr
///
/// Properties:
/// * [direction] - Çağrı yönü
/// * [callerIdNumber] - Arayan numara
/// * [destinationNumber] - Hedef numara
/// * [result] - Çağrı sonucu
/// * [sipHangupDisposition] - SIP sonlandırma nedeni
/// * [missed] - Cevapsız çağrı mı?
/// * [returnUuid] - Return UUID
/// * [callUuid] - Çağrı UUID
/// * [startStamp] - Çağrı başlangıç zamanı
/// * [answerStamp] - Çağrı cevaplanma zamanı
/// * [endStamp] - Çağrı bitiş zamanı
/// * [duration] - Çağrı süresi (SS:dd:ss)
/// * [talkDuration] - Konuşma süresi (SS:dd:ss)
/// * [queueWaitSeconds] - Kuyruk bekleme süresi (SS:dd:ss)
/// * [recordingPresent] - Kayıt durumu
@BuiltValue()
abstract class GetCdr200ResponseCdr implements Built<GetCdr200ResponseCdr, GetCdr200ResponseCdrBuilder> {
  /// Çağrı yönü
  @BuiltValueField(wireName: r'direction')
  String? get direction;

  /// Arayan numara
  @BuiltValueField(wireName: r'caller_id_number')
  String? get callerIdNumber;

  /// Hedef numara
  @BuiltValueField(wireName: r'destination_number')
  String? get destinationNumber;

  /// Çağrı sonucu
  @BuiltValueField(wireName: r'result')
  String? get result;

  /// SIP sonlandırma nedeni
  @BuiltValueField(wireName: r'sip_hangup_disposition')
  String? get sipHangupDisposition;

  /// Cevapsız çağrı mı?
  @BuiltValueField(wireName: r'missed')
  bool? get missed;

  /// Return UUID
  @BuiltValueField(wireName: r'return_uuid')
  String? get returnUuid;

  /// Çağrı UUID
  @BuiltValueField(wireName: r'call_uuid')
  String? get callUuid;

  /// Çağrı başlangıç zamanı
  @BuiltValueField(wireName: r'start_stamp')
  String? get startStamp;

  /// Çağrı cevaplanma zamanı
  @BuiltValueField(wireName: r'answer_stamp')
  String? get answerStamp;

  /// Çağrı bitiş zamanı
  @BuiltValueField(wireName: r'end_stamp')
  String? get endStamp;

  /// Çağrı süresi (SS:dd:ss)
  @BuiltValueField(wireName: r'duration')
  String? get duration;

  /// Konuşma süresi (SS:dd:ss)
  @BuiltValueField(wireName: r'talk_duration')
  String? get talkDuration;

  /// Kuyruk bekleme süresi (SS:dd:ss)
  @BuiltValueField(wireName: r'queue_wait_seconds')
  String? get queueWaitSeconds;

  /// Kayıt durumu
  @BuiltValueField(wireName: r'recording_present')
  String? get recordingPresent;

  GetCdr200ResponseCdr._();

  factory GetCdr200ResponseCdr([void updates(GetCdr200ResponseCdrBuilder b)]) = _$GetCdr200ResponseCdr;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCdr200ResponseCdrBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCdr200ResponseCdr> get serializer => _$GetCdr200ResponseCdrSerializer();
}

class _$GetCdr200ResponseCdrSerializer implements PrimitiveSerializer<GetCdr200ResponseCdr> {
  @override
  final Iterable<Type> types = const [GetCdr200ResponseCdr, _$GetCdr200ResponseCdr];

  @override
  final String wireName = r'GetCdr200ResponseCdr';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCdr200ResponseCdr object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(String),
      );
    }
    if (object.callerIdNumber != null) {
      yield r'caller_id_number';
      yield serializers.serialize(
        object.callerIdNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.destinationNumber != null) {
      yield r'destination_number';
      yield serializers.serialize(
        object.destinationNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(String),
      );
    }
    if (object.sipHangupDisposition != null) {
      yield r'sip_hangup_disposition';
      yield serializers.serialize(
        object.sipHangupDisposition,
        specifiedType: const FullType(String),
      );
    }
    if (object.missed != null) {
      yield r'missed';
      yield serializers.serialize(
        object.missed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.returnUuid != null) {
      yield r'return_uuid';
      yield serializers.serialize(
        object.returnUuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.callUuid != null) {
      yield r'call_uuid';
      yield serializers.serialize(
        object.callUuid,
        specifiedType: const FullType(String),
      );
    }
    if (object.startStamp != null) {
      yield r'start_stamp';
      yield serializers.serialize(
        object.startStamp,
        specifiedType: const FullType(String),
      );
    }
    if (object.answerStamp != null) {
      yield r'answer_stamp';
      yield serializers.serialize(
        object.answerStamp,
        specifiedType: const FullType(String),
      );
    }
    if (object.endStamp != null) {
      yield r'end_stamp';
      yield serializers.serialize(
        object.endStamp,
        specifiedType: const FullType(String),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(String),
      );
    }
    if (object.talkDuration != null) {
      yield r'talk_duration';
      yield serializers.serialize(
        object.talkDuration,
        specifiedType: const FullType(String),
      );
    }
    if (object.queueWaitSeconds != null) {
      yield r'queue_wait_seconds';
      yield serializers.serialize(
        object.queueWaitSeconds,
        specifiedType: const FullType(String),
      );
    }
    if (object.recordingPresent != null) {
      yield r'recording_present';
      yield serializers.serialize(
        object.recordingPresent,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCdr200ResponseCdr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCdr200ResponseCdrBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.direction = valueDes;
          break;
        case r'caller_id_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerIdNumber = valueDes;
          break;
        case r'destination_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationNumber = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        case r'sip_hangup_disposition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sipHangupDisposition = valueDes;
          break;
        case r'missed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.missed = valueDes;
          break;
        case r'return_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.returnUuid = valueDes;
          break;
        case r'call_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callUuid = valueDes;
          break;
        case r'start_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startStamp = valueDes;
          break;
        case r'answer_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answerStamp = valueDes;
          break;
        case r'end_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endStamp = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.duration = valueDes;
          break;
        case r'talk_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.talkDuration = valueDes;
          break;
        case r'queue_wait_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queueWaitSeconds = valueDes;
          break;
        case r'recording_present':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordingPresent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCdr200ResponseCdr deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCdr200ResponseCdrBuilder();
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

