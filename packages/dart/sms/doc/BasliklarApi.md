# verimor_sms.api.BasliklarApi

## Load the API package
```dart
import 'package:verimor_sms/api.dart';
```

All URIs are relative to *https://sms.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2HeadersGet**](BasliklarApi.md#v2headersget) | **GET** /v2/headers | Başlık Yönetimi


# **v2HeadersGet**
> BuiltList<String> v2HeadersGet(username, password)

Başlık Yönetimi

Tanımlı SMS Başlıklarını listeler. Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getBasliklarApi();
final String username = username_example; // String | Kullanıcı Adı
final String password = password_example; // String | Şifre

try {
    final response = api.v2HeadersGet(username, password);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BasliklarApi->v2HeadersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı Adı | 
 **password** | **String**| Şifre | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

