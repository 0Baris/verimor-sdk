# verimor_switch.model.CreateIvrCampaignRequest

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callType** | **String** | Otomatik aramanın tipi. \"queue\" ya da \"ivr\" olabilir. | 
**queueNumber** | **String** | Kuyruk tipi otomatik aramalarda, çağrıların hangi kuyruğa aktarılacağını belirtir. | [optional] 
**threadMultiplier** | **int** | Kuyruk tipi otomatik aramalarda, eşzamanlı olarak, müsait temsilci sayısının kaç katı arama yapılacağını belirtir. | [optional] 
**maxThreadCount** | **int** | Kampanya için, eşzamanlı maksimum çağrı sayısını belirtir. Bu parametre belirtilmezse, santralin değerleri referans alınır. (Santral ayarlarında, \"Otomatik Arama Kanal Sayısı\" değeri referans alınır. Bu ayar için \"Otomatik Arama / Sesli Mesaj (Çoklu) modülü gereklidir.) | [optional] 
**name** | **String** | Kampanyanın adı. | 
**dateRangeBegin** | **String** | Opsiyonel. Kampanyanın aramaya başlayacağı tarih, YYYY-AA-GG formatında olmalıdır. Gönderilmezse o anki tarih kullanılır. | [optional] 
**dateRangeEnd** | **String** | Opsiyonel. Kampanyanın arama bitiş tarihi. YYYY-AA-GG formatında olmalıdır. Gönderilmezse date_range_begin değeri kullanılır. | [optional] 
**timeRangeBegin** | **String** | Opsiyonel. Kampanyanın çalışma saatlerinin başlangıcı. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse \"00:00\" değeri kullanılır. | [optional] 
**timeRangeEnd** | **String** | Opsiyonel. Kampanyanın çalışma saatlerinin bitişi. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse \"23:59\" değeri kullanılır. | [optional] 
**activeDays** | **BuiltList&lt;int&gt;** | Kampanyanın çalışma günleri. 1=Pazartesi, 7=Pazar olacak şekilde integer array olarak verilir ve kampanyanın haftanın sadece belirli günleri çalışmasını sağlar. | [optional] 
**ringTimeout** | **int** | Aranan numara çalarken beklenecek süre (saniye), 25 – 60 sn. arasında olabilir. | [optional] 
**cli** | **String** | Arayan numara. Karşı taraf bu numarayı görür. | [optional] 
**welcomeAnnouncementId** | **int** | Aranan numaralara dinletilecek ses dosyasının ID'si. Bu ses dinletilip peşinden tuşlama beklenir. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz. | [optional] 
**callRetries** | **int** | Tekrar arama sayısı. Meşgul, ulaşılamıyor, cevap yok gibi durumlarda numaranın kaç defa daha aranacağını belirtir. | [optional] 
**webhookUrl** | **String** | Tuşlamaların bildirileceği URL. Doluysa tüm tuşlamalar bu URL'e gönderilir. Kampanya oluşturulurken bu URL'e boş bir POST request'i gönderilip 200 dönmesi beklenir, bu şekilde URL'i doğruluyoruz. Aranan kişi tuşlama yaptıktan sonra bir yere yönlenmeyecekse, sadece tuşlamayı kaydetmek istiyorsanız, tuşa hedef olarak anons verebilirsiniz. | [optional] 
**digitTarget0** | **String** | Aranan kişi 0 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget1** | **String** | Aranan kişi 1 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget2** | **String** | Aranan kişi 2 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget3** | **String** | Aranan kişi 3 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget4** | **String** | Aranan kişi 4 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget5** | **String** | Aranan kişi 5 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget6** | **String** | Aranan kişi 6 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget7** | **String** | Aranan kişi 7 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget8** | **String** | Aranan kişi 8 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTarget9** | **String** | Aranan kişi 9 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTargetStar** | **String** | Aranan kişi yıldız (*) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitTargetSquare** | **String** | Aranan kişi kare (#) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**timeoutTarget** | **String** | Aranan kişi ses kaydını dinledikten sonra digit_timeout süresi içinde bir tuşa basmadığında ve retry_count adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**invalidTarget** | **String** | Aranan kişi ses kaydını dinledikten sonra hatalı bir tuşa bastığında ve retry_count adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. | [optional] 
**digitRetries** | **int** | Tuşlama tekrar sayısı. Geçersiz tuşlama yapıldığında veya hiç tuşlama yapılmayıp digit_timeout süresi dolduğunda, ilgili uyarı okunup Menü baştan okunur. | [optional] 
**digitTimeout** | **int** | Opsiyonel. Min:1, Maks:10, Varsayılan 4'tür. Ses kaydı dinletildikten sonra burada belirtilen süre kadar bekletilip senaryoya göre ya zaman aşımı hedefine aktarılır ya da menü baştan okutulur. | [optional] 
**phoneList** | [**BuiltList&lt;CreateIvrCampaignRequestPhoneListInner&gt;**](CreateIvrCampaignRequestPhoneListInner.md) | Aranacak numara listesi (zorunlu). \"phone\" aranacak numaradır, \"905111111111\" veya \"05111111111\" veya \"5111111111\" veya uluslararası için \"00491234567\" şeklinde olmalıdır, \"phone\" sahası zorunludur. \"phrase\" sahası bu numaraya okunacak özel mesajı belirtir, formatı için aşağıda Cümle (phrase) Formatı başlığına bakınız. \"phrase\" sahası zorunlu değildir. \"lang\" sahası, mesajın hangi dilde okunacağını belirtir. Zorunlu değildir. Geçerli diller: \"tr-TR\", \"en-US\" ve \"ar-XA\". | 
**isCommercial** | **bool** | Opsiyonel. true | false değeri alır. Varsayılan false. Ticari gönderimlerde true olarak belirlemelisiniz. | [optional] 
**iysRecipientType** | **String** | \"BIREYSEL\" ya da \"TACIR\" olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz. | [optional] 
**iysBrandCode** | **String** | Sistemde kayıtlı ve onaylı başlıklarınızdan birinin \"İYS Marka Kodu\" değeri olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz. | [optional] 
**recordingEnabled** | **bool** | Arama başlar başlamaz kayıt yapılmasını istiyorsanız bu parametreye \"true\" (String) ya da \"t\" vermelisiniz. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


