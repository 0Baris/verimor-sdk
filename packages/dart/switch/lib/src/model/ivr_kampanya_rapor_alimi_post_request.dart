//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ivr_kampanya_rapor_alimi_post_request.g.dart';

/// IVRKampanyaRaporAlimiPostRequest
///
/// Properties:
/// * [notificationId] - Bu bildirime ait unique id.
/// * [notificationDate] - Bildirimi yapılan olayın gerçekleştiği tarih saat.
/// * [domainId] - Bulutsantral ID'si.
/// * [ivrCampaignId] - Otomatik IVR arama kampanyasının ID'si.
/// * [ivrCampaignName] - Otomatik IVR arama kampanyasının adı.
/// * [ivrLeadId] - Kampanyadaki numaranın ID'si.
/// * [phone] - Aranan telefon numarası.
/// * [digit] - Aranan kişinin yaptığı tuşlama. Boş string (\"\"): Çağrı başlamadı. 0-9: Geçerli tuşlama. -: timeout. !4: Geçersiz tuşlama.
/// * [callUuid] - Tuşlama için yapılan çağrının UUID'si.
/// * [status] - Çağrı durumu. 'Cevaplandı', 'Cevapsız', 'Reddedildi', 'Hata' gibi açıklamaları içerir. 'Cevaplandı' hariç her durum hata olarak yorumlanabilir.
@BuiltValue()
abstract class IVRKampanyaRaporAlimiPostRequest implements Built<IVRKampanyaRaporAlimiPostRequest, IVRKampanyaRaporAlimiPostRequestBuilder> {
  /// Bu bildirime ait unique id.
  @BuiltValueField(wireName: r'notification_id')
  int? get notificationId;

  /// Bildirimi yapılan olayın gerçekleştiği tarih saat.
  @BuiltValueField(wireName: r'notification_date')
  DateTime? get notificationDate;

  /// Bulutsantral ID'si.
  @BuiltValueField(wireName: r'domain_id')
  String? get domainId;

  /// Otomatik IVR arama kampanyasının ID'si.
  @BuiltValueField(wireName: r'ivr_campaign_id')
  int? get ivrCampaignId;

  /// Otomatik IVR arama kampanyasının adı.
  @BuiltValueField(wireName: r'ivr_campaign_name')
  String? get ivrCampaignName;

  /// Kampanyadaki numaranın ID'si.
  @BuiltValueField(wireName: r'ivr_lead_id')
  int? get ivrLeadId;

  /// Aranan telefon numarası.
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Aranan kişinin yaptığı tuşlama. Boş string (\"\"): Çağrı başlamadı. 0-9: Geçerli tuşlama. -: timeout. !4: Geçersiz tuşlama.
  @BuiltValueField(wireName: r'digit')
  String? get digit;

  /// Tuşlama için yapılan çağrının UUID'si.
  @BuiltValueField(wireName: r'call_uuid')
  String? get callUuid;

  /// Çağrı durumu. 'Cevaplandı', 'Cevapsız', 'Reddedildi', 'Hata' gibi açıklamaları içerir. 'Cevaplandı' hariç her durum hata olarak yorumlanabilir.
  @BuiltValueField(wireName: r'status')
  String? get status;

  IVRKampanyaRaporAlimiPostRequest._();

  factory IVRKampanyaRaporAlimiPostRequest([void updates(IVRKampanyaRaporAlimiPostRequestBuilder b)]) = _$IVRKampanyaRaporAlimiPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IVRKampanyaRaporAlimiPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IVRKampanyaRaporAlimiPostRequest> get serializer => _$IVRKampanyaRaporAlimiPostRequestSerializer();
}

class _$IVRKampanyaRaporAlimiPostRequestSerializer implements PrimitiveSerializer<IVRKampanyaRaporAlimiPostRequest> {
  @override
  final Iterable<Type> types = const [IVRKampanyaRaporAlimiPostRequest, _$IVRKampanyaRaporAlimiPostRequest];

  @override
  final String wireName = r'IVRKampanyaRaporAlimiPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IVRKampanyaRaporAlimiPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.notificationId != null) {
      yield r'notification_id';
      yield serializers.serialize(
        object.notificationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.notificationDate != null) {
      yield r'notification_date';
      yield serializers.serialize(
        object.notificationDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.domainId != null) {
      yield r'domain_id';
      yield serializers.serialize(
        object.domainId,
        specifiedType: const FullType(String),
      );
    }
    if (object.ivrCampaignId != null) {
      yield r'ivr_campaign_id';
      yield serializers.serialize(
        object.ivrCampaignId,
        specifiedType: const FullType(int),
      );
    }
    if (object.ivrCampaignName != null) {
      yield r'ivr_campaign_name';
      yield serializers.serialize(
        object.ivrCampaignName,
        specifiedType: const FullType(String),
      );
    }
    if (object.ivrLeadId != null) {
      yield r'ivr_lead_id';
      yield serializers.serialize(
        object.ivrLeadId,
        specifiedType: const FullType(int),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.digit != null) {
      yield r'digit';
      yield serializers.serialize(
        object.digit,
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IVRKampanyaRaporAlimiPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IVRKampanyaRaporAlimiPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'notification_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.notificationId = valueDes;
          break;
        case r'notification_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.notificationDate = valueDes;
          break;
        case r'domain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domainId = valueDes;
          break;
        case r'ivr_campaign_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ivrCampaignId = valueDes;
          break;
        case r'ivr_campaign_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ivrCampaignName = valueDes;
          break;
        case r'ivr_lead_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ivrLeadId = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'digit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digit = valueDes;
          break;
        case r'call_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callUuid = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IVRKampanyaRaporAlimiPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IVRKampanyaRaporAlimiPostRequestBuilder();
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

