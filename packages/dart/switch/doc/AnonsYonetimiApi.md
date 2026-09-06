# verimor_switch.api.AnonsYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAnnouncement**](AnonsYonetimiApi.md#createannouncement) | **POST** /announcements | Yeni Ses Dosyası Yükleme
[**deleteAnnouncement**](AnonsYonetimiApi.md#deleteannouncement) | **DELETE** /announcements/{id} | Ses Dosyası Silme
[**getAnnouncements**](AnonsYonetimiApi.md#getannouncements) | **GET** /announcements | Ses Dosyaları Listesine Erişim
[**updateAnnouncement**](AnonsYonetimiApi.md#updateannouncement) | **PATCH** /announcements/{id} | Ses Dosyası Güncelleme


# **createAnnouncement**
> String createAnnouncement(name, sounddata)

Yeni Ses Dosyası Yükleme

Yeni ses dosyası yüklemek için kullanılır. Yeni ses dosyasının ismini ve içeriğinin base64 ile kodlanmış halini POST etmeniz yeterlidir. Başarılı durumda oluşturulan ses dosyasının ID'si döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getAnonsYonetimiApi();
final String name = name_example; // String | Ses dosyasının adı
final String sounddata = sounddata_example; // String | Ses dosyasının içeriği, base64 ile kodlanmış olarak

try {
    final response = api.createAnnouncement(name, sounddata);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnonsYonetimiApi->createAnnouncement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Ses dosyasının adı | 
 **sounddata** | **String**| Ses dosyasının içeriği, base64 ile kodlanmış olarak | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAnnouncement**
> String deleteAnnouncement(id)

Ses Dosyası Silme

Ses dosyasını silmek için kullanılır. Ses dosyasının id ile DELETE etmeniz yeterlidir. Başarılı durumda OK döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getAnonsYonetimiApi();
final String id = id_example; // String | Silinecek ses dosyasının ID değeri

try {
    final response = api.deleteAnnouncement(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnonsYonetimiApi->deleteAnnouncement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Silinecek ses dosyasının ID değeri | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnnouncements**
> BuiltList<GetAnnouncements200ResponseInner> getAnnouncements()

Ses Dosyaları Listesine Erişim

Santralinizdeki ses dosyalarının listesine erişmek için kullanılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde ses dosyalarının listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getAnonsYonetimiApi();

try {
    final response = api.getAnnouncements();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnonsYonetimiApi->getAnnouncements: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;GetAnnouncements200ResponseInner&gt;**](GetAnnouncements200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAnnouncement**
> String updateAnnouncement(id, name, sounddata)

Ses Dosyası Güncelleme

Mevcut ses dosyasının adını ve içeriğini güncellemek için kullanılır. Ses dosyasının ismini ve içeriğinin base64 ile kodlanmış halini PATCH etmeniz yeterlidir. Başarılı durumda OK döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getAnonsYonetimiApi();
final String id = 21870; // String | Güncellenecek ses dosyasının ID'si
final String name = name_example; // String | Ses dosyasının yeni adı (opsiyonel)
final String sounddata = sounddata_example; // String | Ses dosyasının yeni içeriği, base64 ile kodlanmış olarak (opsiyonel)

try {
    final response = api.updateAnnouncement(id, name, sounddata);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnonsYonetimiApi->updateAnnouncement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Güncellenecek ses dosyasının ID'si | 
 **name** | **String**| Ses dosyasının yeni adı (opsiyonel) | [optional] 
 **sounddata** | **String**| Ses dosyasının yeni içeriği, base64 ile kodlanmış olarak (opsiyonel) | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

