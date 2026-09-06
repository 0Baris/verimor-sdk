# verimor_switch.api.RaporlamaVeKayitlarApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecordingUrl**](RaporlamaVeKayitlarApi.md#createrecordingurl) | **POST** /recording_url | Ses Kaydı için Geçici URL Oluşturma
[**createVoicemailRecordingUrl**](RaporlamaVeKayitlarApi.md#createvoicemailrecordingurl) | **POST** /voicemail_recording_url | Telesekreter Ses Kaydı için Geçici URL Oluşturma
[**getCdr**](RaporlamaVeKayitlarApi.md#getcdr) | **GET** /cdrs/{id} | Belirli Bir Çağrının Detaylı CDR Kaydı
[**getCdrs**](RaporlamaVeKayitlarApi.md#getcdrs) | **GET** /cdrs | Çağrı Detay Kayıtları (CDR) Listesi
[**getVoicemailMessages**](RaporlamaVeKayitlarApi.md#getvoicemailmessages) | **GET** /voicemail_messages | Telesekreter Arama Kayıtlarına Erişim


# **createRecordingUrl**
> String createRecordingUrl(callUuid)

Ses Kaydı için Geçici URL Oluşturma

Santralinizdeki veya Google Drive'a aktarılmış ses kayıtlarınıza erişmek için geçici bir URL oluşturur. URL 1 saat geçerlidir ve dakikada en fazla 5 istek yapılabilir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRaporlamaVeKayitlarApi();
final String callUuid = callUuid_example; // String | URL'ini istediğiniz ses kaydına ait çağrı UUID'si

try {
    final response = api.createRecordingUrl(callUuid);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlamaVeKayitlarApi->createRecordingUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callUuid** | **String**| URL'ini istediğiniz ses kaydına ait çağrı UUID'si | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVoicemailRecordingUrl**
> String createVoicemailRecordingUrl(uuid)

Telesekreter Ses Kaydı için Geçici URL Oluşturma

CDR'ın ses kaydına erişimde olduğu gibi, bu ses kayıtlarına erişim de iki aşamalıdır. Birinci aşamada URL elde edilir. İkinci aşamada ise o URL'den ses dosyası indirilir/dinlenir. HTTP POST metodu ile api.bulutsantralim.com adresine parametreler gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde ses kaydına ait olan bir URL döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. URL yaşam süresi 1 saattir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRaporlamaVeKayitlarApi();
final String uuid = 12345678-1234-5678-4321-123456789012; // String | URL'ini istediğiniz telesekreter mesajına ait uuid

try {
    final response = api.createVoicemailRecordingUrl(uuid);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlamaVeKayitlarApi->createVoicemailRecordingUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| URL'ini istediğiniz telesekreter mesajına ait uuid | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCdr**
> GetCdr200Response getCdr(id)

Belirli Bir Çağrının Detaylı CDR Kaydı

Belirli bir çağrıya ait tüm detayları ve çağrı akışını getirir. Bu endpoint dakikada en fazla 6 istek ile sınırlıdır.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRaporlamaVeKayitlarApi();
final String id = call-uuid-12345-67890; // String | Çağrı UUID

try {
    final response = api.getCdr(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlamaVeKayitlarApi->getCdr: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Çağrı UUID | 

### Return type

[**GetCdr200Response**](GetCdr200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCdrs**
> GetCdrs200Response getCdrs(startStampFrom, startStampTo, recordingPresent, direction, callerIdNumber, destinationNumber, missed, queue, page, limit)

Çağrı Detay Kayıtları (CDR) Listesi

Farklı filtrelerle ve sayfalama ile çağrı detay kayıtlarını (CDR) listeler. Bu endpoint dakikada en fazla 6 istek ile sınırlıdır.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRaporlamaVeKayitlarApi();
final String startStampFrom = startStampFrom_example; // String | Başlangıç tarihi/zamanı (ISO formatı)
final String startStampTo = startStampTo_example; // String | Bitiş tarihi/zamanı (ISO formatı)
final String recordingPresent = recordingPresent_example; // String | Kayıt durumu filtresi:  * `true`   * `false`   * `deleted`   
final String direction = direction_example; // String | Çağrı yönü filtresi
final String callerIdNumber = callerIdNumber_example; // String | Arayan numara filtresi
final String destinationNumber = destinationNumber_example; // String | Hedef numara filtresi
final String missed = missed_example; // String | Cevapsız çağrı filtresi
final String queue = queue_example; // String | Kuyruk adı filtresi
final int page = 56; // int | Sayfa numarası (varsayılan: 1)
final int limit = 56; // int | Sayfa başına kayıt sayısı

try {
    final response = api.getCdrs(startStampFrom, startStampTo, recordingPresent, direction, callerIdNumber, destinationNumber, missed, queue, page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlamaVeKayitlarApi->getCdrs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startStampFrom** | **String**| Başlangıç tarihi/zamanı (ISO formatı) | [optional] 
 **startStampTo** | **String**| Bitiş tarihi/zamanı (ISO formatı) | [optional] 
 **recordingPresent** | **String**| Kayıt durumu filtresi:  * `true`   * `false`   * `deleted`    | [optional] 
 **direction** | **String**| Çağrı yönü filtresi | [optional] 
 **callerIdNumber** | **String**| Arayan numara filtresi | [optional] 
 **destinationNumber** | **String**| Hedef numara filtresi | [optional] 
 **missed** | **String**| Cevapsız çağrı filtresi | [optional] 
 **queue** | **String**| Kuyruk adı filtresi | [optional] 
 **page** | **int**| Sayfa numarası (varsayılan: 1) | [optional] 
 **limit** | **int**| Sayfa başına kayıt sayısı | [optional] 

### Return type

[**GetCdrs200Response**](GetCdrs200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVoicemailMessages**
> GetVoicemailMessages200Response getVoicemailMessages(startStampFrom, startStampTo, read, userNumber, uuid, page, limit)

Telesekreter Arama Kayıtlarına Erişim

Santralinizdeki telesekreter arama kayıtlarına ve ses kayıtlarına erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRaporlamaVeKayitlarApi();
final String startStampFrom = 2017-08-03 12:30:32 UTC; // String | Mesaj bırakma tarihi yazdığınız tarihden sonra olan çağrıları listeler
final String startStampTo = 2017-08-03 12:30:32 UTC; // String | Mesaj bırakma tarihi yazdığınız tarihe kadar olan çağrıları listeler. Tarih aralığı 31 günden uzun olamaz
final String read = read_example; // String | Değeri \"true\" olarak gönderilirse okunmuş mesajları, değeri \"false\" olarak gönderilirse henüz okunmamış mesajları listeler:  * `true`   * `false`   
final String userNumber = 1002; // String | Mesajın bırakıldığı dahilinin numarası
final String uuid = 651f8a68-782e-11g7-a6b6-5bedc26e2ab3; // String | Mesajın (veya ilgili CDR kaydının) kayıt numarası
final int page = 1; // int | Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz
final int limit = 10; // int | Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100

try {
    final response = api.getVoicemailMessages(startStampFrom, startStampTo, read, userNumber, uuid, page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RaporlamaVeKayitlarApi->getVoicemailMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startStampFrom** | **String**| Mesaj bırakma tarihi yazdığınız tarihden sonra olan çağrıları listeler | [optional] 
 **startStampTo** | **String**| Mesaj bırakma tarihi yazdığınız tarihe kadar olan çağrıları listeler. Tarih aralığı 31 günden uzun olamaz | [optional] 
 **read** | **String**| Değeri \"true\" olarak gönderilirse okunmuş mesajları, değeri \"false\" olarak gönderilirse henüz okunmamış mesajları listeler:  * `true`   * `false`    | [optional] 
 **userNumber** | **String**| Mesajın bırakıldığı dahilinin numarası | [optional] 
 **uuid** | **String**| Mesajın (veya ilgili CDR kaydının) kayıt numarası | [optional] 
 **page** | **int**| Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz | [optional] 
 **limit** | **int**| Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100 | [optional] 

### Return type

[**GetVoicemailMessages200Response**](GetVoicemailMessages200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

