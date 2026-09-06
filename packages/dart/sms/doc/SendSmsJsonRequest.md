# verimor_sms.model.SendSmsJsonRequest

## Load the model package
```dart
import 'package:verimor_sms/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** | API kullanıcı adı | 
**password** | **String** | API şifresi | 
**sourceAddr** | **String** | Gönderici başlığı | [optional] 
**validFor** | **String** | Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer 00:01, Maksimum değer 48:00) | [optional] 
**datacoding** | **int** | Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode) | [optional] 
**isCommercial** | **bool** | Ticari mesaj mı | [optional] 
**iysRecipientType** | **String** | İYS alıcı tipi (BIREYSEL/TACIR) | [optional] 
**sendAt** | **String** | Gönderim zamanı (ISO 8601 formatında). Boş ise mesaj hemen gönderilir. | [optional] 
**customId** | **String** | Özel kampanya ID'si | [optional] 
**addRet** | **bool** | true ise gönderici başlığına ait ret bildirimi ('Ret: ...') her mesajın sonuna otomatik eklenir. Yalnızca bu (POST/JSON) yönteminde geçerlidir. | [optional] 
**messages** | [**BuiltList&lt;SendSmsJsonRequestMessagesInner&gt;**](SendSmsJsonRequestMessagesInner.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


