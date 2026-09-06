# verimor_switch.api.KaraListeYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBlockedNumber**](KaraListeYonetimiApi.md#createblockednumber) | **POST** /blocked_numbers | Kara Listeye Ekleme
[**deleteBlockedNumber**](KaraListeYonetimiApi.md#deleteblockednumber) | **DELETE** /blocked_numbers/delete | Kara Listeden Silme
[**listBlockedNumbers**](KaraListeYonetimiApi.md#listblockednumbers) | **GET** /blocked_numbers | Kara Listeye Erişim


# **createBlockedNumber**
> String createBlockedNumber(number, direction)

Kara Listeye Ekleme

Telefon numarasını kara listeye ekler. Numara kayıt edilmeden önce normalize edilir. POST metodu ile api.bulutsantralim.com/blocked_numbers adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde oluşturulan kaydın ID'si döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKaraListeYonetimiApi();
final String number = 05111111111; // String | Engellenecek telefon numarası (normalize edilecek)
final String direction = inbound; // String | Engelleme yönü (inbound veya outbound, varsayılan inbound)

try {
    final response = api.createBlockedNumber(number, direction);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KaraListeYonetimiApi->createBlockedNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Engellenecek telefon numarası (normalize edilecek) | 
 **direction** | **String**| Engelleme yönü (inbound veya outbound, varsayılan inbound) | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBlockedNumber**
> String deleteBlockedNumber(number, direction)

Kara Listeden Silme

Telefon numarasını kara listeden çıkarır. Numara kaldırılmadan önce normalize edilir. DELETE metodu ile api.bulutsantralim.com/blocked_numbers/delete adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde başarı mesajı döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKaraListeYonetimiApi();
final String number = 05111111111; // String | Kara listeden çıkarılacak telefon numarası (normalize edilecek)
final String direction = inbound; // String | Engelleme yönü (inbound veya outbound, belirtilmezse tüm yönlerdeki kaydı siler)

try {
    final response = api.deleteBlockedNumber(number, direction);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KaraListeYonetimiApi->deleteBlockedNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Kara listeden çıkarılacak telefon numarası (normalize edilecek) | 
 **direction** | **String**| Engelleme yönü (inbound veya outbound, belirtilmezse tüm yönlerdeki kaydı siler) | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlockedNumbers**
> ListBlockedNumbers200Response listBlockedNumbers(page, limit)

Kara Listeye Erişim

Santralinizdeki kara listedeki numaraların listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/blocked_numbers adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde kara liste döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getKaraListeYonetimiApi();
final int page = 56; // int | Sayfa numarası (varsayılan 1)
final int limit = 56; // int | Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100

try {
    final response = api.listBlockedNumbers(page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling KaraListeYonetimiApi->listBlockedNumbers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Sayfa numarası (varsayılan 1) | [optional] 
 **limit** | **int**| Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100 | [optional] 

### Return type

[**ListBlockedNumbers200Response**](ListBlockedNumbers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

