//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cdrs200_response_cdrs_inner.g.dart';

/// GetCdrs200ResponseCdrsInner
///
/// Properties:
/// * [startStamp] - Çağrı başlangıç zamanı
/// * [direction] - Çağrı yönü (insan okunabilir)
/// * [callerIdNumber] - Arayan numara
/// * [callerIdName] - Arayan isim
/// * [destinationNumber] - Hedef numara
/// * [destinationName] - Hedef isim
/// * [duration] - Çağrı süresi (SS:dd:ss)
/// * [talkDuration] - Konuşma süresi (SS:dd:ss)
/// * [queueWaitSeconds] - Kuyruk bekleme süresi (SS:dd:ss)
/// * [queue] - Kuyruk adı
/// * [result] - Human-readable call result in Turkish
/// * [missed] - Cevapsız çağrı mı?
/// * [returnUuid] - Return UUID
/// * [recordingPresent] - Kayıt durumu
/// * [sipHangupDisposition] - SIP sonlandırma nedeni
/// * [callUuid] - Çağrı UUID
/// * [answerStamp] - Çağrı cevaplanma zamanı
/// * [endStamp] - Çağrı bitiş zamanı
@BuiltValue()
abstract class GetCdrs200ResponseCdrsInner implements Built<GetCdrs200ResponseCdrsInner, GetCdrs200ResponseCdrsInnerBuilder> {
  /// Çağrı başlangıç zamanı
  @BuiltValueField(wireName: r'start_stamp')
  String? get startStamp;

  /// Çağrı yönü (insan okunabilir)
  @BuiltValueField(wireName: r'direction')
  String? get direction;

  /// Arayan numara
  @BuiltValueField(wireName: r'caller_id_number')
  String? get callerIdNumber;

  /// Arayan isim
  @BuiltValueField(wireName: r'caller_id_name')
  String? get callerIdName;

  /// Hedef numara
  @BuiltValueField(wireName: r'destination_number')
  String? get destinationNumber;

  /// Hedef isim
  @BuiltValueField(wireName: r'destination_name')
  String? get destinationName;

  /// Çağrı süresi (SS:dd:ss)
  @BuiltValueField(wireName: r'duration')
  String? get duration;

  /// Konuşma süresi (SS:dd:ss)
  @BuiltValueField(wireName: r'talk_duration')
  String? get talkDuration;

  /// Kuyruk bekleme süresi (SS:dd:ss)
  @BuiltValueField(wireName: r'queue_wait_seconds')
  String? get queueWaitSeconds;

  /// Kuyruk adı
  @BuiltValueField(wireName: r'queue')
  String? get queue;

  /// Human-readable call result in Turkish
  @BuiltValueField(wireName: r'result')
  GetCdrs200ResponseCdrsInnerResultEnum? get result;
  // enum resultEnum {  Meşgul,  Vazgeçildi,  Cevapsız,  Cevaplandı,  Reddedildi,  Ses kodekleri uyumsuz,  Hatalı Numara,  Ulaşılamıyor,  İYS izni yok,  Hata,  Genel Hata,  Cihaz yönlendirmesi,  Çağrı bağlanamadı,  RTP zamanaşımı,  Santral kapatılıyor,  Katılımlı aktarım,  Çağrısı çekildi,  Cihazla iletişim sorunu,  İletişim sorunu,  Zamanaşımı,  Sesli görüşme yapamayan numara,  Diğer dahili cevapladı,  Desteklenmeyen kanal tipi,  Arama için santral uygun durumda değil,  Tanınmayan Çağrı ID numarası,  Geçersiz JSON kullanımı,  };

  /// Cevapsız çağrı mı?
  @BuiltValueField(wireName: r'missed')
  bool? get missed;

  /// Return UUID
  @BuiltValueField(wireName: r'return_uuid')
  String? get returnUuid;

  /// Kayıt durumu
  @BuiltValueField(wireName: r'recording_present')
  String? get recordingPresent;

  /// SIP sonlandırma nedeni
  @BuiltValueField(wireName: r'sip_hangup_disposition')
  String? get sipHangupDisposition;

  /// Çağrı UUID
  @BuiltValueField(wireName: r'call_uuid')
  String? get callUuid;

  /// Çağrı cevaplanma zamanı
  @BuiltValueField(wireName: r'answer_stamp')
  String? get answerStamp;

  /// Çağrı bitiş zamanı
  @BuiltValueField(wireName: r'end_stamp')
  String? get endStamp;

  GetCdrs200ResponseCdrsInner._();

  factory GetCdrs200ResponseCdrsInner([void updates(GetCdrs200ResponseCdrsInnerBuilder b)]) = _$GetCdrs200ResponseCdrsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCdrs200ResponseCdrsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCdrs200ResponseCdrsInner> get serializer => _$GetCdrs200ResponseCdrsInnerSerializer();
}

class _$GetCdrs200ResponseCdrsInnerSerializer implements PrimitiveSerializer<GetCdrs200ResponseCdrsInner> {
  @override
  final Iterable<Type> types = const [GetCdrs200ResponseCdrsInner, _$GetCdrs200ResponseCdrsInner];

  @override
  final String wireName = r'GetCdrs200ResponseCdrsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCdrs200ResponseCdrsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.startStamp != null) {
      yield r'start_stamp';
      yield serializers.serialize(
        object.startStamp,
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
    if (object.callerIdName != null) {
      yield r'caller_id_name';
      yield serializers.serialize(
        object.callerIdName,
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
    if (object.destinationName != null) {
      yield r'destination_name';
      yield serializers.serialize(
        object.destinationName,
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
    if (object.queue != null) {
      yield r'queue';
      yield serializers.serialize(
        object.queue,
        specifiedType: const FullType(String),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(GetCdrs200ResponseCdrsInnerResultEnum),
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
    if (object.recordingPresent != null) {
      yield r'recording_present';
      yield serializers.serialize(
        object.recordingPresent,
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
    if (object.callUuid != null) {
      yield r'call_uuid';
      yield serializers.serialize(
        object.callUuid,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCdrs200ResponseCdrsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCdrs200ResponseCdrsInnerBuilder result,
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
        case r'caller_id_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerIdName = valueDes;
          break;
        case r'destination_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationNumber = valueDes;
          break;
        case r'destination_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationName = valueDes;
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
        case r'queue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queue = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCdrs200ResponseCdrsInnerResultEnum),
          ) as GetCdrs200ResponseCdrsInnerResultEnum;
          result.result = valueDes;
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
        case r'recording_present':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordingPresent = valueDes;
          break;
        case r'sip_hangup_disposition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sipHangupDisposition = valueDes;
          break;
        case r'call_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callUuid = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCdrs200ResponseCdrsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCdrs200ResponseCdrsInnerBuilder();
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

class GetCdrs200ResponseCdrsInnerResultEnum extends EnumClass {

  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Meşgul')
  static const GetCdrs200ResponseCdrsInnerResultEnum megul = _$getCdrs200ResponseCdrsInnerResultEnum_megul;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Vazgeçildi')
  static const GetCdrs200ResponseCdrsInnerResultEnum vazgeildi = _$getCdrs200ResponseCdrsInnerResultEnum_vazgeildi;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Cevapsız')
  static const GetCdrs200ResponseCdrsInnerResultEnum cevapsz = _$getCdrs200ResponseCdrsInnerResultEnum_cevapsz;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Cevaplandı')
  static const GetCdrs200ResponseCdrsInnerResultEnum cevapland = _$getCdrs200ResponseCdrsInnerResultEnum_cevapland;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Reddedildi')
  static const GetCdrs200ResponseCdrsInnerResultEnum reddedildi = _$getCdrs200ResponseCdrsInnerResultEnum_reddedildi;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Ses kodekleri uyumsuz')
  static const GetCdrs200ResponseCdrsInnerResultEnum sesKodekleriUyumsuz = _$getCdrs200ResponseCdrsInnerResultEnum_sesKodekleriUyumsuz;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Hatalı Numara')
  static const GetCdrs200ResponseCdrsInnerResultEnum hatalNumara = _$getCdrs200ResponseCdrsInnerResultEnum_hatalNumara;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Ulaşılamıyor')
  static const GetCdrs200ResponseCdrsInnerResultEnum ulalamyor = _$getCdrs200ResponseCdrsInnerResultEnum_ulalamyor;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'İYS izni yok')
  static const GetCdrs200ResponseCdrsInnerResultEnum ySIzniYok = _$getCdrs200ResponseCdrsInnerResultEnum_ySIzniYok;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Hata')
  static const GetCdrs200ResponseCdrsInnerResultEnum hata = _$getCdrs200ResponseCdrsInnerResultEnum_hata;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Genel Hata')
  static const GetCdrs200ResponseCdrsInnerResultEnum genelHata = _$getCdrs200ResponseCdrsInnerResultEnum_genelHata;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Cihaz yönlendirmesi')
  static const GetCdrs200ResponseCdrsInnerResultEnum cihazYnlendirmesi = _$getCdrs200ResponseCdrsInnerResultEnum_cihazYnlendirmesi;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Çağrı bağlanamadı')
  static const GetCdrs200ResponseCdrsInnerResultEnum arBalanamad = _$getCdrs200ResponseCdrsInnerResultEnum_arBalanamad;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'RTP zamanaşımı')
  static const GetCdrs200ResponseCdrsInnerResultEnum rTPZamanam = _$getCdrs200ResponseCdrsInnerResultEnum_rTPZamanam;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Santral kapatılıyor')
  static const GetCdrs200ResponseCdrsInnerResultEnum santralKapatlyor = _$getCdrs200ResponseCdrsInnerResultEnum_santralKapatlyor;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Katılımlı aktarım')
  static const GetCdrs200ResponseCdrsInnerResultEnum katlmlAktarm = _$getCdrs200ResponseCdrsInnerResultEnum_katlmlAktarm;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Çağrısı çekildi')
  static const GetCdrs200ResponseCdrsInnerResultEnum arsEkildi = _$getCdrs200ResponseCdrsInnerResultEnum_arsEkildi;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Cihazla iletişim sorunu')
  static const GetCdrs200ResponseCdrsInnerResultEnum cihazlaIletiimSorunu = _$getCdrs200ResponseCdrsInnerResultEnum_cihazlaIletiimSorunu;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'İletişim sorunu')
  static const GetCdrs200ResponseCdrsInnerResultEnum letiimSorunu = _$getCdrs200ResponseCdrsInnerResultEnum_letiimSorunu;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Zamanaşımı')
  static const GetCdrs200ResponseCdrsInnerResultEnum zamanam = _$getCdrs200ResponseCdrsInnerResultEnum_zamanam;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Sesli görüşme yapamayan numara')
  static const GetCdrs200ResponseCdrsInnerResultEnum sesliGrmeYapamayanNumara = _$getCdrs200ResponseCdrsInnerResultEnum_sesliGrmeYapamayanNumara;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Diğer dahili cevapladı')
  static const GetCdrs200ResponseCdrsInnerResultEnum dierDahiliCevaplad = _$getCdrs200ResponseCdrsInnerResultEnum_dierDahiliCevaplad;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Desteklenmeyen kanal tipi')
  static const GetCdrs200ResponseCdrsInnerResultEnum desteklenmeyenKanalTipi = _$getCdrs200ResponseCdrsInnerResultEnum_desteklenmeyenKanalTipi;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Arama için santral uygun durumda değil')
  static const GetCdrs200ResponseCdrsInnerResultEnum aramaIinSantralUygunDurumdaDeil = _$getCdrs200ResponseCdrsInnerResultEnum_aramaIinSantralUygunDurumdaDeil;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Tanınmayan Çağrı ID numarası')
  static const GetCdrs200ResponseCdrsInnerResultEnum tannmayanArIDNumaras = _$getCdrs200ResponseCdrsInnerResultEnum_tannmayanArIDNumaras;
  /// Human-readable call result in Turkish
  @BuiltValueEnumConst(wireName: r'Geçersiz JSON kullanımı')
  static const GetCdrs200ResponseCdrsInnerResultEnum geersizJSONKullanm = _$getCdrs200ResponseCdrsInnerResultEnum_geersizJSONKullanm;

  static Serializer<GetCdrs200ResponseCdrsInnerResultEnum> get serializer => _$getCdrs200ResponseCdrsInnerResultEnumSerializer;

  const GetCdrs200ResponseCdrsInnerResultEnum._(String name): super(name);

  static BuiltSet<GetCdrs200ResponseCdrsInnerResultEnum> get values => _$getCdrs200ResponseCdrsInnerResultEnumValues;
  static GetCdrs200ResponseCdrsInnerResultEnum valueOf(String name) => _$getCdrs200ResponseCdrsInnerResultEnumValueOf(name);
}

