# verimor_switch.api.KuyrukYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getQueueUserList**](KuyrukYonetimiApi.md#getqueueuserlist) | **GET** /queue/user_list | Kuyruktaki Dahili Listesine Erişim
[**getQueues**](KuyrukYonetimiApi.md#getqueues) | **GET** /queues | Kuyruklar Listesine Erişim
[**getQueuesPending**](KuyrukYonetimiApi.md#getqueuespending) | **GET** /queues/pending | Kuyrukta Bekleyenler Listesine Erişim
[**manageQueueUsers**](KuyrukYonetimiApi.md#managequeueusers) | **GET** /queue/manage_users | Kuyruğa Dahili Ekleme, Çıkarma veya Yer Değiştirme


# **getQueueUserList**
> BuiltList<GetQueueUserList200ResponseInner> getQueueUserList(queueNumber)

Kuyruktaki Dahili Listesine Erişim

Santralinizdeki kuyruğun dahili sırasını listeler. Bunun için HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde dahili listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKuyrukYonetimiApi();
final String queueNumber = 200; // String | Kuyruk numarası

try {
    final response = api.getQueueUserList(queueNumber);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KuyrukYonetimiApi->getQueueUserList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueNumber** | **String**| Kuyruk numarası | 

### Return type

[**BuiltList&lt;GetQueueUserList200ResponseInner&gt;**](GetQueueUserList200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueues**
> BuiltList<GetQueues200ResponseInner> getQueues()

Kuyruklar Listesine Erişim

Santralinizdeki kuyrukların listesine erişmek için kullanılır. Bunun için HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde kuyrukların listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKuyrukYonetimiApi();

try {
    final response = api.getQueues();
    print(response);
} on DioException catch (e) {
    print('Exception when calling KuyrukYonetimiApi->getQueues: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;GetQueues200ResponseInner&gt;**](GetQueues200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueuesPending**
> BuiltList<GetQueuesPending200ResponseInner> getQueuesPending()

Kuyrukta Bekleyenler Listesine Erişim

Santralinizdeki kuyrukta bekleyenlerin listesine erişmek için kullanılır. Bunun için HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde kuyrukta bekleyenlerin listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint dakikada en fazla 10 istek ile sınırlıdır.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKuyrukYonetimiApi();

try {
    final response = api.getQueuesPending();
    print(response);
} on DioException catch (e) {
    print('Exception when calling KuyrukYonetimiApi->getQueuesPending: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;GetQueuesPending200ResponseInner&gt;**](GetQueuesPending200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **manageQueueUsers**
> String manageQueueUsers(queueNumber, userList)

Kuyruğa Dahili Ekleme, Çıkarma veya Yer Değiştirme

Santralinizdeki kuyruklara dahili ekleme, çıkarma veya yer değiştirme için kullanılır. Bunun için HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKuyrukYonetimiApi();
final String queueNumber = 200; // String | Dahili ayarını değiştirmek istediğiniz kuyruğun numarası
final String userList = 1000,1001,1002; // String | Kuyruğa dahili eklemek, çıkarmak veya yerini değiştirmek için göndermeniz gereken değer (virgülle ayrılmış)

try {
    final response = api.manageQueueUsers(queueNumber, userList);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KuyrukYonetimiApi->manageQueueUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueNumber** | **String**| Dahili ayarını değiştirmek istediğiniz kuyruğun numarası | 
 **userList** | **String**| Kuyruğa dahili eklemek, çıkarmak veya yerini değiştirmek için göndermeniz gereken değer (virgülle ayrılmış) | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

