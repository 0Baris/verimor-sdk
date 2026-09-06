# verimor_sms.api.BakiyeSorgulamalariApi

## Load the API package
```dart
import 'package:verimor_sms/api.dart';
```

All URIs are relative to *https://sms.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2BalanceGet**](BakiyeSorgulamalariApi.md#v2balanceget) | **GET** /v2/balance | Bakiye Sorgulama


# **v2BalanceGet**
> v2BalanceGet(username, password)

Bakiye Sorgulama

SMS kalan kredi sorgulama için bu servis kullanılır. İşlem için kullanıcı adı ve şifre gereklidir. Bu endpoint /v2/status, /v2/headers gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getBakiyeSorgulamalariApi();
final String username = username_example; // String | Kullanıcı Adı
final String password = password_example; // String | Şifre

try {
    api.v2BalanceGet(username, password);
} on DioException catch (e) {
    print('Exception when calling BakiyeSorgulamalariApi->v2BalanceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı Adı | 
 **password** | **String**| Şifre | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

