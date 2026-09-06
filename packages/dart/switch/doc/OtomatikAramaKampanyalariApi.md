# verimor_switch.api.OtomatikAramaKampanyalariApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIvrCampaign**](OtomatikAramaKampanyalariApi.md#createivrcampaign) | **POST** /ivr_campaigns.json | Otomatik Arama Kampanyası Oluşturma
[**deleteIvrCampaign**](OtomatikAramaKampanyalariApi.md#deleteivrcampaign) | **DELETE** /ivr_campaigns/{id}.json | Otomatik Arama Kampanyasını Silme
[**updateIvrCampaign**](OtomatikAramaKampanyalariApi.md#updateivrcampaign) | **PATCH** /ivr_campaigns/{id}.json | Otomatik Arama Kampanyasını Başlatma/Durdurma


# **createIvrCampaign**
> String createIvrCampaign(createIvrCampaignRequest)

Otomatik Arama Kampanyası Oluşturma

Yeni otomatik arama kampanyası oluşturmak için kullanılır. JSON formatında parametreler ile POST isteği gönderilir. ivr_campaigns endpoint'leri saniyede 2 istek (yaklaşık dakikada 120) limitine tabidir, burst değeri 50'dir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getOtomatikAramaKampanyalariApi();
final CreateIvrCampaignRequest createIvrCampaignRequest = ; // CreateIvrCampaignRequest | 

try {
    final response = api.createIvrCampaign(createIvrCampaignRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtomatikAramaKampanyalariApi->createIvrCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createIvrCampaignRequest** | [**CreateIvrCampaignRequest**](CreateIvrCampaignRequest.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIvrCampaign**
> String deleteIvrCampaign(id)

Otomatik Arama Kampanyasını Silme

Otomatik arama kampanyasını iptal etmek/silmek için kullanılır. Kampanya ID'si ve API anahtarı ile DELETE isteği gönderilir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getOtomatikAramaKampanyalariApi();
final String id = id_example; // String | IVR Campaign ID

try {
    final response = api.deleteIvrCampaign(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtomatikAramaKampanyalariApi->deleteIvrCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| IVR Campaign ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIvrCampaign**
> String updateIvrCampaign(id, status)

Otomatik Arama Kampanyasını Başlatma/Durdurma

Otomatik arama kampanyasını durdurmak veya tekrar başlatmak için kullanılır. PATCH ile status=off gönderilirse kampanya durur, status=on gönderilirse tekrar başlar.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getOtomatikAramaKampanyalariApi();
final String id = id_example; // String | IVR Campaign ID
final String status = status_example; // String | Kampanya durumu: \"on\" başlatmak için, \"off\" durdurmak için:  * `on`   * `off`   

try {
    final response = api.updateIvrCampaign(id, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtomatikAramaKampanyalariApi->updateIvrCampaign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| IVR Campaign ID | 
 **status** | **String**| Kampanya durumu: \"on\" başlatmak için, \"off\" durdurmak için:  * `on`   * `off`    | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

