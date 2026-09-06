# verimor_switch.model.ListContacts200ResponseContactsInner

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID değeri. Bu değeri kullanarak Kişi silme veya güncelleme işlemlerini gerçekleştirebilirsiniz | 
**name** | **String** | Ad | 
**surname** | **String** | Soyad | 
**tckn** | **String** | TC kimlik numarası | [optional] 
**description** | **String** | Açıklama | [optional] 
**phone** | **String** | GSM numarası 1 | 
**phone1** | **String** | GSM numarası 2 | [optional] 
**email** | **String** | E-posta adresi | 
**title** | **String** | Unvan | [optional] 
**phone2** | **String** | Ek telefon numarası | [optional] 
**fax** | **String** | Fax numarası | [optional] 
**gender** | **String** | Cinsiyet | [optional] 
**birthday** | **String** | Doğum günü | [optional] 
**birthdaySms** | **bool** | Doğum gününde otomatik mesaj gönderimi. 'true' veya 'false' döner | [optional] 
**weddingday** | **String** | Evlilik günü | [optional] 
**weddingdaySms** | **bool** | Evlilik gününde otomatik mesaj gönderimi. 'true' veya 'false' döner | [optional] 
**note1** | **String** | Kişiyle ilgili notlar | [optional] 
**note2** | **String** | Kişiyle ilgili notlar 2 | [optional] 
**note3** | **String** | Kişiyle ilgili notlar 3 | [optional] 
**note4** | **String** | Kişiyle ilgili notlar 4 | [optional] 
**companyName** | **String** | Firma adı | [optional] 
**monthlySmsDay** | **int** | Kişiye aylık otomatik SMS gönderilecek gün. 0-31 arası rakam veya 'null' döner | [optional] 
**monthlySmsMessage** | **String** | Aylık SMS mesajı | [optional] 
**groupIds** | **BuiltList&lt;int&gt;** | Kişinin eklendiği gruplar | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


