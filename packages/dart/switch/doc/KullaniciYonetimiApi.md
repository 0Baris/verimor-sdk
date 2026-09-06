# verimor_switch.api.KullaniciYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDnd**](KullaniciYonetimiApi.md#creatednd) | **GET** /dnd/{id} | Dahili için Rahatsız Etme (DND) Modunu Ayarlama
[**createWebphoneToken**](KullaniciYonetimiApi.md#createwebphonetoken) | **POST** /webphone_tokens | Dahili için Token (Anahtar) Alma (IFrame Gömme için)
[**getExtension**](KullaniciYonetimiApi.md#getextension) | **GET** /extensions/{id} | Dahili Detayı
[**listAgentStatuses**](KullaniciYonetimiApi.md#listagentstatuses) | **GET** /agent_statuses | MT Durumlarını ve Üyeliklerini Listeleme
[**listExtensions**](KullaniciYonetimiApi.md#listextensions) | **GET** /extensions | Dahili Listesi
[**listUserStatuses**](KullaniciYonetimiApi.md#listuserstatuses) | **GET** /user_statuses | Dahili Durumlarını Listeleme


# **createDnd**
> String createDnd(id, state)

Dahili için Rahatsız Etme (DND) Modunu Ayarlama

Kullanıcının dahili numarası için Rahatsız Etme (DND) modunu açar veya kapatır. DND açıkken kullanıcıya gelen çağrılar engellenir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKullaniciYonetimiApi();
final String id = 1001; // String | Dahili numara (örn: 1001)
final String state = state_example; // String | DND durumu: \"on\" açmak için, \"off\" kapatmak için:  * `on`   * `off`   

try {
    final response = api.createDnd(id, state);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KullaniciYonetimiApi->createDnd: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Dahili numara (örn: 1001) | 
 **state** | **String**| DND durumu: \"on\" açmak için, \"off\" kapatmak için:  * `on`   * `off`    | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWebphoneToken**
> String createWebphoneToken(extension_)

Dahili için Token (Anahtar) Alma (IFrame Gömme için)

Web telefonunu kendi uygulamanızda kullanmak için token oluşturur. Her açılışta ilgili dahili için token alınmalıdır. Token 1 gün geçerlidir.  Bulut Santral web telefonunu kendi web uygulamanızın içine iframe ile gömmek için kullanılır. Böylece kullanıcılarınız tek pencereyle çalışır ve iki ayrı sisteme login olmak zorunda kalmazlar.  Online İşlem Merkezi => Abonelik İşlemleri => Personel Hesapları sayfasında, web telefonunu kullanacak her dahili için bir personel hesabı açıp ilgili dahiliyi seçmiş olmalısınız. Karşılığında personel hesabı olmayan dahililer web telefonunu kullanamaz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKullaniciYonetimiApi();
final String extension_ = extension__example; // String | Web telefonunu kullanacak dahili numarası

try {
    final response = api.createWebphoneToken(extension_);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KullaniciYonetimiApi->createWebphoneToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extension_** | **String**| Web telefonunu kullanacak dahili numarası | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtension**
> GetExtension200Response getExtension(id)

Dahili Detayı

Belirli bir dahilinin detaylarını getirmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/extensions/{id} adresi çağrılır.  ÖNEMLİ NOT: Yanıt, dahilinin SIP şifresini (`password`) düz metin olarak içerir. Bu yanıtı güvenli şekilde saklayın ve loglamayın.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKullaniciYonetimiApi();
final String id = 1001; // String | Dahili numarası

try {
    final response = api.getExtension(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KullaniciYonetimiApi->getExtension: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Dahili numarası | 

### Return type

[**GetExtension200Response**](GetExtension200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgentStatuses**
> BuiltList<ListAgentStatuses200ResponseInner> listAgentStatuses(agent, queue, status)

MT Durumlarını ve Üyeliklerini Listeleme

Müşteri Temsilcilerinizin durumunu ve hangi kuyruklara üye olduklarını listelemek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/agent_statuses adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint, /user_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada toplam 2 istek gönderebilirsiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKullaniciYonetimiApi();
final String agent = 1010; // String | Belirli bir MT'nin durumunu öğrenmek için kullanılır
final String queue = 204; // String | Belirli kuyruktaki MT'lerin durumlarını listelemek için kullanılır
final String status = status_example; // String | Belirli durumdaki MT'leri listelemek için kullanılır:  * `AVAILABLE`   * `TALKING`   * `LOGGED_OUT`   * `ON_BREAK`   

try {
    final response = api.listAgentStatuses(agent, queue, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KullaniciYonetimiApi->listAgentStatuses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agent** | **String**| Belirli bir MT'nin durumunu öğrenmek için kullanılır | [optional] 
 **queue** | **String**| Belirli kuyruktaki MT'lerin durumlarını listelemek için kullanılır | [optional] 
 **status** | **String**| Belirli durumdaki MT'leri listelemek için kullanılır:  * `AVAILABLE`   * `TALKING`   * `LOGGED_OUT`   * `ON_BREAK`    | [optional] 

### Return type

[**BuiltList&lt;ListAgentStatuses200ResponseInner&gt;**](ListAgentStatuses200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listExtensions**
> BuiltList<ListExtensions200ResponseInner> listExtensions()

Dahili Listesi

Santralinizdeki tüm dahilileri listelemek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/extensions adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde dahili listesi döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKullaniciYonetimiApi();

try {
    final response = api.listExtensions();
    print(response);
} on DioException catch (e) {
    print('Exception when calling KullaniciYonetimiApi->listExtensions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ListExtensions200ResponseInner&gt;**](ListExtensions200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserStatuses**
> BuiltList<ListUserStatuses200ResponseInner> listUserStatuses(user, status)

Dahili Durumlarını Listeleme

Dahililerinizin durumlarını listelemek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/user_statuses adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint, /agent_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada toplam 2 istek gönderebilirsiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKullaniciYonetimiApi();
final String user = 1000; // String | Belirli bir Dahilinin durumunu öğrenmek için kullanılır
final String status = status_example; // String | Belirli durumdaki Dahilileri listelemek için kullanılır:  * `AVAILABLE`   * `TALKING`   * `UNREGISTERED`   * `SS_DND`   

try {
    final response = api.listUserStatuses(user, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KullaniciYonetimiApi->listUserStatuses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Belirli bir Dahilinin durumunu öğrenmek için kullanılır | [optional] 
 **status** | **String**| Belirli durumdaki Dahilileri listelemek için kullanılır:  * `AVAILABLE`   * `TALKING`   * `UNREGISTERED`   * `SS_DND`    | [optional] 

### Return type

[**BuiltList&lt;ListUserStatuses200ResponseInner&gt;**](ListUserStatuses200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

