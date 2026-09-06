# verimor_whatsapp.api.HealthApi

## Load the API package
```dart
import 'package:verimor_whatsapp/api.dart';
```

All URIs are relative to *https://wapi.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthHealthGet**](HealthApi.md#healthhealthget) | **GET** /health | Health check


# **healthHealthGet**
> JsonObject healthHealthGet()

Health check

### Example
```dart
import 'package:verimor_whatsapp/api.dart';

final api = VerimorWhatsapp().getHealthApi();

try {
    final response = api.healthHealthGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling HealthApi->healthHealthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

