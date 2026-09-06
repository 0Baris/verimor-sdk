//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'olay_bildirme_post_request.g.dart';

/// OlayBildirmePostRequest
///
/// Properties:
/// * [eventType] - Olay tipi. ringing, answer, hangup veya user_hangup döner.
/// * [domainId] - Bulutsantral ID'si.
/// * [direction] - Çağrının yönü. internal, inbound yada outbound döner.
/// * [callerIdNumber] - Arayan numara.
/// * [outboundCallerIdNumber] - Arayanın dış numarası.
/// * [destinationNumber] - Aranan numara.
/// * [dialedUser] - Aranan kişinin dahili numarası.
/// * [connectedUser] - Bağlanan (telefonu açan) dahili.
/// * [callUuid] - Çağrının uuid'si.
/// * [startStamp] - Çağrının başladığı zaman.
/// * [answerStamp] - Çağrının cevaplandığı zaman.
/// * [endStamp] - Çağrının sonlandığı zaman.
/// * [duration] - Konuşma süresi.
/// * [recordingPresent] - Çağrının ses kaydının olup olmadığı. true yada false döner.
/// * [answered] - Kaçan çağrı tespiti için kullanılır. Aranan taraf çağrıyı kabul ettiyse true döner.
/// * [queue] - Kuyruğun veya Çağrı grubunun numarası.
/// * [queueWaitDuration] - Kuyrukta bekleme süresi.
/// * [sipHangupDisposition] - Çağrının kimin tarafından kapatıldığı. caller ya da callee olarak döner.
/// * [hangupCause] - Çağrının kapanma sebebi.
/// * [failureStatus] - Çağrı başarısız ise hata kodu.
/// * [failurePhrase] - Çağrı başarısız ise hata mesajı.
@BuiltValue()
abstract class OlayBildirmePostRequest implements Built<OlayBildirmePostRequest, OlayBildirmePostRequestBuilder> {
  /// Olay tipi. ringing, answer, hangup veya user_hangup döner.
  @BuiltValueField(wireName: r'event_type')
  String? get eventType;

  /// Bulutsantral ID'si.
  @BuiltValueField(wireName: r'domain_id')
  String? get domainId;

  /// Çağrının yönü. internal, inbound yada outbound döner.
  @BuiltValueField(wireName: r'direction')
  String? get direction;

  /// Arayan numara.
  @BuiltValueField(wireName: r'caller_id_number')
  String? get callerIdNumber;

  /// Arayanın dış numarası.
  @BuiltValueField(wireName: r'outbound_caller_id_number')
  String? get outboundCallerIdNumber;

  /// Aranan numara.
  @BuiltValueField(wireName: r'destination_number')
  String? get destinationNumber;

  /// Aranan kişinin dahili numarası.
  @BuiltValueField(wireName: r'dialed_user')
  String? get dialedUser;

  /// Bağlanan (telefonu açan) dahili.
  @BuiltValueField(wireName: r'connected_user')
  String? get connectedUser;

  /// Çağrının uuid'si.
  @BuiltValueField(wireName: r'call_uuid')
  String? get callUuid;

  /// Çağrının başladığı zaman.
  @BuiltValueField(wireName: r'start_stamp')
  DateTime? get startStamp;

  /// Çağrının cevaplandığı zaman.
  @BuiltValueField(wireName: r'answer_stamp')
  DateTime? get answerStamp;

  /// Çağrının sonlandığı zaman.
  @BuiltValueField(wireName: r'end_stamp')
  DateTime? get endStamp;

  /// Konuşma süresi.
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  /// Çağrının ses kaydının olup olmadığı. true yada false döner.
  @BuiltValueField(wireName: r'recording_present')
  bool? get recordingPresent;

  /// Kaçan çağrı tespiti için kullanılır. Aranan taraf çağrıyı kabul ettiyse true döner.
  @BuiltValueField(wireName: r'answered')
  bool? get answered;

  /// Kuyruğun veya Çağrı grubunun numarası.
  @BuiltValueField(wireName: r'queue')
  String? get queue;

  /// Kuyrukta bekleme süresi.
  @BuiltValueField(wireName: r'queue_wait_duration')
  int? get queueWaitDuration;

  /// Çağrının kimin tarafından kapatıldığı. caller ya da callee olarak döner.
  @BuiltValueField(wireName: r'sip_hangup_disposition')
  String? get sipHangupDisposition;

  /// Çağrının kapanma sebebi.
  @BuiltValueField(wireName: r'hangup_cause')
  String? get hangupCause;

  /// Çağrı başarısız ise hata kodu.
  @BuiltValueField(wireName: r'failure_status')
  String? get failureStatus;

  /// Çağrı başarısız ise hata mesajı.
  @BuiltValueField(wireName: r'failure_phrase')
  String? get failurePhrase;

  OlayBildirmePostRequest._();

  factory OlayBildirmePostRequest([void updates(OlayBildirmePostRequestBuilder b)]) = _$OlayBildirmePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OlayBildirmePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OlayBildirmePostRequest> get serializer => _$OlayBildirmePostRequestSerializer();
}

class _$OlayBildirmePostRequestSerializer implements PrimitiveSerializer<OlayBildirmePostRequest> {
  @override
  final Iterable<Type> types = const [OlayBildirmePostRequest, _$OlayBildirmePostRequest];

  @override
  final String wireName = r'OlayBildirmePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OlayBildirmePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.eventType != null) {
      yield r'event_type';
      yield serializers.serialize(
        object.eventType,
        specifiedType: const FullType(String),
      );
    }
    if (object.domainId != null) {
      yield r'domain_id';
      yield serializers.serialize(
        object.domainId,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.outboundCallerIdNumber != null) {
      yield r'outbound_caller_id_number';
      yield serializers.serialize(
        object.outboundCallerIdNumber,
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
    if (object.dialedUser != null) {
      yield r'dialed_user';
      yield serializers.serialize(
        object.dialedUser,
        specifiedType: const FullType(String),
      );
    }
    if (object.connectedUser != null) {
      yield r'connected_user';
      yield serializers.serialize(
        object.connectedUser,
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
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.answerStamp != null) {
      yield r'answer_stamp';
      yield serializers.serialize(
        object.answerStamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endStamp != null) {
      yield r'end_stamp';
      yield serializers.serialize(
        object.endStamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.recordingPresent != null) {
      yield r'recording_present';
      yield serializers.serialize(
        object.recordingPresent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.answered != null) {
      yield r'answered';
      yield serializers.serialize(
        object.answered,
        specifiedType: const FullType(bool),
      );
    }
    if (object.queue != null) {
      yield r'queue';
      yield serializers.serialize(
        object.queue,
        specifiedType: const FullType(String),
      );
    }
    if (object.queueWaitDuration != null) {
      yield r'queue_wait_duration';
      yield serializers.serialize(
        object.queueWaitDuration,
        specifiedType: const FullType(int),
      );
    }
    if (object.sipHangupDisposition != null) {
      yield r'sip_hangup_disposition';
      yield serializers.serialize(
        object.sipHangupDisposition,
        specifiedType: const FullType(String),
      );
    }
    if (object.hangupCause != null) {
      yield r'hangup_cause';
      yield serializers.serialize(
        object.hangupCause,
        specifiedType: const FullType(String),
      );
    }
    if (object.failureStatus != null) {
      yield r'failure_status';
      yield serializers.serialize(
        object.failureStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.failurePhrase != null) {
      yield r'failure_phrase';
      yield serializers.serialize(
        object.failurePhrase,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OlayBildirmePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OlayBildirmePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventType = valueDes;
          break;
        case r'domain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainId = valueDes;
          break;
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
        case r'outbound_caller_id_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outboundCallerIdNumber = valueDes;
          break;
        case r'destination_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationNumber = valueDes;
          break;
        case r'dialed_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dialedUser = valueDes;
          break;
        case r'connected_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.connectedUser = valueDes;
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
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startStamp = valueDes;
          break;
        case r'answer_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.answerStamp = valueDes;
          break;
        case r'end_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endStamp = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'recording_present':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.recordingPresent = valueDes;
          break;
        case r'answered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.answered = valueDes;
          break;
        case r'queue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queue = valueDes;
          break;
        case r'queue_wait_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.queueWaitDuration = valueDes;
          break;
        case r'sip_hangup_disposition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sipHangupDisposition = valueDes;
          break;
        case r'hangup_cause':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hangupCause = valueDes;
          break;
        case r'failure_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.failureStatus = valueDes;
          break;
        case r'failure_phrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.failurePhrase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OlayBildirmePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OlayBildirmePostRequestBuilder();
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

