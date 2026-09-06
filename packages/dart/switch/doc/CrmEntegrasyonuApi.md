# verimor_switch.api.CrmEntegrasyonuApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrmIntegrations**](CrmEntegrasyonuApi.md#getcrmintegrations) | **GET** /crm_integrations | CRM Entegrasyon Ayarlarını Getirme
[**updateCrmIntegrations**](CrmEntegrasyonuApi.md#updatecrmintegrations) | **POST** /crm_integrations | CRM Entegrasyon Ayarlarını Güncelleme
[**webhookPayloadExamples**](CrmEntegrasyonuApi.md#webhookpayloadexamples) | **GET** /webhook-payload-examples | CRM Webhook Payload Örnekleri


# **getCrmIntegrations**
> GetCrmIntegrations200Response getCrmIntegrations()

CRM Entegrasyon Ayarlarını Getirme

Çağrı olayları (çalma, cevaplanma, kapanma) için mevcut CRM webhook entegrasyon ayarlarını getirir. Bu endpoint ile hangi olaylar için webhook bildirimleri aktif olduğunu ve webhook URL'ini öğrenebilirsiniz.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCrmEntegrasyonuApi();

try {
    final response = api.getCrmIntegrations();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CrmEntegrasyonuApi->getCrmIntegrations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCrmIntegrations200Response**](GetCrmIntegrations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCrmIntegrations**
> String updateCrmIntegrations(ringing, answered, hangup, notificationUrl)

CRM Entegrasyon Ayarlarını Güncelleme

Çağrı olayları için CRM webhook entegrasyon ayarlarını günceller. Çalma, cevaplanma ve kapanma olayları için bildirimleri etkinleştirir veya devre dışı bırakır. Webhook URL'i de güncellenebilir.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCrmEntegrasyonuApi();
final String ringing = ringing_example; // String | Çağrı çalma olayı bildirimlerini etkinleştir/devre dışı bırak:  * `on`   * `off`   
final String answered = answered_example; // String | Çağrı cevaplanma olayı bildirimlerini etkinleştir/devre dışı bırak
final String hangup = hangup_example; // String | Çağrı kapanma olayı bildirimlerini etkinleştir/devre dışı bırak
final String notificationUrl = notificationUrl_example; // String | CRM bildirimlerinin gönderileceği webhook URL adresi

try {
    final response = api.updateCrmIntegrations(ringing, answered, hangup, notificationUrl);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CrmEntegrasyonuApi->updateCrmIntegrations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ringing** | **String**| Çağrı çalma olayı bildirimlerini etkinleştir/devre dışı bırak:  * `on`   * `off`    | [optional] 
 **answered** | **String**| Çağrı cevaplanma olayı bildirimlerini etkinleştir/devre dışı bırak | [optional] 
 **hangup** | **String**| Çağrı kapanma olayı bildirimlerini etkinleştir/devre dışı bırak | [optional] 
 **notificationUrl** | **String**| CRM bildirimlerinin gönderileceği webhook URL adresi | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhookPayloadExamples**
> WebhookPayloadExamples200Response webhookPayloadExamples()

CRM Webhook Payload Örnekleri

CRM entegrasyonu aktif olduğunda gönderilen webhook payload örnekleri. Bu endpoint gerçek bir API değildir, sadece dokümantasyon amaçlıdır.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getCrmEntegrasyonuApi();

try {
    final response = api.webhookPayloadExamples();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CrmEntegrasyonuApi->webhookPayloadExamples: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookPayloadExamples200Response**](WebhookPayloadExamples200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

