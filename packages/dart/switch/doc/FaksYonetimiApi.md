# verimor_switch.api.FaksYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFaxDocumentUrl**](FaksYonetimiApi.md#createfaxdocumenturl) | **POST** /fax_document_url | Faks Belgesi URL&#39;si İsteme
[**createFaxOrder**](FaksYonetimiApi.md#createfaxorder) | **POST** /fax_orders | Faks Gönderimi
[**downloadFaxDocument**](FaksYonetimiApi.md#downloadfaxdocument) | **GET** /fax_document/{id} | Faks Belgesi İndirme/Görüntüleme
[**listFaxOrders**](FaksYonetimiApi.md#listfaxorders) | **GET** /fax_orders | Tamamlanmamış Faks Gönderimlerinin Listesi
[**listFdrs**](FaksYonetimiApi.md#listfdrs) | **GET** /fdrs | Faks Listesine Erişim


# **createFaxDocumentUrl**
> String createFaxDocumentUrl(callUuid)

Faks Belgesi URL'si İsteme

Başarıyla iletilen faks belgesi için geçici indirme URL'si oluşturur. HTTP POST metodu ile api.bulutsantralim.com/fax_document_url/ adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde belgeye ait URL döner. URL yaşam süresi 1 saattir ve PDF versiyonuna erişim sağlar. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getFaksYonetimiApi();
final String callUuid = e28e5d48-05d8-11e8-663a-fde60c59425c; // String | URL'ini istediğiniz faks belgesine ait uuid

try {
    final response = api.createFaxDocumentUrl(callUuid);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FaksYonetimiApi->createFaxDocumentUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callUuid** | **String**| URL'ini istediğiniz faks belgesine ait uuid | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFaxOrder**
> String createFaxOrder(remoteStationId, filedata, localStationId, localStationHeader)

Faks Gönderimi

Faks göndermek için dosyasının içeriğinin base64 ile kodlanmış halini ve diğer bilgileri POST etmeniz yeterlidir. Uygulamalarınız üzerinden faks göndermek için api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 status kodu ile mesajın Body'sinde faks ID döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getFaksYonetimiApi();
final String remoteStationId = 901234567891; // String | Alıcı numara
final String filedata = filedata_example; // String | Gönderilecek dosyanın içeriğinin base64 ile kodlanmış hali (data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA... formatında)
final String localStationId = 908505321234; // String | Gönderici numara (zorunlu değil)
final String localStationHeader = Bulutsantralim; // String | Gönderici başlığı

try {
    final response = api.createFaxOrder(remoteStationId, filedata, localStationId, localStationHeader);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FaksYonetimiApi->createFaxOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteStationId** | **String**| Alıcı numara | 
 **filedata** | **String**| Gönderilecek dosyanın içeriğinin base64 ile kodlanmış hali (data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA... formatında) | 
 **localStationId** | **String**| Gönderici numara (zorunlu değil) | [optional] 
 **localStationHeader** | **String**| Gönderici başlığı | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadFaxDocument**
> Uint8List downloadFaxDocument(id)

Faks Belgesi İndirme/Görüntüleme

Bu servis, daha önce 'Faks Belgesi URL'si İsteme' ile elde edilen geçici URL üzerinden faks belgesini indirmenizi veya görüntülemenizi sağlar.  URL, 1 saat geçerlidir. Herhangi bir kimlik doğrulama gerekmez; güvenlik, URL'nin kendisinde bulunan tek kullanımlık ticket kodu ile sağlanır.  Başarılı isteklerde HTTP 200 ile belge dosyası (PDF/TIFF) döner. Hatalı veya süresi dolmuş ticket ile yapılan isteklerde uygun hata mesajı ve HTTP 400 döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getFaksYonetimiApi();
final String id = id_example; // String | Faks belgesi indirme/görüntüleme için gerekli ticket kodu (genellikle \"F\" ile başlar)

try {
    final response = api.downloadFaxDocument(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FaksYonetimiApi->downloadFaxDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Faks belgesi indirme/görüntüleme için gerekli ticket kodu (genellikle \"F\" ile başlar) | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, image/tiff, application/octet-stream, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFaxOrders**
> ListFaxOrders200Response listFaxOrders(page, limit)

Tamamlanmamış Faks Gönderimlerinin Listesi

Santraldaki tamamlanmamış faks gönderimlerinin listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde faks gönderim kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getFaksYonetimiApi();
final int page = 1; // int | Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz
final int limit = 10; // int | Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100

try {
    final response = api.listFaxOrders(page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FaksYonetimiApi->listFaxOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz | [optional] 
 **limit** | **int**| Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100 | [optional] 

### Return type

[**ListFaxOrders200Response**](ListFaxOrders200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFdrs**
> ListFdrs200Response listFdrs(startStampFrom, startStampTo, direction, callerIdNumber, originalDestination, success, page, limit)

Faks Listesine Erişim

Santralinizdeki faks detay kayıtlarının listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/fdrs adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde faks kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Tarih aralığı 31 günden uzun olamaz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getFaksYonetimiApi();
final String startStampFrom = 2018-03-22 12:00:00 UTC; // String | Başlama tarihi yazdığınız tarihten sonra olan çağrıları listeler. \"2017-08-03 12:30:32 UTC\" formatında olmalı
final String startStampTo = 2018-03-22 23:59:59 UTC; // String | Başlama tarihi yazdığınız tarihe kadar olan çağrıları listeler. \"2017-08-03 12:30:32 UTC\" formatında olmalı. Tarih aralığı 31 günden uzun olamaz
final String direction = direction_example; // String | Değeri \"inbound\" olarak gönderilirse gelen, değeri \"outbound\" olarak gönderilirse giden, değeri \"internal\" olarak gönderilirse santral içi faksları listeler:  * `outbound`   * `inbound`   * `internal`   
final String callerIdNumber = 902129630131; // String | Faks gönderen numara
final String originalDestination = 902123205072; // String | Faks alan numara
final String success = success_example; // String | Değeri \"true\" olarak gönderilirse başarılı, değeri \"false\" olarak gönderilirse başarısız faksları listeler
final int page = 1; // int | Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz
final int limit = 10; // int | Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100

try {
    final response = api.listFdrs(startStampFrom, startStampTo, direction, callerIdNumber, originalDestination, success, page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FaksYonetimiApi->listFdrs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startStampFrom** | **String**| Başlama tarihi yazdığınız tarihten sonra olan çağrıları listeler. \"2017-08-03 12:30:32 UTC\" formatında olmalı | [optional] 
 **startStampTo** | **String**| Başlama tarihi yazdığınız tarihe kadar olan çağrıları listeler. \"2017-08-03 12:30:32 UTC\" formatında olmalı. Tarih aralığı 31 günden uzun olamaz | [optional] 
 **direction** | **String**| Değeri \"inbound\" olarak gönderilirse gelen, değeri \"outbound\" olarak gönderilirse giden, değeri \"internal\" olarak gönderilirse santral içi faksları listeler:  * `outbound`   * `inbound`   * `internal`    | [optional] 
 **callerIdNumber** | **String**| Faks gönderen numara | [optional] 
 **originalDestination** | **String**| Faks alan numara | [optional] 
 **success** | **String**| Değeri \"true\" olarak gönderilirse başarılı, değeri \"false\" olarak gönderilirse başarısız faksları listeler | [optional] 
 **page** | **int**| Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz | [optional] 
 **limit** | **int**| Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100 | [optional] 

### Return type

[**ListFdrs200Response**](ListFdrs200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

