# verimor_switch.model.GetVoicemailMessages200ResponseMessagesInner

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startStamp** | **String** | Telesekreter mesajının bırakıldığı zaman | 
**readStamp** | **String** | Telesekreter mesajı okunduysa, okunma zamanı (OİM'den, IVR'dan veya API'den ses kaydı dinlendiği zaman) | 
**userNumber** | **String** | Mesajın bırakıldığı dahili numarası | 
**uuid** | **String** | Bu mesajın kayıt numarası. Aynı zamanda ilgili çağrının numarasıdır, CDR kayıtlarıyla ilişkilidir | 
**callerIdName** | **String** | Mesajı bırakan kişinin ismi | 
**callerIdNumber** | **String** | Mesajı bırakan numara | 
**duration** | **String** | Ses kaydının süresi | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


