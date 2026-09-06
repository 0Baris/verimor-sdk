//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cdr200_response_call_flow_inner.g.dart';

/// GetCdr200ResponseCallFlowInner
///
/// Properties:
/// * [destinationNumber] - Bu bacak için hedef numara
/// * [startStamp] - Bu bacak için başlangıç zamanı
/// * [answerStamp] - Bu bacak için cevaplanma zamanı
/// * [endStamp] - Bu bacak için bitiş zamanı
/// * [duration] - Bu bacak için süre (SS:dd:ss)
/// * [ipAddress] - Kullanılan IP adresi
/// * [sipUserAgent] - SIP User Agent
/// * [writeCodec] - Yazma codec'i
/// * [readCodec] - Okuma codec'i
/// * [result] - Bu bacak için sonuç
@BuiltValue()
abstract class GetCdr200ResponseCallFlowInner implements Built<GetCdr200ResponseCallFlowInner, GetCdr200ResponseCallFlowInnerBuilder> {
  /// Bu bacak için hedef numara
  @BuiltValueField(wireName: r'destination_number')
  String? get destinationNumber;

  /// Bu bacak için başlangıç zamanı
  @BuiltValueField(wireName: r'start_stamp')
  String? get startStamp;

  /// Bu bacak için cevaplanma zamanı
  @BuiltValueField(wireName: r'answer_stamp')
  String? get answerStamp;

  /// Bu bacak için bitiş zamanı
  @BuiltValueField(wireName: r'end_stamp')
  String? get endStamp;

  /// Bu bacak için süre (SS:dd:ss)
  @BuiltValueField(wireName: r'duration')
  String? get duration;

  /// Kullanılan IP adresi
  @BuiltValueField(wireName: r'ip_address')
  String? get ipAddress;

  /// SIP User Agent
  @BuiltValueField(wireName: r'sip_user_agent')
  String? get sipUserAgent;

  /// Yazma codec'i
  @BuiltValueField(wireName: r'write_codec')
  String? get writeCodec;

  /// Okuma codec'i
  @BuiltValueField(wireName: r'read_codec')
  String? get readCodec;

  /// Bu bacak için sonuç
  @BuiltValueField(wireName: r'result')
  String? get result;

  GetCdr200ResponseCallFlowInner._();

  factory GetCdr200ResponseCallFlowInner([void updates(GetCdr200ResponseCallFlowInnerBuilder b)]) = _$GetCdr200ResponseCallFlowInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCdr200ResponseCallFlowInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCdr200ResponseCallFlowInner> get serializer => _$GetCdr200ResponseCallFlowInnerSerializer();
}

class _$GetCdr200ResponseCallFlowInnerSerializer implements PrimitiveSerializer<GetCdr200ResponseCallFlowInner> {
  @override
  final Iterable<Type> types = const [GetCdr200ResponseCallFlowInner, _$GetCdr200ResponseCallFlowInner];

  @override
  final String wireName = r'GetCdr200ResponseCallFlowInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCdr200ResponseCallFlowInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.destinationNumber != null) {
      yield r'destination_number';
      yield serializers.serialize(
        object.destinationNumber,
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
    if (object.ipAddress != null) {
      yield r'ip_address';
      yield serializers.serialize(
        object.ipAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.sipUserAgent != null) {
      yield r'sip_user_agent';
      yield serializers.serialize(
        object.sipUserAgent,
        specifiedType: const FullType(String),
      );
    }
    if (object.writeCodec != null) {
      yield r'write_codec';
      yield serializers.serialize(
        object.writeCodec,
        specifiedType: const FullType(String),
      );
    }
    if (object.readCodec != null) {
      yield r'read_codec';
      yield serializers.serialize(
        object.readCodec,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCdr200ResponseCallFlowInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCdr200ResponseCallFlowInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'destination_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationNumber = valueDes;
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
        case r'ip_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipAddress = valueDes;
          break;
        case r'sip_user_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sipUserAgent = valueDes;
          break;
        case r'write_codec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.writeCodec = valueDes;
          break;
        case r'read_codec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readCodec = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCdr200ResponseCallFlowInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCdr200ResponseCallFlowInnerBuilder();
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

