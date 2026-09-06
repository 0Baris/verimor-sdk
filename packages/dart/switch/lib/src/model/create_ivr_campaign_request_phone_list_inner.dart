//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_ivr_campaign_request_phone_list_inner.g.dart';

/// CreateIvrCampaignRequestPhoneListInner
///
/// Properties:
/// * [phone] - Aranacak numara.
/// * [phrase] - Bu numaraya okunacak özel mesaj.
/// * [lang] - Mesajın dili. Gönderilmediği durumda varsayılan olarak \"tr-TR\" kabul edilir.
@BuiltValue()
abstract class CreateIvrCampaignRequestPhoneListInner implements Built<CreateIvrCampaignRequestPhoneListInner, CreateIvrCampaignRequestPhoneListInnerBuilder> {
  /// Aranacak numara.
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Bu numaraya okunacak özel mesaj.
  @BuiltValueField(wireName: r'phrase')
  String? get phrase;

  /// Mesajın dili. Gönderilmediği durumda varsayılan olarak \"tr-TR\" kabul edilir.
  @BuiltValueField(wireName: r'lang')
  String? get lang;

  CreateIvrCampaignRequestPhoneListInner._();

  factory CreateIvrCampaignRequestPhoneListInner([void updates(CreateIvrCampaignRequestPhoneListInnerBuilder b)]) = _$CreateIvrCampaignRequestPhoneListInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateIvrCampaignRequestPhoneListInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateIvrCampaignRequestPhoneListInner> get serializer => _$CreateIvrCampaignRequestPhoneListInnerSerializer();
}

class _$CreateIvrCampaignRequestPhoneListInnerSerializer implements PrimitiveSerializer<CreateIvrCampaignRequestPhoneListInner> {
  @override
  final Iterable<Type> types = const [CreateIvrCampaignRequestPhoneListInner, _$CreateIvrCampaignRequestPhoneListInner];

  @override
  final String wireName = r'CreateIvrCampaignRequestPhoneListInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateIvrCampaignRequestPhoneListInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.phrase != null) {
      yield r'phrase';
      yield serializers.serialize(
        object.phrase,
        specifiedType: const FullType(String),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateIvrCampaignRequestPhoneListInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateIvrCampaignRequestPhoneListInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'phrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phrase = valueDes;
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lang = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateIvrCampaignRequestPhoneListInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIvrCampaignRequestPhoneListInnerBuilder();
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

