# verimor_sms.api.RaporlarApi

## Load the API package
```dart
import 'package:verimor_sms/api.dart';
```

All URIs are relative to *https://sms.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSmsStatus**](RaporlarApi.md#getsmsstatus) | **GET** /v2/status | Rapor Sorgulama (API ID)
[**v2InboundMessagesGet**](RaporlarApi.md#v2inboundmessagesget) | **GET** /v2/inbound_messages | Gelen SMS Sorgulama


# **getSmsStatus**
> BuiltList<GetSmsStatus200ResponseInner> getSmsStatus(username, password, id, dest, greaterThan, customId)

Rapor Sorgulama (API ID)

<p>Gönderim Raporu almak için kullanılır.</p><ul dir=\"auto\"><li>id: Kampanya'ya API tarafından verilen ID'dir. id veya custom_id zorunludur.</li><li>custom_id: Kampanya'ya sizin tarafından verilen ID'dir. id veya custom_id zorunludur.</li><li>dest: Zorunlu değil. Kampanya'da belirli telefon numaralarına gönderilmiş mesajları sorgular.</li><li>greater_than: Verilen message_id'den büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız.</li></ul><p>Bu endpoint /v2/balance, /v2/headers gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getRaporlarApi();
final String username = username_example; // String | kullanıcı adı
final String password = password_example; // String | Şifre
final int id = 56; // int | Kampanya ID'si. Bu parametre zorunludur. Kampanya ID'si, API'nin gönderim sırasında ürettiği ID'dir. Bu ID ile sorgulama yapabilirsiniz.
final String dest = dest_example; // String | Zorunlu değil. Kampanya'da belirli telefon numaralarına gönderilmiş mesajları sorgular
final int greaterThan = 56; // int | Verilen message_id'den büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız.
final String customId = customId_example; // String | Kampanya Özel ID'si. Bu parametre zorunludur. Kampanya Özel ID'si, API'nin gönderim sırasında ürettiği Özel ID'dir. Bu ID ile sorgulama yapabilirsiniz.

try {
    final response = api.getSmsStatus(username, password, id, dest, greaterThan, customId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlarApi->getSmsStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| kullanıcı adı | 
 **password** | **String**| Şifre | 
 **id** | **int**| Kampanya ID'si. Bu parametre zorunludur. Kampanya ID'si, API'nin gönderim sırasında ürettiği ID'dir. Bu ID ile sorgulama yapabilirsiniz. | [optional] 
 **dest** | **String**| Zorunlu değil. Kampanya'da belirli telefon numaralarına gönderilmiş mesajları sorgular | [optional] 
 **greaterThan** | **int**| Verilen message_id'den büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız. | [optional] 
 **customId** | **String**| Kampanya Özel ID'si. Bu parametre zorunludur. Kampanya Özel ID'si, API'nin gönderim sırasında ürettiği Özel ID'dir. Bu ID ile sorgulama yapabilirsiniz. | [optional] 

### Return type

[**BuiltList&lt;GetSmsStatus200ResponseInner&gt;**](GetSmsStatus200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2InboundMessagesGet**
> BuiltList<V2InboundMessagesGet200ResponseInner> v2InboundMessagesGet(username, password, fromTime, toTime, greaterThan)

Gelen SMS Sorgulama

<p>Bu API, gelen SMS'lerinizi sorgulamak için kullanılır.</p><p>API, hesabınıza gelen SMS'leri iki farklı yöntemle teslim edebilir. Bunlar PUSH ve GET yöntemleridir.</p><p>Bu servis&nbsp;<strong>HTTP GET ile Gelen SMS Alımı</strong>&nbsp;hizmetini sağlar. PUSH ile Gelen SMS Alımı konusu için Inbound Bölümü altındaki ilgili başlığa bakabilirsiniz.<br></p><p>Sorgulama, belirli bir zaman aralığında veya belirli bir message_id'den büyük mesajları almak için yapılabilir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getRaporlarApi();
final String username = username_example; // String | Kullanıcı adı
final String password = password_example; // String | Şifre
final String fromTime = fromTime_example; // String | Sorgulanacak zaman aralığının başlangıcı (YYYY-MM-DD HH:MM:SS)
final String toTime = toTime_example; // String | Sorgulanacak zaman aralığının bitişi (YYYY-MM-DD HH:MM:SS)
final int greaterThan = 56; // int | Verilen message_id'den büyük mesajları sorgular. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız.

try {
    final response = api.v2InboundMessagesGet(username, password, fromTime, toTime, greaterThan);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlarApi->v2InboundMessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı adı | 
 **password** | **String**| Şifre | 
 **fromTime** | **String**| Sorgulanacak zaman aralığının başlangıcı (YYYY-MM-DD HH:MM:SS) | [optional] 
 **toTime** | **String**| Sorgulanacak zaman aralığının bitişi (YYYY-MM-DD HH:MM:SS) | [optional] 
 **greaterThan** | **int**| Verilen message_id'den büyük mesajları sorgular. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız. | [optional] 

### Return type

[**BuiltList&lt;V2InboundMessagesGet200ResponseInner&gt;**](V2InboundMessagesGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

