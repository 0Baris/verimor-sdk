# verimor_switch.api.DisNumaralarYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCallerIds**](DisNumaralarYonetimiApi.md#getcallerids) | **GET** /caller_ids | Dış Numaralar Listesine Erişim
[**updateOutboundCallerId**](DisNumaralarYonetimiApi.md#updateoutboundcallerid) | **GET** /update_outbound_caller_id | Dahilinin Dış Numarasını (Arayan No) Değiştirme


# **getCallerIds**
> BuiltList<String> getCallerIds()

Dış Numaralar Listesine Erişim

Santralinizdeki Arayan Numara olarak kullanabileceğiniz numaraların listesine erişmek için kullanılır.  HAZIRLIK: Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key) öğrenmelisiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getDisNumaralarYonetimiApi();

try {
    final response = api.getCallerIds();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DisNumaralarYonetimiApi->getCallerIds: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOutboundCallerId**
> String updateOutboundCallerId(extension_, callerId)

Dahilinin Dış Numarasını (Arayan No) Değiştirme

Santralinizdeki dahililerin dış numarasını değiştirmek için kullanılır.  HAZIRLIK: Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key) öğrenmelisiniz.  ÖNEMLİ NOT: Kullanabileceğiniz numara listesini caller_ids API'sinden öğrenebilirsiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getDisNumaralarYonetimiApi();
final String extension_ = 1000; // String | Dış numarası değiştirilecek olan dahili
final String callerId = 90850532xxxx; // String | Dahilinin kullanacağı dış numara. Kullanabileceğiniz numara listesini caller_ids API'sinden öğrenebilirsiniz

try {
    final response = api.updateOutboundCallerId(extension_, callerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DisNumaralarYonetimiApi->updateOutboundCallerId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extension_** | **String**| Dış numarası değiştirilecek olan dahili | 
 **callerId** | **String**| Dahilinin kullanacağı dış numara. Kullanabileceğiniz numara listesini caller_ids API'sinden öğrenebilirsiniz | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

