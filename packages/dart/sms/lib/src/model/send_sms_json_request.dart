//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_sms/src/model/send_sms_json_request_messages_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_sms_json_request.g.dart';

/// SendSmsJsonRequest
///
/// Properties:
/// * [username] - API kullanıcı adı
/// * [password] - API şifresi
/// * [sourceAddr] - Gönderici başlığı
/// * [validFor] - Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer 00:01, Maksimum değer 48:00)
/// * [datacoding] - Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode)
/// * [isCommercial] - Ticari mesaj mı
/// * [iysRecipientType] - İYS alıcı tipi (BIREYSEL/TACIR)
/// * [sendAt] - Gönderim zamanı (ISO 8601 formatında). Boş ise mesaj hemen gönderilir.
/// * [customId] - Özel kampanya ID'si
/// * [addRet] - true ise gönderici başlığına ait ret bildirimi ('Ret: ...') her mesajın sonuna otomatik eklenir. Yalnızca bu (POST/JSON) yönteminde geçerlidir.
/// * [messages] 
@BuiltValue()
abstract class SendSmsJsonRequest implements Built<SendSmsJsonRequest, SendSmsJsonRequestBuilder> {
  /// API kullanıcı adı
  @BuiltValueField(wireName: r'username')
  String get username;

  /// API şifresi
  @BuiltValueField(wireName: r'password')
  String get password;

  /// Gönderici başlığı
  @BuiltValueField(wireName: r'source_addr')
  String? get sourceAddr;

  /// Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer 00:01, Maksimum değer 48:00)
  @BuiltValueField(wireName: r'valid_for')
  String? get validFor;

  /// Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode)
  @BuiltValueField(wireName: r'datacoding')
  SendSmsJsonRequestDatacodingEnum? get datacoding;
  // enum datacodingEnum {  0,  1,  2,  };

  /// Ticari mesaj mı
  @BuiltValueField(wireName: r'is_commercial')
  bool? get isCommercial;

  /// İYS alıcı tipi (BIREYSEL/TACIR)
  @BuiltValueField(wireName: r'iys_recipient_type')
  String? get iysRecipientType;

  /// Gönderim zamanı (ISO 8601 formatında). Boş ise mesaj hemen gönderilir.
  @BuiltValueField(wireName: r'send_at')
  String? get sendAt;

  /// Özel kampanya ID'si
  @BuiltValueField(wireName: r'custom_id')
  String? get customId;

  /// true ise gönderici başlığına ait ret bildirimi ('Ret: ...') her mesajın sonuna otomatik eklenir. Yalnızca bu (POST/JSON) yönteminde geçerlidir.
  @BuiltValueField(wireName: r'add_ret')
  bool? get addRet;

  @BuiltValueField(wireName: r'messages')
  BuiltList<SendSmsJsonRequestMessagesInner> get messages;

  SendSmsJsonRequest._();

  factory SendSmsJsonRequest([void updates(SendSmsJsonRequestBuilder b)]) = _$SendSmsJsonRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendSmsJsonRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendSmsJsonRequest> get serializer => _$SendSmsJsonRequestSerializer();
}

class _$SendSmsJsonRequestSerializer implements PrimitiveSerializer<SendSmsJsonRequest> {
  @override
  final Iterable<Type> types = const [SendSmsJsonRequest, _$SendSmsJsonRequest];

  @override
  final String wireName = r'SendSmsJsonRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendSmsJsonRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.sourceAddr != null) {
      yield r'source_addr';
      yield serializers.serialize(
        object.sourceAddr,
        specifiedType: const FullType(String),
      );
    }
    if (object.validFor != null) {
      yield r'valid_for';
      yield serializers.serialize(
        object.validFor,
        specifiedType: const FullType(String),
      );
    }
    if (object.datacoding != null) {
      yield r'datacoding';
      yield serializers.serialize(
        object.datacoding,
        specifiedType: const FullType(SendSmsJsonRequestDatacodingEnum),
      );
    }
    if (object.isCommercial != null) {
      yield r'is_commercial';
      yield serializers.serialize(
        object.isCommercial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.iysRecipientType != null) {
      yield r'iys_recipient_type';
      yield serializers.serialize(
        object.iysRecipientType,
        specifiedType: const FullType(String),
      );
    }
    if (object.sendAt != null) {
      yield r'send_at';
      yield serializers.serialize(
        object.sendAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.customId != null) {
      yield r'custom_id';
      yield serializers.serialize(
        object.customId,
        specifiedType: const FullType(String),
      );
    }
    if (object.addRet != null) {
      yield r'add_ret';
      yield serializers.serialize(
        object.addRet,
        specifiedType: const FullType(bool),
      );
    }
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType: const FullType(BuiltList, [FullType(SendSmsJsonRequestMessagesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SendSmsJsonRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendSmsJsonRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'source_addr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAddr = valueDes;
          break;
        case r'valid_for':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.validFor = valueDes;
          break;
        case r'datacoding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendSmsJsonRequestDatacodingEnum),
          ) as SendSmsJsonRequestDatacodingEnum;
          result.datacoding = valueDes;
          break;
        case r'is_commercial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCommercial = valueDes;
          break;
        case r'iys_recipient_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iysRecipientType = valueDes;
          break;
        case r'send_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sendAt = valueDes;
          break;
        case r'custom_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customId = valueDes;
          break;
        case r'add_ret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.addRet = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendSmsJsonRequestMessagesInner)]),
          ) as BuiltList<SendSmsJsonRequestMessagesInner>;
          result.messages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendSmsJsonRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendSmsJsonRequestBuilder();
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

class SendSmsJsonRequestDatacodingEnum extends EnumClass {

  /// Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode)
  @BuiltValueEnumConst(wireNumber: 0)
  static const SendSmsJsonRequestDatacodingEnum number0 = _$sendSmsJsonRequestDatacodingEnum_number0;
  /// Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode)
  @BuiltValueEnumConst(wireNumber: 1)
  static const SendSmsJsonRequestDatacodingEnum number1 = _$sendSmsJsonRequestDatacodingEnum_number1;
  /// Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode)
  @BuiltValueEnumConst(wireNumber: 2)
  static const SendSmsJsonRequestDatacodingEnum number2 = _$sendSmsJsonRequestDatacodingEnum_number2;

  static Serializer<SendSmsJsonRequestDatacodingEnum> get serializer => _$sendSmsJsonRequestDatacodingEnumSerializer;

  const SendSmsJsonRequestDatacodingEnum._(String name): super(name);

  static BuiltSet<SendSmsJsonRequestDatacodingEnum> get values => _$sendSmsJsonRequestDatacodingEnumValues;
  static SendSmsJsonRequestDatacodingEnum valueOf(String name) => _$sendSmsJsonRequestDatacodingEnumValueOf(name);
}

