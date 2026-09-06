# verimor_sms.api.SmsKampanyasiApi

## Load the API package
```dart
import 'package:verimor_sms/api.dart';
```

All URIs are relative to *https://sms.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendSmsJson**](SmsKampanyasiApi.md#sendsmsjson) | **POST** /v2/send.json | SMS Gönderme (JSON)
[**v2CancelIdPost**](SmsKampanyasiApi.md#v2cancelidpost) | **POST** /v2/cancel/{id} | Gönderim İptali
[**v2SendGet**](SmsKampanyasiApi.md#v2sendget) | **GET** /v2/send | SMS Gönderme (GET)


# **sendSmsJson**
> String sendSmsJson(sendSmsJsonRequest)

SMS Gönderme (JSON)

JSON formatında toplu SMS gönderimi için kullanılır. Birden fazla farklı mesajı farklı numaralara gönderebilirsiniz. Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek gönderebilirsiniz (burst 80).

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getSmsKampanyasiApi();
final SendSmsJsonRequest sendSmsJsonRequest = ; // SendSmsJsonRequest | 

try {
    final response = api.sendSmsJson(sendSmsJsonRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SmsKampanyasiApi->sendSmsJson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendSmsJsonRequest** | [**SendSmsJsonRequest**](SendSmsJsonRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2CancelIdPost**
> String v2CancelIdPost(id, v2CancelIdPostRequest)

Gönderim İptali

<p>İleri tarihli mesaj gönderimini iptal etmek için örnekte olduğu gibi bir JSON string POST edilir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getSmsKampanyasiApi();
final String id = id_example; // String | Kampanya ID'si
final V2CancelIdPostRequest v2CancelIdPostRequest = ; // V2CancelIdPostRequest | 

try {
    final response = api.v2CancelIdPost(id, v2CancelIdPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SmsKampanyasiApi->v2CancelIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Kampanya ID'si | 
 **v2CancelIdPostRequest** | [**V2CancelIdPostRequest**](V2CancelIdPostRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2SendGet**
> int v2SendGet(username, password, dest, msg, sourceAddr, validFor, datacoding, isCommercial, iysRecipientType, sendAt)

SMS Gönderme (GET)

Aynı mesajı birden çok numaraya HTTP(S) GET (Plain de denir) ile gönderir; yanıtı düz metin olarak döner. Farklı numaralara farklı mesaj göndermek için /v2/send.json (POST JSON) kullanın. Bu endpoint /v2/iys_consents.json ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek gönderebilirsiniz (burst 80).

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getSmsKampanyasiApi();
final String username = username_example; // String | API kullanıcı adı
final String password = password_example; // String | API şifresi
final String dest = dest_example; // String | Mesajın gönderileceği telefon numaraları. Birden fazla numara varsa virgül ile ayrılmalıdır. Yurt dışı numaralarının başına 00 veya + eklenmelidir. Örnek: 0049xxxxxxxx veya +49xxxxxxxx (+ işareti URL'lerde boşluk olarak yorumlanacağı için %2B olarak encode etmelisiniz, örn: %2B49xxxxxxxx). (zorunlu)
final String msg = msg_example; // String | Gönderilecek mesaj. Türkçe harf içerebilir. Maksimum uzunluğu Türkçe harf içeriyorsa 1043, içermiyorsa 1071 karakterdir (zorunlu). Encoding her zaman UTF8 beklenir.
final String sourceAddr = sourceAddr_example; // String | Gönderici kimliği (Başlık). Source_addr boş ise sistemde kayıtlı ilk başlığınız kullanılır.
final String validFor = validFor_example; // String | Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer 00:01, Maksimum değer 48:00)
final int datacoding = 56; // int | Mesaj metni için kullanılacak karakter kodlaması. 0, 1 ve 2 değerlerini alabilir. Mesajda kullanılabilecek harfleri ve mesajın boy limitlerini belirler. Boş ise mesaj metnine bakılır, Türkçe harf varsa 1, yoksa 0 kaydedilir. Mesaj boyları tablosu için dokümanın sonuna bakınız. Yurt dışına SMS gönderiminde değeri 1 olarak gönderilmemelidir.:  * `0`   * `1`   
final bool isCommercial = true; // bool | Opsiyonel. true | false değeri alır. Ticari gönderimlerde true olarak belirlemelisiniz.
final String iysRecipientType = iysRecipientType_example; // String | BIREYSEL | TACIR değeri alır. Ticari gönderimlerde mutlaka belirlemelisiniz.
final String sendAt = sendAt_example; // String | Mesajın gönderilmesini istediğiniz tarih saat. '2015-02-20 16:06:00' şeklinde veya ISO 8601 standardındaki formatlar kabul edilir (http://en.wikipedia.org/wiki/ISO_8601). Boş ise mesaj hemen gönderilir.

try {
    final response = api.v2SendGet(username, password, dest, msg, sourceAddr, validFor, datacoding, isCommercial, iysRecipientType, sendAt);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SmsKampanyasiApi->v2SendGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| API kullanıcı adı | 
 **password** | **String**| API şifresi | 
 **dest** | **String**| Mesajın gönderileceği telefon numaraları. Birden fazla numara varsa virgül ile ayrılmalıdır. Yurt dışı numaralarının başına 00 veya + eklenmelidir. Örnek: 0049xxxxxxxx veya +49xxxxxxxx (+ işareti URL'lerde boşluk olarak yorumlanacağı için %2B olarak encode etmelisiniz, örn: %2B49xxxxxxxx). (zorunlu) | 
 **msg** | **String**| Gönderilecek mesaj. Türkçe harf içerebilir. Maksimum uzunluğu Türkçe harf içeriyorsa 1043, içermiyorsa 1071 karakterdir (zorunlu). Encoding her zaman UTF8 beklenir. | 
 **sourceAddr** | **String**| Gönderici kimliği (Başlık). Source_addr boş ise sistemde kayıtlı ilk başlığınız kullanılır. | [optional] 
 **validFor** | **String**| Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer 00:01, Maksimum değer 48:00) | [optional] 
 **datacoding** | **int**| Mesaj metni için kullanılacak karakter kodlaması. 0, 1 ve 2 değerlerini alabilir. Mesajda kullanılabilecek harfleri ve mesajın boy limitlerini belirler. Boş ise mesaj metnine bakılır, Türkçe harf varsa 1, yoksa 0 kaydedilir. Mesaj boyları tablosu için dokümanın sonuna bakınız. Yurt dışına SMS gönderiminde değeri 1 olarak gönderilmemelidir.:  * `0`   * `1`    | [optional] 
 **isCommercial** | **bool**| Opsiyonel. true | false değeri alır. Ticari gönderimlerde true olarak belirlemelisiniz. | [optional] 
 **iysRecipientType** | **String**| BIREYSEL | TACIR değeri alır. Ticari gönderimlerde mutlaka belirlemelisiniz. | [optional] 
 **sendAt** | **String**| Mesajın gönderilmesini istediğiniz tarih saat. '2015-02-20 16:06:00' şeklinde veya ISO 8601 standardındaki formatlar kabul edilir (http://en.wikipedia.org/wiki/ISO_8601). Boş ise mesaj hemen gönderilir. | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

