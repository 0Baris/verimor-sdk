//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/create_ivr_campaign_request_phone_list_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_ivr_campaign_request.g.dart';

/// CreateIvrCampaignRequest
///
/// Properties:
/// * [callType] - Otomatik aramanın tipi. \"queue\" ya da \"ivr\" olabilir.
/// * [queueNumber] - Kuyruk tipi otomatik aramalarda, çağrıların hangi kuyruğa aktarılacağını belirtir.
/// * [threadMultiplier] - Kuyruk tipi otomatik aramalarda, eşzamanlı olarak, müsait temsilci sayısının kaç katı arama yapılacağını belirtir.
/// * [maxThreadCount] - Kampanya için, eşzamanlı maksimum çağrı sayısını belirtir. Bu parametre belirtilmezse, santralin değerleri referans alınır. (Santral ayarlarında, \"Otomatik Arama Kanal Sayısı\" değeri referans alınır. Bu ayar için \"Otomatik Arama / Sesli Mesaj (Çoklu) modülü gereklidir.)
/// * [name] - Kampanyanın adı.
/// * [dateRangeBegin] - Opsiyonel. Kampanyanın aramaya başlayacağı tarih, YYYY-AA-GG formatında olmalıdır. Gönderilmezse o anki tarih kullanılır.
/// * [dateRangeEnd] - Opsiyonel. Kampanyanın arama bitiş tarihi. YYYY-AA-GG formatında olmalıdır. Gönderilmezse date_range_begin değeri kullanılır.
/// * [timeRangeBegin] - Opsiyonel. Kampanyanın çalışma saatlerinin başlangıcı. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse \"00:00\" değeri kullanılır.
/// * [timeRangeEnd] - Opsiyonel. Kampanyanın çalışma saatlerinin bitişi. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse \"23:59\" değeri kullanılır.
/// * [activeDays] - Kampanyanın çalışma günleri. 1=Pazartesi, 7=Pazar olacak şekilde integer array olarak verilir ve kampanyanın haftanın sadece belirli günleri çalışmasını sağlar.
/// * [ringTimeout] - Aranan numara çalarken beklenecek süre (saniye), 25 – 60 sn. arasında olabilir.
/// * [cli] - Arayan numara. Karşı taraf bu numarayı görür.
/// * [welcomeAnnouncementId] - Aranan numaralara dinletilecek ses dosyasının ID'si. Bu ses dinletilip peşinden tuşlama beklenir. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
/// * [callRetries] - Tekrar arama sayısı. Meşgul, ulaşılamıyor, cevap yok gibi durumlarda numaranın kaç defa daha aranacağını belirtir.
/// * [webhookUrl] - Tuşlamaların bildirileceği URL. Doluysa tüm tuşlamalar bu URL'e gönderilir. Kampanya oluşturulurken bu URL'e boş bir POST request'i gönderilip 200 dönmesi beklenir, bu şekilde URL'i doğruluyoruz. Aranan kişi tuşlama yaptıktan sonra bir yere yönlenmeyecekse, sadece tuşlamayı kaydetmek istiyorsanız, tuşa hedef olarak anons verebilirsiniz.
/// * [digitTarget0] - Aranan kişi 0 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget1] - Aranan kişi 1 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget2] - Aranan kişi 2 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget3] - Aranan kişi 3 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget4] - Aranan kişi 4 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget5] - Aranan kişi 5 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget6] - Aranan kişi 6 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget7] - Aranan kişi 7 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget8] - Aranan kişi 8 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTarget9] - Aranan kişi 9 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTargetStar] - Aranan kişi yıldız (*) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitTargetSquare] - Aranan kişi kare (#) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [timeoutTarget] - Aranan kişi ses kaydını dinledikten sonra digit_timeout süresi içinde bir tuşa basmadığında ve retry_count adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [invalidTarget] - Aranan kişi ses kaydını dinledikten sonra hatalı bir tuşa bastığında ve retry_count adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
/// * [digitRetries] - Tuşlama tekrar sayısı. Geçersiz tuşlama yapıldığında veya hiç tuşlama yapılmayıp digit_timeout süresi dolduğunda, ilgili uyarı okunup Menü baştan okunur.
/// * [digitTimeout] - Opsiyonel. Min:1, Maks:10, Varsayılan 4'tür. Ses kaydı dinletildikten sonra burada belirtilen süre kadar bekletilip senaryoya göre ya zaman aşımı hedefine aktarılır ya da menü baştan okutulur.
/// * [phoneList] - Aranacak numara listesi (zorunlu). \"phone\" aranacak numaradır, \"905111111111\" veya \"05111111111\" veya \"5111111111\" veya uluslararası için \"00491234567\" şeklinde olmalıdır, \"phone\" sahası zorunludur. \"phrase\" sahası bu numaraya okunacak özel mesajı belirtir, formatı için aşağıda Cümle (phrase) Formatı başlığına bakınız. \"phrase\" sahası zorunlu değildir. \"lang\" sahası, mesajın hangi dilde okunacağını belirtir. Zorunlu değildir. Geçerli diller: \"tr-TR\", \"en-US\" ve \"ar-XA\".
/// * [isCommercial] - Opsiyonel. true | false değeri alır. Varsayılan false. Ticari gönderimlerde true olarak belirlemelisiniz.
/// * [iysRecipientType] - \"BIREYSEL\" ya da \"TACIR\" olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz.
/// * [iysBrandCode] - Sistemde kayıtlı ve onaylı başlıklarınızdan birinin \"İYS Marka Kodu\" değeri olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz.
/// * [recordingEnabled] - Arama başlar başlamaz kayıt yapılmasını istiyorsanız bu parametreye \"true\" (String) ya da \"t\" vermelisiniz.
@BuiltValue()
abstract class CreateIvrCampaignRequest implements Built<CreateIvrCampaignRequest, CreateIvrCampaignRequestBuilder> {
  /// Otomatik aramanın tipi. \"queue\" ya da \"ivr\" olabilir.
  @BuiltValueField(wireName: r'call_type')
  String get callType;

  /// Kuyruk tipi otomatik aramalarda, çağrıların hangi kuyruğa aktarılacağını belirtir.
  @BuiltValueField(wireName: r'queue_number')
  String? get queueNumber;

  /// Kuyruk tipi otomatik aramalarda, eşzamanlı olarak, müsait temsilci sayısının kaç katı arama yapılacağını belirtir.
  @BuiltValueField(wireName: r'thread_multiplier')
  int? get threadMultiplier;

  /// Kampanya için, eşzamanlı maksimum çağrı sayısını belirtir. Bu parametre belirtilmezse, santralin değerleri referans alınır. (Santral ayarlarında, \"Otomatik Arama Kanal Sayısı\" değeri referans alınır. Bu ayar için \"Otomatik Arama / Sesli Mesaj (Çoklu) modülü gereklidir.)
  @BuiltValueField(wireName: r'max_thread_count')
  int? get maxThreadCount;

  /// Kampanyanın adı.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Opsiyonel. Kampanyanın aramaya başlayacağı tarih, YYYY-AA-GG formatında olmalıdır. Gönderilmezse o anki tarih kullanılır.
  @BuiltValueField(wireName: r'date_range_begin')
  String? get dateRangeBegin;

  /// Opsiyonel. Kampanyanın arama bitiş tarihi. YYYY-AA-GG formatında olmalıdır. Gönderilmezse date_range_begin değeri kullanılır.
  @BuiltValueField(wireName: r'date_range_end')
  String? get dateRangeEnd;

  /// Opsiyonel. Kampanyanın çalışma saatlerinin başlangıcı. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse \"00:00\" değeri kullanılır.
  @BuiltValueField(wireName: r'time_range_begin')
  String? get timeRangeBegin;

  /// Opsiyonel. Kampanyanın çalışma saatlerinin bitişi. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse \"23:59\" değeri kullanılır.
  @BuiltValueField(wireName: r'time_range_end')
  String? get timeRangeEnd;

  /// Kampanyanın çalışma günleri. 1=Pazartesi, 7=Pazar olacak şekilde integer array olarak verilir ve kampanyanın haftanın sadece belirli günleri çalışmasını sağlar.
  @BuiltValueField(wireName: r'active_days')
  BuiltList<int>? get activeDays;

  /// Aranan numara çalarken beklenecek süre (saniye), 25 – 60 sn. arasında olabilir.
  @BuiltValueField(wireName: r'ring_timeout')
  int? get ringTimeout;

  /// Arayan numara. Karşı taraf bu numarayı görür.
  @BuiltValueField(wireName: r'cli')
  String? get cli;

  /// Aranan numaralara dinletilecek ses dosyasının ID'si. Bu ses dinletilip peşinden tuşlama beklenir. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
  @BuiltValueField(wireName: r'welcome_announcement_id')
  int? get welcomeAnnouncementId;

  /// Tekrar arama sayısı. Meşgul, ulaşılamıyor, cevap yok gibi durumlarda numaranın kaç defa daha aranacağını belirtir.
  @BuiltValueField(wireName: r'call_retries')
  int? get callRetries;

  /// Tuşlamaların bildirileceği URL. Doluysa tüm tuşlamalar bu URL'e gönderilir. Kampanya oluşturulurken bu URL'e boş bir POST request'i gönderilip 200 dönmesi beklenir, bu şekilde URL'i doğruluyoruz. Aranan kişi tuşlama yaptıktan sonra bir yere yönlenmeyecekse, sadece tuşlamayı kaydetmek istiyorsanız, tuşa hedef olarak anons verebilirsiniz.
  @BuiltValueField(wireName: r'webhook_url')
  String? get webhookUrl;

  /// Aranan kişi 0 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_0')
  String? get digitTarget0;

  /// Aranan kişi 1 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_1')
  String? get digitTarget1;

  /// Aranan kişi 2 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_2')
  String? get digitTarget2;

  /// Aranan kişi 3 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_3')
  String? get digitTarget3;

  /// Aranan kişi 4 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_4')
  String? get digitTarget4;

  /// Aranan kişi 5 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_5')
  String? get digitTarget5;

  /// Aranan kişi 6 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_6')
  String? get digitTarget6;

  /// Aranan kişi 7 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_7')
  String? get digitTarget7;

  /// Aranan kişi 8 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_8')
  String? get digitTarget8;

  /// Aranan kişi 9 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_9')
  String? get digitTarget9;

  /// Aranan kişi yıldız (*) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_star')
  String? get digitTargetStar;

  /// Aranan kişi kare (#) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'digit_target_square')
  String? get digitTargetSquare;

  /// Aranan kişi ses kaydını dinledikten sonra digit_timeout süresi içinde bir tuşa basmadığında ve retry_count adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'timeout_target')
  String? get timeoutTarget;

  /// Aranan kişi ses kaydını dinledikten sonra hatalı bir tuşa bastığında ve retry_count adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur.
  @BuiltValueField(wireName: r'invalid_target')
  String? get invalidTarget;

  /// Tuşlama tekrar sayısı. Geçersiz tuşlama yapıldığında veya hiç tuşlama yapılmayıp digit_timeout süresi dolduğunda, ilgili uyarı okunup Menü baştan okunur.
  @BuiltValueField(wireName: r'digit_retries')
  int? get digitRetries;

  /// Opsiyonel. Min:1, Maks:10, Varsayılan 4'tür. Ses kaydı dinletildikten sonra burada belirtilen süre kadar bekletilip senaryoya göre ya zaman aşımı hedefine aktarılır ya da menü baştan okutulur.
  @BuiltValueField(wireName: r'digit_timeout')
  int? get digitTimeout;

  /// Aranacak numara listesi (zorunlu). \"phone\" aranacak numaradır, \"905111111111\" veya \"05111111111\" veya \"5111111111\" veya uluslararası için \"00491234567\" şeklinde olmalıdır, \"phone\" sahası zorunludur. \"phrase\" sahası bu numaraya okunacak özel mesajı belirtir, formatı için aşağıda Cümle (phrase) Formatı başlığına bakınız. \"phrase\" sahası zorunlu değildir. \"lang\" sahası, mesajın hangi dilde okunacağını belirtir. Zorunlu değildir. Geçerli diller: \"tr-TR\", \"en-US\" ve \"ar-XA\".
  @BuiltValueField(wireName: r'phone_list')
  BuiltList<CreateIvrCampaignRequestPhoneListInner> get phoneList;

  /// Opsiyonel. true | false değeri alır. Varsayılan false. Ticari gönderimlerde true olarak belirlemelisiniz.
  @BuiltValueField(wireName: r'is_commercial')
  bool? get isCommercial;

  /// \"BIREYSEL\" ya da \"TACIR\" olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz.
  @BuiltValueField(wireName: r'iys_recipient_type')
  String? get iysRecipientType;

  /// Sistemde kayıtlı ve onaylı başlıklarınızdan birinin \"İYS Marka Kodu\" değeri olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz.
  @BuiltValueField(wireName: r'iys_brand_code')
  String? get iysBrandCode;

  /// Arama başlar başlamaz kayıt yapılmasını istiyorsanız bu parametreye \"true\" (String) ya da \"t\" vermelisiniz.
  @BuiltValueField(wireName: r'recording_enabled')
  bool? get recordingEnabled;

  CreateIvrCampaignRequest._();

  factory CreateIvrCampaignRequest([void updates(CreateIvrCampaignRequestBuilder b)]) = _$CreateIvrCampaignRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateIvrCampaignRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateIvrCampaignRequest> get serializer => _$CreateIvrCampaignRequestSerializer();
}

class _$CreateIvrCampaignRequestSerializer implements PrimitiveSerializer<CreateIvrCampaignRequest> {
  @override
  final Iterable<Type> types = const [CreateIvrCampaignRequest, _$CreateIvrCampaignRequest];

  @override
  final String wireName = r'CreateIvrCampaignRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateIvrCampaignRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'call_type';
    yield serializers.serialize(
      object.callType,
      specifiedType: const FullType(String),
    );
    if (object.queueNumber != null) {
      yield r'queue_number';
      yield serializers.serialize(
        object.queueNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.threadMultiplier != null) {
      yield r'thread_multiplier';
      yield serializers.serialize(
        object.threadMultiplier,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxThreadCount != null) {
      yield r'max_thread_count';
      yield serializers.serialize(
        object.maxThreadCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.dateRangeBegin != null) {
      yield r'date_range_begin';
      yield serializers.serialize(
        object.dateRangeBegin,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateRangeEnd != null) {
      yield r'date_range_end';
      yield serializers.serialize(
        object.dateRangeEnd,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeRangeBegin != null) {
      yield r'time_range_begin';
      yield serializers.serialize(
        object.timeRangeBegin,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeRangeEnd != null) {
      yield r'time_range_end';
      yield serializers.serialize(
        object.timeRangeEnd,
        specifiedType: const FullType(String),
      );
    }
    if (object.activeDays != null) {
      yield r'active_days';
      yield serializers.serialize(
        object.activeDays,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.ringTimeout != null) {
      yield r'ring_timeout';
      yield serializers.serialize(
        object.ringTimeout,
        specifiedType: const FullType(int),
      );
    }
    if (object.cli != null) {
      yield r'cli';
      yield serializers.serialize(
        object.cli,
        specifiedType: const FullType(String),
      );
    }
    if (object.welcomeAnnouncementId != null) {
      yield r'welcome_announcement_id';
      yield serializers.serialize(
        object.welcomeAnnouncementId,
        specifiedType: const FullType(int),
      );
    }
    if (object.callRetries != null) {
      yield r'call_retries';
      yield serializers.serialize(
        object.callRetries,
        specifiedType: const FullType(int),
      );
    }
    if (object.webhookUrl != null) {
      yield r'webhook_url';
      yield serializers.serialize(
        object.webhookUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget0 != null) {
      yield r'digit_target_0';
      yield serializers.serialize(
        object.digitTarget0,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget1 != null) {
      yield r'digit_target_1';
      yield serializers.serialize(
        object.digitTarget1,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget2 != null) {
      yield r'digit_target_2';
      yield serializers.serialize(
        object.digitTarget2,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget3 != null) {
      yield r'digit_target_3';
      yield serializers.serialize(
        object.digitTarget3,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget4 != null) {
      yield r'digit_target_4';
      yield serializers.serialize(
        object.digitTarget4,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget5 != null) {
      yield r'digit_target_5';
      yield serializers.serialize(
        object.digitTarget5,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget6 != null) {
      yield r'digit_target_6';
      yield serializers.serialize(
        object.digitTarget6,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget7 != null) {
      yield r'digit_target_7';
      yield serializers.serialize(
        object.digitTarget7,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget8 != null) {
      yield r'digit_target_8';
      yield serializers.serialize(
        object.digitTarget8,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTarget9 != null) {
      yield r'digit_target_9';
      yield serializers.serialize(
        object.digitTarget9,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTargetStar != null) {
      yield r'digit_target_star';
      yield serializers.serialize(
        object.digitTargetStar,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitTargetSquare != null) {
      yield r'digit_target_square';
      yield serializers.serialize(
        object.digitTargetSquare,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeoutTarget != null) {
      yield r'timeout_target';
      yield serializers.serialize(
        object.timeoutTarget,
        specifiedType: const FullType(String),
      );
    }
    if (object.invalidTarget != null) {
      yield r'invalid_target';
      yield serializers.serialize(
        object.invalidTarget,
        specifiedType: const FullType(String),
      );
    }
    if (object.digitRetries != null) {
      yield r'digit_retries';
      yield serializers.serialize(
        object.digitRetries,
        specifiedType: const FullType(int),
      );
    }
    if (object.digitTimeout != null) {
      yield r'digit_timeout';
      yield serializers.serialize(
        object.digitTimeout,
        specifiedType: const FullType(int),
      );
    }
    yield r'phone_list';
    yield serializers.serialize(
      object.phoneList,
      specifiedType: const FullType(BuiltList, [FullType(CreateIvrCampaignRequestPhoneListInner)]),
    );
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
    if (object.iysBrandCode != null) {
      yield r'iys_brand_code';
      yield serializers.serialize(
        object.iysBrandCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.recordingEnabled != null) {
      yield r'recording_enabled';
      yield serializers.serialize(
        object.recordingEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateIvrCampaignRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateIvrCampaignRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'call_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callType = valueDes;
          break;
        case r'queue_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queueNumber = valueDes;
          break;
        case r'thread_multiplier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.threadMultiplier = valueDes;
          break;
        case r'max_thread_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxThreadCount = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'date_range_begin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateRangeBegin = valueDes;
          break;
        case r'date_range_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateRangeEnd = valueDes;
          break;
        case r'time_range_begin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeRangeBegin = valueDes;
          break;
        case r'time_range_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeRangeEnd = valueDes;
          break;
        case r'active_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.activeDays.replace(valueDes);
          break;
        case r'ring_timeout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ringTimeout = valueDes;
          break;
        case r'cli':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cli = valueDes;
          break;
        case r'welcome_announcement_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.welcomeAnnouncementId = valueDes;
          break;
        case r'call_retries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.callRetries = valueDes;
          break;
        case r'webhook_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webhookUrl = valueDes;
          break;
        case r'digit_target_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget0 = valueDes;
          break;
        case r'digit_target_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget1 = valueDes;
          break;
        case r'digit_target_2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget2 = valueDes;
          break;
        case r'digit_target_3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget3 = valueDes;
          break;
        case r'digit_target_4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget4 = valueDes;
          break;
        case r'digit_target_5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget5 = valueDes;
          break;
        case r'digit_target_6':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget6 = valueDes;
          break;
        case r'digit_target_7':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget7 = valueDes;
          break;
        case r'digit_target_8':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget8 = valueDes;
          break;
        case r'digit_target_9':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTarget9 = valueDes;
          break;
        case r'digit_target_star':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTargetStar = valueDes;
          break;
        case r'digit_target_square':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitTargetSquare = valueDes;
          break;
        case r'timeout_target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeoutTarget = valueDes;
          break;
        case r'invalid_target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.invalidTarget = valueDes;
          break;
        case r'digit_retries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.digitRetries = valueDes;
          break;
        case r'digit_timeout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.digitTimeout = valueDes;
          break;
        case r'phone_list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateIvrCampaignRequestPhoneListInner)]),
          ) as BuiltList<CreateIvrCampaignRequestPhoneListInner>;
          result.phoneList.replace(valueDes);
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
        case r'iys_brand_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iysBrandCode = valueDes;
          break;
        case r'recording_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.recordingEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateIvrCampaignRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIvrCampaignRequestBuilder();
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

