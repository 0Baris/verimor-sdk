# verimor_sms.api.IysHizmetleriApi

## Load the API package
```dart
import 'package:verimor_sms/api.dart';
```

All URIs are relative to *https://sms.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2IysCampaignsGet**](IysHizmetleriApi.md#v2iyscampaignsget) | **GET** /v2/iys/campaigns | İYS Kampanyaları Listeleme
[**v2IysCampaignsIdConsentsGet**](IysHizmetleriApi.md#v2iyscampaignsidconsentsget) | **GET** /v2/iys/campaigns/{id}/consents | İYS İzinleri Sorgulama
[**v2IysConsentsJsonPost**](IysHizmetleriApi.md#v2iysconsentsjsonpost) | **POST** /v2/iys_consents.json | İzin Yönetimi


# **v2IysCampaignsGet**
> V2IysCampaignsGet200Response v2IysCampaignsGet(username, password, offset, limit, source_)

İYS Kampanyaları Listeleme

<p>Gönderilen İYS izinleri ve İYS günlük vatandaş izin değişiklikleri için kampanyalar oluşturulur. Bu kampanyalar bu servisi kullanarak görülebilir.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpointlerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getIysHizmetleriApi();
final String username = username_example; // String | Kullanıcı adı
final String password = password_example; // String | Şifre
final int offset = 56; // int | Sayfalama başlangıcı
final int limit = 56; // int | Sayfalama limiti
final String source_ = source__example; // String | Kaynak (örn., list, csv, api, sms, web, iys):  * `list`   * `csv`   * `api`   * `sms`   * `web`   * `iys`   

try {
    final response = api.v2IysCampaignsGet(username, password, offset, limit, source_);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IysHizmetleriApi->v2IysCampaignsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı adı | 
 **password** | **String**| Şifre | 
 **offset** | **int**| Sayfalama başlangıcı | [optional] 
 **limit** | **int**| Sayfalama limiti | [optional] 
 **source_** | **String**| Kaynak (örn., list, csv, api, sms, web, iys):  * `list`   * `csv`   * `api`   * `sms`   * `web`   * `iys`    | [optional] 

### Return type

[**V2IysCampaignsGet200Response**](V2IysCampaignsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2IysCampaignsIdConsentsGet**
> V2IysCampaignsIdConsentsGet200Response v2IysCampaignsIdConsentsGet(username, password, id, offset, limit)

İYS İzinleri Sorgulama

<p>Gönderilen İYS izinleri ve İYS günlük vatandaş izin değişikliklerini kampanya idsi ile sorgulayabilirsiniz.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpointlerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getIysHizmetleriApi();
final String username = username_example; // String | Kullanıcı adı
final String password = password_example; // String | Şifre
final int id = 56; // int | Kampanya ID
final int offset = 56; // int | Sayfalama başlangıcı
final int limit = 56; // int | Sayfalama limiti

try {
    final response = api.v2IysCampaignsIdConsentsGet(username, password, id, offset, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IysHizmetleriApi->v2IysCampaignsIdConsentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Kullanıcı adı | 
 **password** | **String**| Şifre | 
 **id** | **int**| Kampanya ID | 
 **offset** | **int**| Sayfalama başlangıcı | [optional] 
 **limit** | **int**| Sayfalama limiti | [optional] 

### Return type

[**V2IysCampaignsIdConsentsGet200Response**](V2IysCampaignsIdConsentsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2IysConsentsJsonPost**
> int v2IysConsentsJsonPost(v2IysConsentsJsonPostRequest)

İzin Yönetimi

<p>Ticari ileti göndermek için markalarınızı İYSye (İleti Yönetim Sistemi) kaydettirmiş olmalı ve&nbsp;<a href=\"https://oim.verimor.com.tr/headers\" rel=\"nofollow\">OİM Başlık Yönetiminden</a>&nbsp;ilgili başlığa İYS kodlarını girmiş olmanız gerekir. Bu işlemleri yaptıktan sonra müşterilerinizden aldığınız izinleri bu yöntemle İYSye bildirebilirsiniz.</p><p>Aşağıdaki örnekte olduğu gibi bir JSON string POST edilir.</p><p>Daha sonra istenirse, \"İYS İZİNLERİ RAPORU\" başlığı altındaki dökümandan faydalanılarak, gönderilen izinlerin durumları alınabilir.</p><p>Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek gönderebilirsiniz (burst 80).</p>

### Example
```dart
import 'package:verimor_sms/api.dart';

final api = VerimorSms().getIysHizmetleriApi();
final V2IysConsentsJsonPostRequest v2IysConsentsJsonPostRequest = ; // V2IysConsentsJsonPostRequest | 

try {
    final response = api.v2IysConsentsJsonPost(v2IysConsentsJsonPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IysHizmetleriApi->v2IysConsentsJsonPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2IysConsentsJsonPostRequest** | [**V2IysConsentsJsonPostRequest**](V2IysConsentsJsonPostRequest.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

