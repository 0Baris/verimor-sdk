//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_voicemail_messages200_response_messages_inner.g.dart';

/// GetVoicemailMessages200ResponseMessagesInner
///
/// Properties:
/// * [startStamp] - Telesekreter mesajının bırakıldığı zaman
/// * [readStamp] - Telesekreter mesajı okunduysa, okunma zamanı (OİM'den, IVR'dan veya API'den ses kaydı dinlendiği zaman)
/// * [userNumber] - Mesajın bırakıldığı dahili numarası
/// * [uuid] - Bu mesajın kayıt numarası. Aynı zamanda ilgili çağrının numarasıdır, CDR kayıtlarıyla ilişkilidir
/// * [callerIdName] - Mesajı bırakan kişinin ismi
/// * [callerIdNumber] - Mesajı bırakan numara
/// * [duration] - Ses kaydının süresi
@BuiltValue()
abstract class GetVoicemailMessages200ResponseMessagesInner implements Built<GetVoicemailMessages200ResponseMessagesInner, GetVoicemailMessages200ResponseMessagesInnerBuilder> {
  /// Telesekreter mesajının bırakıldığı zaman
  @BuiltValueField(wireName: r'start_stamp')
  String get startStamp;

  /// Telesekreter mesajı okunduysa, okunma zamanı (OİM'den, IVR'dan veya API'den ses kaydı dinlendiği zaman)
  @BuiltValueField(wireName: r'read_stamp')
  String get readStamp;

  /// Mesajın bırakıldığı dahili numarası
  @BuiltValueField(wireName: r'user_number')
  String get userNumber;

  /// Bu mesajın kayıt numarası. Aynı zamanda ilgili çağrının numarasıdır, CDR kayıtlarıyla ilişkilidir
  @BuiltValueField(wireName: r'uuid')
  String get uuid;

  /// Mesajı bırakan kişinin ismi
  @BuiltValueField(wireName: r'caller_id_name')
  String get callerIdName;

  /// Mesajı bırakan numara
  @BuiltValueField(wireName: r'caller_id_number')
  String get callerIdNumber;

  /// Ses kaydının süresi
  @BuiltValueField(wireName: r'duration')
  String get duration;

  GetVoicemailMessages200ResponseMessagesInner._();

  factory GetVoicemailMessages200ResponseMessagesInner([void updates(GetVoicemailMessages200ResponseMessagesInnerBuilder b)]) = _$GetVoicemailMessages200ResponseMessagesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetVoicemailMessages200ResponseMessagesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetVoicemailMessages200ResponseMessagesInner> get serializer => _$GetVoicemailMessages200ResponseMessagesInnerSerializer();
}

class _$GetVoicemailMessages200ResponseMessagesInnerSerializer implements PrimitiveSerializer<GetVoicemailMessages200ResponseMessagesInner> {
  @override
  final Iterable<Type> types = const [GetVoicemailMessages200ResponseMessagesInner, _$GetVoicemailMessages200ResponseMessagesInner];

  @override
  final String wireName = r'GetVoicemailMessages200ResponseMessagesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetVoicemailMessages200ResponseMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'start_stamp';
    yield serializers.serialize(
      object.startStamp,
      specifiedType: const FullType(String),
    );
    yield r'read_stamp';
    yield serializers.serialize(
      object.readStamp,
      specifiedType: const FullType(String),
    );
    yield r'user_number';
    yield serializers.serialize(
      object.userNumber,
      specifiedType: const FullType(String),
    );
    yield r'uuid';
    yield serializers.serialize(
      object.uuid,
      specifiedType: const FullType(String),
    );
    yield r'caller_id_name';
    yield serializers.serialize(
      object.callerIdName,
      specifiedType: const FullType(String),
    );
    yield r'caller_id_number';
    yield serializers.serialize(
      object.callerIdNumber,
      specifiedType: const FullType(String),
    );
    yield r'duration';
    yield serializers.serialize(
      object.duration,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetVoicemailMessages200ResponseMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetVoicemailMessages200ResponseMessagesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startStamp = valueDes;
          break;
        case r'read_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readStamp = valueDes;
          break;
        case r'user_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userNumber = valueDes;
          break;
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uuid = valueDes;
          break;
        case r'caller_id_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerIdName = valueDes;
          break;
        case r'caller_id_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerIdNumber = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.duration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetVoicemailMessages200ResponseMessagesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVoicemailMessages200ResponseMessagesInnerBuilder();
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

