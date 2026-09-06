# verimor_sms (EXPERIMENTAL)
<p>Verimor SMS API, uygulamalarınız veya sunucu taraflı yazılımlarınız üzerinden SMS gönderimi ve yönetimi yapmanızı sağlayan bir HTTP arayüzüdür. API, farklı amaçlara yönelik (toplu gönderim, raporlama, bakiye sorgulama vb.) çeşitli endpoint'ler sunar.</p>

<h3>Kimlik Doğrulama (Authentication)</h3>
<p>API'ye yapılan istekler, Verimor kullanıcı adı ve API şifreniz ile doğrulanır. Kimlik doğrulama yöntemi, isteğin türüne göre değişir:</p>
<ul>
<li><strong>POST İstekleri (örn: /v2/send.json):</strong> <code>username</code> ve <code>password</code> bilgileri, isteğin gövdesinde (request body) JSON formatında gönderilir.</li>
<li><strong>GET İstekleri (örn: /v2/report):</strong> <code>username</code> ve <code>password</code> bilgileri, isteğin URL'ine query string parametresi olarak eklenir.</li>
</ul>
<p>API şifrenizi Verimor Online İşlem Merkezi (OİM) üzerinden oluşturabilirsiniz.</p>

<h3>Temel Yetenekler</h3>
<p>API, aşağıdaki temel işlevleri desteklemektedir:</p>
<ul>
<li>Tekil veya toplu SMS gönderimi</li>
<li>İleri tarihli SMS gönderimlerini programlama</li>
<li>Gönderilen mesajların iletim durumlarını detaylı olarak sorgulama</li>
<li>Hesapta kalan SMS kredisini öğrenme</li>
<li>Zamanlanmış gönderimleri iptal etme</li>
<li>Onaylanmış gönderici başlıklarını (alfanümerik) listeleme</li>
</ul>

<h3>Teknik Formatlar</h3>
<p>API, operasyona göre farklı veri formatları kullanır. Mesaj gönderme gibi <strong>POST</strong> işlemleri <code>application/json</code> formatında veri kabul eder ve yanıt döner. Raporlama gibi <strong>GET</strong> işlemleri ise parametreleri URL üzerinden alır ve yanıtı, isteğe bağlı olarak, varsayılan olarak <strong>boşluklarla ayrılmış düz metin (plain text)</strong> veya belirtilirse <strong>JSON</strong> formatında döndürebilir.</p>

<h3>Genel Notlar</h3>
<ul>
<li>/v2/send ve /v2/iys_consents.json aynı hız sınırı havuzunu paylaşır: dakikada toplam 240 istek gönderebilirsiniz (burst 80). 1 isteğin büyüklüğü 10 MB geçemez. Bu limitler dahilinde, isteğin yapısına bağlı olmakla birlikte dakikada 100.000.000 mesaj gönderilebilir.</li>
<li>Yoğun OTP gönderimleri için kendi tarafınızda istekleri biriktirip saniyede bir post yöntemiyle sms gönderim isteği (çok kişiye çok mesaj isteği) yapmalısınız.</li>
<li>Request limitlerini aştığınızda 429 (Too Many Requests) hatası döner.</li>
<li>Paket boyutu limitini aştığınızda 413 (Request Entity Too Large) hatası döner.</li>
<li>/v2/status, /v2/balance, /v2/cancel, /v2/headers, /v2/blacklists, /v2/inbound_messages ve /v2/iys/campaigns endpoint'leri kendi aralarında aynı hız sınırı havuzunu paylaşır: dakikada toplam 20 istek gönderebilirsiniz (burst 10). Önerimiz Push yöntemini kullanmanızdır.</li>
<li>HTTPS olarak API'mizi kullanırken SSL bağlantısı için kullandığınız kütüphane sisteminizde kök sertifikalar yüklü olmadığından sertifikamızı doğrulamayabilir. Bu sorunu çözmek için lets-encrypt-r3.crt kök sertifika dosyasını <a href=\"https://github.com/verimor/SMS-API/blob/master/lets-encrypt-r3.crt\">buraya</a> tıklayarak indirip sisteminize kurmalısınız.</li>
<li>Mesaj metninde yeni satıra geçiş yapabilmek için json'da (new line) \"\\n\" kullanımı gerekmektedir.</li>
</ul>

<h3>Hata Kodları</h3>
<p>SMS gönderirken ve gönderim raporu alırken size dönen status sahalarında aşağıdaki tablodaki değerler olabilir:</p>
<p><strong>Mesaj Gönderirken Dönebilecek Durumlar ve Açıklamaları</strong></p>
<table>
<thead><tr><th>Web_Arayüzü_Durumları</th><th>API</th><th>Açıklama</th></tr></thead>
<tbody>
<tr><td>-</td><td>INVALID_SOURCE_ADDRESS</td><td>Başlık kabul edilmedi.</td></tr>
<tr><td>-</td><td>MISSING_MESSAGE</td><td>Gönderilecek mesaj verilmemiş.</td></tr>
<tr><td>-</td><td>MESSAGE_TOO_LONG</td><td>Mesaj çok uzun.</td></tr>
<tr><td>-</td><td>INVALID_PERIOD</td><td>Mesajın geçerlilik süresi (validity period) geçersiz. (1dk. ile 48 saat arasında değil).</td></tr>
<tr><td>-</td><td>INVALID_DELIVERY_TIME</td><td>\"send_at\" parametresi geçersiz veya geçmiş tarihe ait.</td></tr>
<tr><td>-</td><td>INVALID_DATACODING</td><td>datacoding parametresi hatalı verilmiş.</td></tr>
<tr><td>-</td><td>MISSING_IYS_BRAND_CODE</td><td>Ticari gönderimlerde başlığın marka kodunun tanımlanmış olması gereklidir</td></tr>
<tr><td>-</td><td>AHS_AUTHORIZATION_ERROR</td><td>Yetkilendirme hatası. Lütfen İYS ile iletişime geçip Verimor'a AHS izni veriniz.</td></tr>
<tr><td>-</td><td>NO_AHS_BRAND_ERROR</td><td>VKN'ye ait, İYS'de kayıtlı bir marka bulunamadı.</td></tr>
<tr><td>-</td><td>COMMERCIAL_SENDING_ERROR_UNDER_150K</td><td>150 bin adedin altında ticari elektronik ileti onayı olan hesaplar için ticari gönderim 16 Temmuz 2021'de başlayacaktır. Bu tarihe kadar normal gönderimi kullanmalısınız.</td></tr>
<tr><td>-</td><td>INVALID_IYS_RECIPIENT_TYPE</td><td>iys_recipient_type \"BIREYSEL\" yada \"TACIR\" olmalıdır.</td></tr>
<tr><td>-</td><td>MISSING_DESTINATION_ADDRESS</td><td>Mesaj için alıcı verilmemiş.</td></tr>
<tr><td>Hatalı Numara</td><td>INVALID_DESTINATION_ADDRESS</td><td>Alıcı telefon numarasının formatı geçersiz. (905121234567 gibi olmalı)</td></tr>
<tr><td>-</td><td>INVALID_UTF8</td><td>Encoding UTF8 olmalıdır.</td></tr>
<tr><td>-</td><td>MUKERRER_RAPORLAMA</td><td>24 Saat içerisinde aynı sms zaten atılmış.</td></tr>
<tr><td>Kredi Yetersiz</td><td>INSUFFICIENT_CREDITS</td><td>Mesajı göndermek için yeterli bakiyeniz yok.</td></tr>
<tr><td>Yasaklı içerik</td><td>FORBIDDEN_MESSAGE</td><td>Mesajınız yasak kelime(ler) içeriyor.</td></tr>
<tr><td>-</td><td>INVALID_CONSENT_DATE</td><td>\"consent_date\" 1 Mayıs 2015 tarihinden önce olamaz.<br>\"consent_date\" ileri bir tarih olamaz.<br>\"consent_date\" 3 günden eski olamaz.<br>Kaynağı HS_2015 olan izinlerde \"consent_date\" 1 Mayıs 2015 olmalıdır.</td></tr>
<tr><td>-</td><td>MISSING_CONSENT</td><td>Eksik izin durumu.</td></tr>
<tr><td>-</td><td>MISSING_CONSENT_DATE</td><td>Gönderim tipi \"BIREYSEL\" olanlarda consent_date girilmelidir.</td></tr>
<tr><td>-</td><td>INVALID_RECIPIENT</td><td>Geçersiz gönderim tipi.</td></tr>
<tr><td>-</td><td>INVALID_JSON</td><td>Geçersiz JSON kullanımı</td></tr>
<tr><td>-</td><td>MESSAGE_COUNT_LIMIT_EXCEEDED</td><td>Maksimum mesaj sayısına ulaşıldı. Bir seferde maksimum 50.000 adet mesajdan daha fazlası kabul edilmez.</td></tr>
</tbody>
</table>
<p><strong>Mesaj Durumu Alınırken Dönebilecek Durumlar ve Açıklamaları</strong></p>
<table>
<thead><tr><th>Web_Arayüzü_Durumları</th><th>API_Durumları</th><th>Açıklama</th></tr></thead>
<tbody>
<tr><td>Gönderiliyor</td><td>SENDING</td><td>Mesaj gönderiliyor.</td></tr>
<tr><td>Bekliyor</td><td>WAITING</td><td>Mesaj gönderildi. Cevap bekleniyor.</td></tr>
<tr><td>İletildi</td><td>DELIVERED</td><td>Mesaj iletildi.</td></tr>
<tr><td>İletildi</td><td>SENT</td><td>Mesaj iletildi. Fakat operatör gönderim raporunu desteklemediği için teyit edilemiyor. (Uluslararası bazı yönlerde oluşur.)</td></tr>
<tr><td>İletilemedi</td><td>NOT_DELIVERED</td><td>Mesaj iletilemedi. (Genelde alıcı numaranın aktif olmamasından kaynaklanır.)</td></tr>
<tr><td>Zaman aşımı</td><td>EXPIRED</td><td>Zaman aşımı. Mesajınız belirlediğiniz geçerlilik süresi içinde alıcısına teslim edilemedi.</td></tr>
<tr><td>Hatalı Numara</td><td>INVALID_DESTINATION_ADDRESS</td><td>Alıcı telefon numarası geçersiz. (Hiçbir operatöre kayıtlı değil.)</td></tr>
<tr><td>Reddedildi</td><td>REJECTED</td><td>Mesajınızın gönderimi reddedildi. (Genelde gsm operatörü tarafından içerik kontrolü sonucu oluşur.)</td></tr>
<tr><td>Mükerrer Gönderim</td><td>DOUBLE_SEND_ERROR</td><td>Aynı içerik aynı gün aynı başlıkla aynı numaraya gönderilmiş. Mükerrer gönderim engellendi.</td></tr>
<tr><td>Karalistede</td><td>BLACKLISTED_DESTINATION_ADDRESS</td><td>Alıcı kara listenizde.</td></tr>
<tr><td>İYS izni yok</td><td>NOT_ALLOWED_BY_IYS</td><td>İYS izni yok.</td></tr>
<tr><td>Tarife Bulunamadı</td><td>MISSING_TARIFF</td><td>Alıcının operatörü tarifelerimiz arasında bulunamamıştır. (Uluslararası yönlerde oluşur.)</td></tr>
<tr><td>Geçersiz Şebeke</td><td>ROUTE_NOT_AVAILABLE</td><td>Hesabınız bu alıcıya mesaj gönderemez. (Uluslararası bazı yönlerde oluşur.)</td></tr>
<tr><td>Geçersiz Şebeke</td><td>NETWORK_NOTCOVERED</td><td>Hesabınız bu alıcıya mesaj gönderemez. (Uluslararası bazı yönlerde oluşur.)</td></tr>
<tr><td>Gönderim Hatası</td><td>SEND_ERROR</td><td>Mesajınız gönderilirken hata oluştu. (Sebebi çeşitli olabilir.)</td></tr>
<tr><td>Uluslararası Gönderim Kapalı</td><td>INTERNATIONAL_DENIED</td><td>OİM'de SMS ayarlarından \"uluslararası gönderim\" ayarı kapalı olduğu için gönderilmedi.</td></tr>
</tbody>
</table>
<p><strong>Mesaj Hata Kodları (gsm_error)</strong><br>İletilemeyen mesajlar için karşı operatörden alınan teknik hata kodları ve açıklamaları aşağıda verilmiştir.</p>
<table>
<thead><tr><th>Hata No</th><th>Hata Kodu</th><th>Açıklama</th></tr></thead>
<tbody>
<tr><td>1</td><td>EC_UNKNOWN_SUBSCRIBER</td><td>Numara karşı operatörün veritabanında bir aboneye tanımlı değil</td></tr>
<tr><td>6</td><td>EC_ABSENT_SUBSCRIBER_SM</td><td>Karşı aboneden sinyal alınamadı. Abonenin telefonunun kapalı olduğu durumda veya sinyalin zayıf olduğu durumda görülür</td></tr>
<tr><td>11</td><td>EC_TELESERVICE_NOT_PROVISIONED</td><td>Karşı abonenin mobil hizmeti operatörü tarafından durduruldu</td></tr>
<tr><td>13</td><td>EC_CALL_BARRED</td><td>Karşı abone \"Rahatsız Etme\" (DND) hizmetini açtı, hiç mesaj almamayı tercih etti</td></tr>
<tr><td>27</td><td>EC_ABSENT_SUBSCRIBER</td><td>Karşı abone çevrimiçi değil, telefon cihazı tarafından teyit edildi. Telefon kapatılınca görülür.</td></tr>
<tr><td>31</td><td>EC_SUBSCRIBER_BUSY_FOR_MT_SMS</td><td>Karşı operatör fazla trafikten dolayı meşgul olduğunu bildirdi</td></tr>
<tr><td>32</td><td>EC_SM_DELIVERY_FAILURE</td><td>Karşı operatör kısa mesajı abonesine iletemediğini bildirdi</td></tr>
<tr><td>34</td><td>EC_SYSTEM_FAILURE</td><td>Karşı operatör sistem hatası bildirdi</td></tr>
<tr><td>256</td><td>EC_SM_DF_MEMORYCAPACITYEXCEEDED</td><td>Karşı abonenin telefon cihazında mesajı kaydedecek yer kalmadı</td></tr>
<tr><td>257</td><td>EC_SM_DF_EQUIPMENTPROTOCOLERROR</td><td>Karşı operatör, abonenin telefon cihazında hata olduğunu bildirdi</td></tr>
<tr><td>258</td><td>EC_SM_DF_EQUIPMENTNOTSM_EQUIPPED</td><td>Karşı operatör, abonenin telefon cihazında hata olduğunu bildirdi</td></tr>
<tr><td>500</td><td>EC_PROVIDER_GENERAL_ERROR</td><td>Karşı operatör genel hata bildirdi</td></tr>
<tr><td>502</td><td>EC_NO_RESPONSE</td><td>Mesaj karşı operatöre iletildi fakat olumlu veya olumsuz bir iletim raporu dönmedi</td></tr>
<tr><td>1030</td><td>EC_OR_POTENTIALVERSIONINCOMPATIBILITY</td><td>Karşı operatör genel hata bildirdi</td></tr>
<tr><td>1155</td><td>EC_NNR_SUBSYSTEMFAILURE</td><td>Karşı operatör, sistem hatasından dolayı abonesine ulaşamadığını bildirdi</td></tr>
<tr><td>1157</td><td>EC_NNR_MTPFAILURE</td><td>Karşı operatör genel hata bildirdi</td></tr>
<tr><td>1281</td><td>EC_UA_USERSPECIFICREASON</td><td>Karşı operatör genel hata bildirdi</td></tr>
<tr><td>1536</td><td>EC_PA_PROVIDERMALFUNCTION</td><td>Karşı operatör genel hata bildirdi</td></tr>
<tr><td>2048</td><td>EC_TIME_OUT</td><td>Mesaj karşı operatöre geçerlilik süresi içinde iletilemedi</td></tr>
<tr><td>2049</td><td>EC_IMSI_BLACKLISTED</td><td>Karşı abonenin SIM kartı operatörünün karalistesinde</td></tr>
<tr><td>2050</td><td>EC_DEST_ADDRESS_BLACKLISTED</td><td>Numara karalistemizde olduğu için iletilemedi</td></tr>
<tr><td>2051</td><td>EC_INVALIDMSCADDRESS</td><td>Mesaj metni karalistemizde olduğu için iletilemedi</td></tr>
<tr><td>2053</td><td>EC_BLACKLISTED_SENDERADDRESS</td><td>Mesaj başlığının kullanımı için ek onay alınması gerekli</td></tr>
<tr><td>4100</td><td>EC_MESSAGE_CANCELED</td><td>Karşı operatör mesajı abonesine geçerlilik süresi içinde iletemedi</td></tr>
<tr><td>4101</td><td>EC_VALIDITYEXPIRED</td><td>Karşı operatör mesajı abonesine geçerlilik süresi içinde iletemedi</td></tr>
<tr><td>4103</td><td>EC_DESTINATION_FLOODING</td><td>Karşıdaki abone çok fazla mesaj almış olduğu için yeni mesaj kabul etmiyor</td></tr>
<tr><td>4104</td><td>EC_DESTINATION_TXT_FLOODING</td><td>Karşıdaki aboneye aynı mesaj çok defa gönderilmiş olduğu için yeni mesaj kabul etmiyor</td></tr>
</tbody>
</table>

<h3>SMS Boy Karakter Limitleri</h3>
<table>
<thead><tr><th></th><th>Normal (datacoding=0)</th><th>Türkçe (datacoding=1)</th><th>Unicode (datacoding=2)</th></tr></thead>
<tbody>
<tr><td>1 boy</td><td>0-160</td><td>0-155</td><td>0-70</td></tr>
<tr><td>2 boy</td><td>161-306</td><td>156-298</td><td>71-134</td></tr>
<tr><td>3 boy</td><td>307-459</td><td>299-447</td><td>135-201</td></tr>
<tr><td>4 boy</td><td>460-612</td><td>448-596</td><td>202-268</td></tr>
<tr><td>5 boy</td><td>613-765</td><td>597-745</td><td>269-335</td></tr>
<tr><td>6 boy</td><td>766-918</td><td>746-894</td><td>336-402</td></tr>
<tr><td>7 boy</td><td>919-1071</td><td>895-1043</td><td>403-469</td></tr>
</tbody>
</table>
<p><strong>Not-1:</strong> datacoding=0 veya datacoding=1 gönderimlerde aşağıdaki karakterler 2 karakter sayılır. ^ { } \\ [ ] ~ | €<br><strong>Not-2:</strong> Sadece (Ş ş Ğ ğ ç ı İ) harfleri Türkçe olarak kabul edilir ve datacoding=1 olarak gönderilmelidir. Diğer Türkçe karakterleri (Ö ö Ü ü Ç) datacoding=0 olarak gönderebilirsiniz.</p>

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v2
- Generator version: 7.19.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  verimor_sms: 0.1.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  verimor_sms:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  verimor_sms:
    path: /path/to/verimor_sms
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:verimor_sms/verimor_sms.dart';


final api = VerimorSms().getBakiyeSorgulamalariApi();
final String username = username_example; // String | Kullanıcı Adı
final String password = password_example; // String | Şifre

try {
    api.v2BalanceGet(username, password);
} on DioException catch (e) {
    print("Exception when calling BakiyeSorgulamalariApi->v2BalanceGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://sms.verimor.com.tr*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*BakiyeSorgulamalariApi*](doc/BakiyeSorgulamalariApi.md) | [**v2BalanceGet**](doc/BakiyeSorgulamalariApi.md#v2balanceget) | **GET** /v2/balance | Bakiye Sorgulama
[*BasliklarApi*](doc/BasliklarApi.md) | [**v2HeadersGet**](doc/BasliklarApi.md#v2headersget) | **GET** /v2/headers | Başlık Yönetimi
[*IysHizmetleriApi*](doc/IysHizmetleriApi.md) | [**v2IysCampaignsGet**](doc/IysHizmetleriApi.md#v2iyscampaignsget) | **GET** /v2/iys/campaigns | İYS Kampanyaları Listeleme
[*IysHizmetleriApi*](doc/IysHizmetleriApi.md) | [**v2IysCampaignsIdConsentsGet**](doc/IysHizmetleriApi.md#v2iyscampaignsidconsentsget) | **GET** /v2/iys/campaigns/{id}/consents | İYS İzinleri Sorgulama
[*IysHizmetleriApi*](doc/IysHizmetleriApi.md) | [**v2IysConsentsJsonPost**](doc/IysHizmetleriApi.md#v2iysconsentsjsonpost) | **POST** /v2/iys_consents.json | İzin Yönetimi
[*KaraListeApi*](doc/KaraListeApi.md) | [**v2BlacklistsGet**](doc/KaraListeApi.md#v2blacklistsget) | **GET** /v2/blacklists | Kara Liste Görüntüleme
[*KaraListeApi*](doc/KaraListeApi.md) | [**v2BlacklistsIdDelete**](doc/KaraListeApi.md#v2blacklistsiddelete) | **DELETE** /v2/blacklists/{id} | Kara Listeden Silme
[*KaraListeApi*](doc/KaraListeApi.md) | [**v2BlacklistsPost**](doc/KaraListeApi.md#v2blacklistspost) | **POST** /v2/blacklists | Kara Liste Ekleme
[*RaporlarApi*](doc/RaporlarApi.md) | [**getSmsStatus**](doc/RaporlarApi.md#getsmsstatus) | **GET** /v2/status | Rapor Sorgulama (API ID)
[*RaporlarApi*](doc/RaporlarApi.md) | [**v2InboundMessagesGet**](doc/RaporlarApi.md#v2inboundmessagesget) | **GET** /v2/inbound_messages | Gelen SMS Sorgulama
[*SmsKampanyasiApi*](doc/SmsKampanyasiApi.md) | [**sendSmsJson**](doc/SmsKampanyasiApi.md#sendsmsjson) | **POST** /v2/send.json | SMS Gönderme (JSON)
[*SmsKampanyasiApi*](doc/SmsKampanyasiApi.md) | [**v2CancelIdPost**](doc/SmsKampanyasiApi.md#v2cancelidpost) | **POST** /v2/cancel/{id} | Gönderim İptali
[*SmsKampanyasiApi*](doc/SmsKampanyasiApi.md) | [**v2SendGet**](doc/SmsKampanyasiApi.md#v2sendget) | **GET** /v2/send | SMS Gönderme (GET)


## Documentation For Models

 - [GelenSMSAlimiPostRequestInner](doc/GelenSMSAlimiPostRequestInner.md)
 - [GetSmsStatus200ResponseInner](doc/GetSmsStatus200ResponseInner.md)
 - [GonderimRaporuAlimiPostRequestInner](doc/GonderimRaporuAlimiPostRequestInner.md)
 - [IYSGunlukVatandasRaporuPostRequest](doc/IYSGunlukVatandasRaporuPostRequest.md)
 - [SendSmsJsonRequest](doc/SendSmsJsonRequest.md)
 - [SendSmsJsonRequestMessagesInner](doc/SendSmsJsonRequestMessagesInner.md)
 - [V2BlacklistsGet200Response](doc/V2BlacklistsGet200Response.md)
 - [V2BlacklistsGet200ResponseRecordsInner](doc/V2BlacklistsGet200ResponseRecordsInner.md)
 - [V2CancelIdPostRequest](doc/V2CancelIdPostRequest.md)
 - [V2InboundMessagesGet200ResponseInner](doc/V2InboundMessagesGet200ResponseInner.md)
 - [V2IysCampaignsGet200Response](doc/V2IysCampaignsGet200Response.md)
 - [V2IysCampaignsGet200ResponseRecordsInner](doc/V2IysCampaignsGet200ResponseRecordsInner.md)
 - [V2IysCampaignsIdConsentsGet200Response](doc/V2IysCampaignsIdConsentsGet200Response.md)
 - [V2IysCampaignsIdConsentsGet200ResponseRecordsInner](doc/V2IysCampaignsIdConsentsGet200ResponseRecordsInner.md)
 - [V2IysConsentsJsonPostRequest](doc/V2IysConsentsJsonPostRequest.md)
 - [V2IysConsentsJsonPostRequestConsentsInner](doc/V2IysConsentsJsonPostRequestConsentsInner.md)


## Documentation For Authorization

Endpoints do not require authorization.


## Author



