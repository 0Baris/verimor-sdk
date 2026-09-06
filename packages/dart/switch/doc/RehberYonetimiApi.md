# verimor_switch.api.RehberYonetimiApi

## Load the API package
```dart
import 'package:verimor_switch/api.dart';
```

All URIs are relative to *https://api.bulutsantralim.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](RehberYonetimiApi.md#createcontact) | **POST** /contacts | Kişi Ekleme
[**createContactGroup**](RehberYonetimiApi.md#createcontactgroup) | **POST** /contact_groups | Grup Oluşturma
[**deleteContact**](RehberYonetimiApi.md#deletecontact) | **DELETE** /contacts/{id} | Kişi Silme
[**deleteContactGroup**](RehberYonetimiApi.md#deletecontactgroup) | **DELETE** /contact_groups/{id} | Grup Silme
[**listContactGroups**](RehberYonetimiApi.md#listcontactgroups) | **GET** /contact_groups | Grup Listesine Erişim
[**listContacts**](RehberYonetimiApi.md#listcontacts) | **GET** /contacts | Kişiler Listesine Erişim
[**updateContact**](RehberYonetimiApi.md#updatecontact) | **PATCH** /contacts/{id} | Kişi Güncelleme
[**updateContactGroup**](RehberYonetimiApi.md#updatecontactgroup) | **PATCH** /contact_groups/{id} | Grup Güncelleme


# **createContact**
> String createContact(name, surname, phone, salutation, tckn, description, phone1, email, title, phone2, fax, gender, birthday, birthdaySms, weddingday, weddingdaySms, address, note1, note2, note3, note4, companyName, monthlySmsDay, monthlySmsMessage, groupIds)

Kişi Ekleme

Yeni bir kişi oluşturur. Google Kişiler entegrasyonunun kapalı olması gerekir. POST metodu ile api.bulutsantralim.com/contacts adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde oluşturulan kişinin ID'si döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final String name = Verimor; // String | Ad
final String surname = Telekomünikasyon; // String | Soyad
final String phone = 05111111111; // String | GSM numarası 1
final String salutation = salutation_example; // String | Hitap şekli (Bay, Bayan vb.)
final String tckn = 12345678910; // String | TC kimlik numarası
final String description = A.Ş.; // String | Açıklama
final String phone1 = 05111111112; // String | GSM numarası 2
final String email = info@verimor.com.tr; // String | E-posta adresi
final String title = Sabit Telefon Operatörü; // String | Unvan
final String phone2 = 02123205062; // String | Ek telefon numarası
final String fax = 02123205072; // String | Fax numarası
final String gender = m; // String | Cinsiyet (Erkek: 'm', Kadın: 'f' olarak gönderilmeli)
final String birthday = 01.01.1990; // String | Doğum günü (dd.mm.yyyy formatında olmalı, birthday_sms parametresi 'true' olarak gönderildiği zaman zorunludur)
final bool birthdaySms = true; // bool | Doğum gününde otomatik mesaj gönderimi. Devreye girmesi için değeri 'true' olarak gönderilmeli
final String weddingday = 01.01.2018; // String | Evlilik günü (dd.mm.yyyy formatında olmalı, weddingday_sms parametresi 'true' olarak gönderildiği zaman zorunludur)
final bool weddingdaySms = true; // bool | Evlilik gününde otomatik mesaj gönderimi. Devreye girmesi için değeri 'true' olarak gönderilmeli
final String address = address_example; // String | Adres
final String note1 = note1_example; // String | Kişiyle ilgili notlar
final String note2 = note2_example; // String | Kişiyle ilgili notlar 2
final String note3 = note3_example; // String | Kişiyle ilgili notlar 3
final String note4 = note4_example; // String | Kişiyle ilgili notlar 4
final String companyName = Verimor Telekomünikasyon; // String | Firma adı
final int monthlySmsDay = 9; // int | Kişiye aylık otomatik SMS gönderilmesini istiyorsanız gönderilecek günü giriniz (1-31 arası)
final String monthlySmsMessage = Bu gün ayın dokuzu; // String | Aylık SMS mesajı (monthly_sms_day parametresi girildiği zaman zorunludur)
final BuiltList<int> groupIds = [20212,20213]; // BuiltList<int> | Kişinin eklenmesini istediğiniz grubun id değeri

try {
    final response = api.createContact(name, surname, phone, salutation, tckn, description, phone1, email, title, phone2, fax, gender, birthday, birthdaySms, weddingday, weddingdaySms, address, note1, note2, note3, note4, companyName, monthlySmsDay, monthlySmsMessage, groupIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->createContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Ad | 
 **surname** | **String**| Soyad | 
 **phone** | **String**| GSM numarası 1 | 
 **salutation** | **String**| Hitap şekli (Bay, Bayan vb.) | [optional] 
 **tckn** | **String**| TC kimlik numarası | [optional] 
 **description** | **String**| Açıklama | [optional] 
 **phone1** | **String**| GSM numarası 2 | [optional] 
 **email** | **String**| E-posta adresi | [optional] 
 **title** | **String**| Unvan | [optional] 
 **phone2** | **String**| Ek telefon numarası | [optional] 
 **fax** | **String**| Fax numarası | [optional] 
 **gender** | **String**| Cinsiyet (Erkek: 'm', Kadın: 'f' olarak gönderilmeli) | [optional] 
 **birthday** | **String**| Doğum günü (dd.mm.yyyy formatında olmalı, birthday_sms parametresi 'true' olarak gönderildiği zaman zorunludur) | [optional] 
 **birthdaySms** | **bool**| Doğum gününde otomatik mesaj gönderimi. Devreye girmesi için değeri 'true' olarak gönderilmeli | [optional] 
 **weddingday** | **String**| Evlilik günü (dd.mm.yyyy formatında olmalı, weddingday_sms parametresi 'true' olarak gönderildiği zaman zorunludur) | [optional] 
 **weddingdaySms** | **bool**| Evlilik gününde otomatik mesaj gönderimi. Devreye girmesi için değeri 'true' olarak gönderilmeli | [optional] 
 **address** | **String**| Adres | [optional] 
 **note1** | **String**| Kişiyle ilgili notlar | [optional] 
 **note2** | **String**| Kişiyle ilgili notlar 2 | [optional] 
 **note3** | **String**| Kişiyle ilgili notlar 3 | [optional] 
 **note4** | **String**| Kişiyle ilgili notlar 4 | [optional] 
 **companyName** | **String**| Firma adı | [optional] 
 **monthlySmsDay** | **int**| Kişiye aylık otomatik SMS gönderilmesini istiyorsanız gönderilecek günü giriniz (1-31 arası) | [optional] 
 **monthlySmsMessage** | **String**| Aylık SMS mesajı (monthly_sms_day parametresi girildiği zaman zorunludur) | [optional] 
 **groupIds** | [**BuiltList&lt;int&gt;**](int.md)| Kişinin eklenmesini istediğiniz grubun id değeri | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContactGroup**
> String createContactGroup(name)

Grup Oluşturma

Yeni bir kişi grubu oluşturur. Google Kişiler entegrasyonunun kapalı olması gerekir. POST metodu ile api.bulutsantralim.com/contact_groups adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde oluşturulan grubun ID'si döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final String name = Müşteriler; // String | Oluşturulacak grubun adı

try {
    final response = api.createContactGroup(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->createContactGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Oluşturulacak grubun adı | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
> String deleteContact(id)

Kişi Silme

Mevcut bir kişiyi siler. Google Kişiler entegrasyonunun kapalı olması gerekir. DELETE metodu ile api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final int id = 10203; // int | Silinecek kişinin ID'si

try {
    final response = api.deleteContact(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->deleteContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Silinecek kişinin ID'si | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContactGroup**
> String deleteContactGroup(id)

Grup Silme

Mevcut bir kişi grubunu siler. Google Kişiler entegrasyonunun kapalı olması gerekir. DELETE metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final int id = 20212; // int | Silinecek grubun ID'si

try {
    final response = api.deleteContactGroup(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->deleteContactGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Silinecek grubun ID'si | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactGroups**
> BuiltList<ListContactGroups200ResponseInner> listContactGroups()

Grup Listesine Erişim

Santralinizdeki kişi gruplarının listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/contact_groups adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde gruplar listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();

try {
    final response = api.listContactGroups();
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->listContactGroups: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ListContactGroups200ResponseInner&gt;**](ListContactGroups200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContacts**
> ListContacts200Response listContacts(page, limit)

Kişiler Listesine Erişim

Santralinizdeki kişiler listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/contacts adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde kişiler listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final int page = 1; // int | Listenin hangi sayfasında olduğunuz
final int limit = 10; // int | Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100

try {
    final response = api.listContacts(page, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->listContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Listenin hangi sayfasında olduğunuz | [optional] 
 **limit** | **int**| Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100 | [optional] 

### Return type

[**ListContacts200Response**](ListContacts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContact**
> String updateContact(id, salutation, name, surname, tckn, description, phone, phone1, email, title, phone2, fax, gender, birthday, birthdaySms, weddingday, weddingdaySms, address, note1, note2, note3, note4, companyName, monthlySmsDay, monthlySmsMessage, groupIds)

Kişi Güncelleme

Mevcut bir kişiyi günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. Kişi eklerken kullanabileceğiniz tüm parametreler güncelleme için de geçerlidir. PATCH metodu ile api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final int id = 10203; // int | Güncellenecek kişinin ID'si
final String salutation = salutation_example; // String | Hitap şekli (Bay, Bayan vb.)
final String name = Bulutsantralim; // String | İsim
final String surname = surname_example; // String | Soyisim
final String tckn = tckn_example; // String | T.C. Kimlik Numarası
final String description = description_example; // String | Açıklama
final String phone = phone_example; // String | Ana telefon numarası
final String phone1 = phone1_example; // String | İkinci telefon numarası
final String email = email_example; // String | E-posta adresi
final String title = title_example; // String | Ünvan
final String phone2 = phone2_example; // String | Üçüncü telefon numarası
final String fax = fax_example; // String | Faks numarası
final String gender = gender_example; // String | Cinsiyet
final String birthday = birthday_example; // String | Doğum tarihi
final bool birthdaySms = true; // bool | Doğum günü SMS hatırlatması
final String weddingday = weddingday_example; // String | Evlilik yıldönümü tarihi
final bool weddingdaySms = true; // bool | Evlilik yıldönümü SMS hatırlatması
final String address = address_example; // String | Adres
final String note1 = note1_example; // String | Not 1
final String note2 = note2_example; // String | Not 2
final String note3 = note3_example; // String | Not 3
final String note4 = note4_example; // String | Not 4
final String companyName = companyName_example; // String | Şirket adı
final int monthlySmsDay = 56; // int | Aylık SMS günü (1-31)
final String monthlySmsMessage = monthlySmsMessage_example; // String | Aylık SMS mesajı
final BuiltList<int> groupIds = ; // BuiltList<int> | Kişi grubu ID'leri dizisi

try {
    final response = api.updateContact(id, salutation, name, surname, tckn, description, phone, phone1, email, title, phone2, fax, gender, birthday, birthdaySms, weddingday, weddingdaySms, address, note1, note2, note3, note4, companyName, monthlySmsDay, monthlySmsMessage, groupIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->updateContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Güncellenecek kişinin ID'si | 
 **salutation** | **String**| Hitap şekli (Bay, Bayan vb.) | [optional] 
 **name** | **String**| İsim | [optional] 
 **surname** | **String**| Soyisim | [optional] 
 **tckn** | **String**| T.C. Kimlik Numarası | [optional] 
 **description** | **String**| Açıklama | [optional] 
 **phone** | **String**| Ana telefon numarası | [optional] 
 **phone1** | **String**| İkinci telefon numarası | [optional] 
 **email** | **String**| E-posta adresi | [optional] 
 **title** | **String**| Ünvan | [optional] 
 **phone2** | **String**| Üçüncü telefon numarası | [optional] 
 **fax** | **String**| Faks numarası | [optional] 
 **gender** | **String**| Cinsiyet | [optional] 
 **birthday** | **String**| Doğum tarihi | [optional] 
 **birthdaySms** | **bool**| Doğum günü SMS hatırlatması | [optional] 
 **weddingday** | **String**| Evlilik yıldönümü tarihi | [optional] 
 **weddingdaySms** | **bool**| Evlilik yıldönümü SMS hatırlatması | [optional] 
 **address** | **String**| Adres | [optional] 
 **note1** | **String**| Not 1 | [optional] 
 **note2** | **String**| Not 2 | [optional] 
 **note3** | **String**| Not 3 | [optional] 
 **note4** | **String**| Not 4 | [optional] 
 **companyName** | **String**| Şirket adı | [optional] 
 **monthlySmsDay** | **int**| Aylık SMS günü (1-31) | [optional] 
 **monthlySmsMessage** | **String**| Aylık SMS mesajı | [optional] 
 **groupIds** | [**BuiltList&lt;int&gt;**](int.md)| Kişi grubu ID'leri dizisi | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContactGroup**
> String updateContactGroup(id, name)

Grup Güncelleme

Mevcut bir kişi grubunu günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. PATCH metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

### Example
```dart
import 'package:verimor_switch/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

final api = VerimorSwitch().getRehberYonetimiApi();
final int id = 20212; // int | Güncellenecek grubun ID'si
final String name = Arkadaşlarım; // String | Grubun yeni adı

try {
    final response = api.updateContactGroup(id, name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RehberYonetimiApi->updateContactGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Güncellenecek grubun ID'si | 
 **name** | **String**| Grubun yeni adı | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

