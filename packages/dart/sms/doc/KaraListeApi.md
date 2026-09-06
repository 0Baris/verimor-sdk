# verimor_sms.api.KaraListeApi

## Load the API package
```dart
import 'package:verimor_sms/api.dart';
```

All URIs are relative to *https://sms.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2BlacklistsGet**](KaraListeApi.md#v2blacklistsget) | **GET** /v2/blacklists | Kara Liste Görüntüleme
[**v2BlacklistsIdDelete**](KaraListeApi.md#v2blacklistsiddelete) | **DELETE** /v2/blacklists/{id} | Kara Listeden Silme
[**v2BlacklistsPost**](KaraListeApi.md#v2blacklistspost) | **POST** /v2/blacklists | Kara Liste Ekleme


# **v2BlacklistsGet**
> V2BlacklistsGet200Response v2BlacklistsGet(username, password, offset, limit)

Kara Liste Görüntüleme

<p>Kara listedeki numaraları listelemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik doğrulaması gerektirir.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getKaraListeApi();
final String username = username_example; // String | Kullanıcı adı
final String password = password_example; // String | Şifre
final int offset = 56; // int | Sayfalama Taban Değeri
final int limit = 56; // int | Sayfa Kayıt Sayısı

try {
    final response = api.v2BlacklistsGet(username, password, offset, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KaraListeApi->v2BlacklistsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı adı | 
 **password** | **String**| Şifre | 
 **offset** | **int**| Sayfalama Taban Değeri | [optional] 
 **limit** | **int**| Sayfa Kayıt Sayısı | [optional] 

### Return type

[**V2BlacklistsGet200Response**](V2BlacklistsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2BlacklistsIdDelete**
> String v2BlacklistsIdDelete(username, password, id)

Kara Listeden Silme

<p>Kara listeden numara(lar)ı silmek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getKaraListeApi();
final String username = username_example; // String | kullanıcı adı
final String password = password_example; // String | Şifre
final String id = id_example; // String | Kara listeden silinmesi istenen numaralar, virgülle ayrılmış liste olarak girilmelidir. Örnek: 905111111111,905111111112

try {
    final response = api.v2BlacklistsIdDelete(username, password, id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KaraListeApi->v2BlacklistsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| kullanıcı adı | 
 **password** | **String**| Şifre | 
 **id** | **String**| Kara listeden silinmesi istenen numaralar, virgülle ayrılmış liste olarak girilmelidir. Örnek: 905111111111,905111111112 | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2BlacklistsPost**
> String v2BlacklistsPost(username, password, phones)

Kara Liste Ekleme

<p>Kara listeye numara eklemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getKaraListeApi();
final String username = username_example; // String | Kullanıcı adı
final String password = password_example; // String | Şifre
final String phones = phones_example; // String | Kara listeye eklenmeleri istenen numaralar, virgülle ayrılmış liste olarak girilmelidir. Örnek: 905111111111,905111111112

try {
    final response = api.v2BlacklistsPost(username, password, phones);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KaraListeApi->v2BlacklistsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı adı | 
 **password** | **String**| Şifre | 
 **phones** | **String**| Kara listeye eklenmeleri istenen numaralar, virgülle ayrılmış liste olarak girilmelidir. Örnek: 905111111111,905111111112 | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

