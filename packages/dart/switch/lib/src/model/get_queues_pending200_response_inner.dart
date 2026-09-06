//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_queues_pending200_response_inner.g.dart';

/// Pending call information from Redis queue data
///
/// Properties:
/// * [queueNumber] - Kuyruk numarası
/// * [uuid] - Çağrı UUID'si
/// * [callUuid] - Çağrı UUID'si
/// * [callerId] - Arayan numara
/// * [joinedAt] - Kuyruğa katılma zamanı (timestamp)
/// * [waitTime] - Bekleme süresi (saniye)
@BuiltValue()
abstract class GetQueuesPending200ResponseInner implements Built<GetQueuesPending200ResponseInner, GetQueuesPending200ResponseInnerBuilder> {
  /// Kuyruk numarası
  @BuiltValueField(wireName: r'queue_number')
  String? get queueNumber;

  /// Çağrı UUID'si
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// Çağrı UUID'si
  @BuiltValueField(wireName: r'call_uuid')
  String? get callUuid;

  /// Arayan numara
  @BuiltValueField(wireName: r'caller_id')
  String? get callerId;

  /// Kuyruğa katılma zamanı (timestamp)
  @BuiltValueField(wireName: r'joined_at')
  String? get joinedAt;

  /// Bekleme süresi (saniye)
  @BuiltValueField(wireName: r'wait_time')
  int? get waitTime;

  GetQueuesPending200ResponseInner._();

  factory GetQueuesPending200ResponseInner([void updates(GetQueuesPending200ResponseInnerBuilder b)]) = _$GetQueuesPending200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetQueuesPending200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetQueuesPending200ResponseInner> get serializer => _$GetQueuesPending200ResponseInnerSerializer();
}

class _$GetQueuesPending200ResponseInnerSerializer implements PrimitiveSerializer<GetQueuesPending200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetQueuesPending200ResponseInner, _$GetQueuesPending200ResponseInner];

  @override
  final String wireName = r'GetQueuesPending200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetQueuesPending200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.queueNumber != null) {
      yield r'queue_number';
      yield serializers.serialize(
        object.queueNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
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
    if (object.callerId != null) {
      yield r'caller_id';
      yield serializers.serialize(
        object.callerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.joinedAt != null) {
      yield r'joined_at';
      yield serializers.serialize(
        object.joinedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.waitTime != null) {
      yield r'wait_time';
      yield serializers.serialize(
        object.waitTime,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetQueuesPending200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetQueuesPending200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queue_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queueNumber = valueDes;
          break;
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uuid = valueDes;
          break;
        case r'call_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callUuid = valueDes;
          break;
        case r'caller_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerId = valueDes;
          break;
        case r'joined_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.joinedAt = valueDes;
          break;
        case r'wait_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.waitTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetQueuesPending200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetQueuesPending200ResponseInnerBuilder();
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

