//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_sms_json_request_messages_inner.g.dart';

/// SendSmsJsonRequestMessagesInner
///
/// Properties:
/// * [dest] - Hedef telefon numaraları (virgülle ayrılmış)
/// * [msg] - Gönderilecek mesaj
/// * [id] - Mesaj özel ID'si
/// * [iysRecipientType] - Mesaj bazında İYS alıcı tipi
@BuiltValue()
abstract class SendSmsJsonRequestMessagesInner implements Built<SendSmsJsonRequestMessagesInner, SendSmsJsonRequestMessagesInnerBuilder> {
  /// Hedef telefon numaraları (virgülle ayrılmış)
  @BuiltValueField(wireName: r'dest')
  String get dest;

  /// Gönderilecek mesaj
  @BuiltValueField(wireName: r'msg')
  String get msg;

  /// Mesaj özel ID'si
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Mesaj bazında İYS alıcı tipi
  @BuiltValueField(wireName: r'iys_recipient_type')
  String? get iysRecipientType;

  SendSmsJsonRequestMessagesInner._();

  factory SendSmsJsonRequestMessagesInner([void updates(SendSmsJsonRequestMessagesInnerBuilder b)]) = _$SendSmsJsonRequestMessagesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendSmsJsonRequestMessagesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendSmsJsonRequestMessagesInner> get serializer => _$SendSmsJsonRequestMessagesInnerSerializer();
}

class _$SendSmsJsonRequestMessagesInnerSerializer implements PrimitiveSerializer<SendSmsJsonRequestMessagesInner> {
  @override
  final Iterable<Type> types = const [SendSmsJsonRequestMessagesInner, _$SendSmsJsonRequestMessagesInner];

  @override
  final String wireName = r'SendSmsJsonRequestMessagesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendSmsJsonRequestMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dest';
    yield serializers.serialize(
      object.dest,
      specifiedType: const FullType(String),
    );
    yield r'msg';
    yield serializers.serialize(
      object.msg,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.iysRecipientType != null) {
      yield r'iys_recipient_type';
      yield serializers.serialize(
        object.iysRecipientType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendSmsJsonRequestMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendSmsJsonRequestMessagesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dest = valueDes;
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.msg = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'iys_recipient_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iysRecipientType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendSmsJsonRequestMessagesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendSmsJsonRequestMessagesInnerBuilder();
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

