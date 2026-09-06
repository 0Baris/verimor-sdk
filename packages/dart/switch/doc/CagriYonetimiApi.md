# verimor_switch.api.CagriYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answerCall**](CagriYonetimiApi.md#answercall) | **GET** /answer/{id} | Çağrıyı Cevaplama (GET)
[**answerCallPost**](CagriYonetimiApi.md#answercallpost) | **POST** /answer | Çağrıyı Cevaplama (POST)
[**createBridge**](CagriYonetimiApi.md#createbridge) | **GET** /bridge | Çağrı Bağlama
[**hangupCall**](CagriYonetimiApi.md#hangupcall) | **GET** /hangup/{id} | Çağrıyı Sonlandırma
[**muteCall**](CagriYonetimiApi.md#mutecall) | **GET** /mute/{id} | Çağrıyı Sessize Alma / Sesli Yapma
[**originateCall**](CagriYonetimiApi.md#originatecall) | **GET** /originate | Çağrı Başlatma (GET)
[**originateCallPost**](CagriYonetimiApi.md#originatecallpost) | **POST** /originate | Çağrı Başlatma (POST)
[**transferCall**](CagriYonetimiApi.md#transfercall) | **GET** /transfer/{id} | Çağrıyı Aktarma (GET)
[**transferCallPost**](CagriYonetimiApi.md#transfercallpost) | **POST** /transfer | Çağrıyı Aktarma (POST)


# **answerCall**
> String answerCall(id)

Çağrıyı Cevaplama (GET)

manual_answer=true parametresi ile başlatılmış ve dahili telefonda çalmakta olan bir çağrıyı API üzerinden cevaplamak için kullanılır. HTTP GET metodu ile /answer/{id} çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200 ile +OK veya çağrıya ilişkin bilgi döner. Başarısız olduğunda ilgili hata mesajı body'de döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String id = 736eaf7e-4cc4-44ab-8dbe-16b18e9618b1; // String | Cevaplanacak çağrının UUID'si

try {
    final response = api.answerCall(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->answerCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Cevaplanacak çağrının UUID'si | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **answerCallPost**
> String answerCallPost(answerCallPostRequest)

Çağrıyı Cevaplama (POST)

manual_answer=true parametresi ile başlatılmış bir çağrıyı cevaplamak için HTTP POST metodu ile /answer endpoint'i id parametresi ile çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200 döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final AnswerCallPostRequest answerCallPostRequest = ; // AnswerCallPostRequest | 

try {
    final response = api.answerCallPost(answerCallPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->answerCallPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **answerCallPostRequest** | [**AnswerCallPostRequest**](AnswerCallPostRequest.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBridge**
> String createBridge(source_, destination, callerId, timeout, announcementToCaller, announcementToCallee, recordingEnabled)

Çağrı Bağlama

Uygulamalarınız üzerinden iki dış numarayı (örn. cep telefonu) arayıp birbiriyle görüştürmek için kullanılır. Kullanım alanları: Müşteriniz ve saha personelinizi görüştürmek istiyorsunuz fakat bilgi güvenliği (örn. KVKK) nedeniyle cep telefonu numaralarının görünmesini istemiyorsunuz (numara maskeleme/gizleme). Müşteriniz ve saha personelinizin yaptığı görüşmeleri raporlamak ve ses kayıtlarını tutmak istiyorsunuz. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String source_ = 905111111111; // String | İlk olarak bu numara aranır, telefon açılınca destination aranır (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında)
final String destination = 905111111112; // String | İkinci aranacak numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında)
final String callerId = 908505320000; // String | İki tarafı da ararken kullanılacak dış numara (908505320000 formatında. Bu parametre verilmezse 1000 dahilisinde seçili olan dış no kullanılacaktır)
final int timeout = 30; // int | Telefon çaldırma süresi. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29
final int announcementToCaller = 56; // int | Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz
final int announcementToCallee = 56; // int | Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz
final bool recordingEnabled = false; // bool | Görüşmenin kaydedilmesini istemiyorsanız false verin. Varsayılan olarak true kabul edilir

try {
    final response = api.createBridge(source_, destination, callerId, timeout, announcementToCaller, announcementToCallee, recordingEnabled);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->createBridge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_** | **String**| İlk olarak bu numara aranır, telefon açılınca destination aranır (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında) | 
 **destination** | **String**| İkinci aranacak numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında) | 
 **callerId** | **String**| İki tarafı da ararken kullanılacak dış numara (908505320000 formatında. Bu parametre verilmezse 1000 dahilisinde seçili olan dış no kullanılacaktır) | [optional] 
 **timeout** | **int**| Telefon çaldırma süresi. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29 | [optional] 
 **announcementToCaller** | **int**| Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz | [optional] 
 **announcementToCallee** | **int**| Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz | [optional] 
 **recordingEnabled** | **bool**| Görüşmenin kaydedilmesini istemiyorsanız false verin. Varsayılan olarak true kabul edilir | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hangupCall**
> String hangupCall(id)

Çağrıyı Sonlandırma

Uygulamalarınız üzerinden santralde devam eden bir çağrıyı sonlandırmak için kullanılır. HTTP GET metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde +OK döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String id = f3797dfc-a818-11e7-bf70-cb295b6663ce; // String | Sonlandırmak istediğiniz çağrının UUID'si

try {
    final response = api.hangupCall(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->hangupCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Sonlandırmak istediğiniz çağrının UUID'si | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **muteCall**
> String muteCall(id, state)

Çağrıyı Sessize Alma / Sesli Yapma

Santralde devam eden bir çağrıyı sessize almak veya sesli yapmak için kullanılır. HTTP GET metodu ile çağrı UUID'si ve state parametresi kullanılarak mute işlemi gerçekleştirilir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String id = f3797dfc-a818-11e7-bf70-cb295b6663ce; // String | Sessize almak istediğiniz çağrının UUID'si
final String state = on; // String | Mute modunu açmak için \"on\", kapatmak için \"off\" olarak gönderilir:  * `on`   * `off`   

try {
    final response = api.muteCall(id, state);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->muteCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Sessize almak istediğiniz çağrının UUID'si | 
 **state** | **String**| Mute modunu açmak için \"on\", kapatmak için \"off\" olarak gönderilir:  * `on`   * `off`    | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **originateCall**
> String originateCall(extension_, destination, callerId, manualAnswer, timeout, announcementToCallee, announcementToCaller, customCallType)

Çağrı Başlatma (GET)

Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.  Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.  HAZIRLIK: Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key) öğrenmelisiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String extension_ = 1001; // String | Aramanın bağlanacağı dahili numaradır.
final String destination = 908505320000; // String | Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında olmalı).
final String callerId = 908505320000; // String | Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide seçili olan dış no kullanılacaktır).
final bool manualAnswer = true; // bool | Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır ve karşı numara aranır).
final int timeout = 30; // int | Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur.
final int announcementToCallee = 56; // int | Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
final int announcementToCaller = 56; // int | Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
final String customCallType = customCallType_example; // String | Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak gönderebilirsiniz.

try {
    final response = api.originateCall(extension_, destination, callerId, manualAnswer, timeout, announcementToCallee, announcementToCaller, customCallType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->originateCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extension_** | **String**| Aramanın bağlanacağı dahili numaradır. | 
 **destination** | **String**| Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında olmalı). | 
 **callerId** | **String**| Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide seçili olan dış no kullanılacaktır). | [optional] 
 **manualAnswer** | **bool**| Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır ve karşı numara aranır). | [optional] 
 **timeout** | **int**| Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur. | [optional] 
 **announcementToCallee** | **int**| Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz. | [optional] 
 **announcementToCaller** | **int**| Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz. | [optional] 
 **customCallType** | **String**| Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak gönderebilirsiniz. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **originateCallPost**
> String originateCallPost(originateCallPostRequest)

Çağrı Başlatma (POST)

Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP POST metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final OriginateCallPostRequest originateCallPostRequest = ; // OriginateCallPostRequest | 

try {
    final response = api.originateCallPost(originateCallPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->originateCallPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **originateCallPostRequest** | [**OriginateCallPostRequest**](OriginateCallPostRequest.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferCall**
> String transferCall(id, userNumber)

Çağrıyı Aktarma (GET)

Santralde devam eden bir çağrıyı aktarmak için kullanılır. HTTP GET metodu ile çağrı UUID'si ve hedef dahili kullanılarak aktarım işlemi gerçekleştirilir. Yeni çağrı başlattığınızda API'den dönen UUID'yi kullanabilirsiniz veya Olay Bildirme ile gelen UUID'leri kullanabilirsiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String id = f3797dfc-a818-11e7-bf70-cb295b6663ce; // String | Aktarmak istediğiniz çağrının UUID'si
final String userNumber = 1000; // String | Aktarmak istediğiniz, bağlı kullanıcılarınızdan birinin dahili numarası

try {
    final response = api.transferCall(id, userNumber);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->transferCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Aktarmak istediğiniz çağrının UUID'si | 
 **userNumber** | **String**| Aktarmak istediğiniz, bağlı kullanıcılarınızdan birinin dahili numarası | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferCallPost**
> String transferCallPost(id, userNumber)

Çağrıyı Aktarma (POST)

Santralde devam eden bir çağrıyı başka bir dahiliye aktarmak için kullanılır. POST metodu ile çağrı UUID'si ve hedef dahili kullanılarak aktarım işlemi gerçekleştirilir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCagriYonetimiApi();
final String id = f3797dfc-a818-11e7-bf70-cb295b6663ce; // String | Aktarmak istediğiniz çağrının UUID'si
final String userNumber = 1000; // String | Aktarmak istediğiniz, bağlı kullanıcılarınızdan birinin dahili numarası

try {
    final response = api.transferCallPost(id, userNumber);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CagriYonetimiApi->transferCallPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Aktarmak istediğiniz çağrının UUID'si | 
 **userNumber** | **String**| Aktarmak istediğiniz, bağlı kullanıcılarınızdan birinin dahili numarası | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

