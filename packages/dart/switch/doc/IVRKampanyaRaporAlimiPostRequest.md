# verimor_switch.model.IVRKampanyaRaporAlimiPostRequest

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notificationId** | **int** | Bu bildirime ait unique id. | [optional] 
**notificationDate** | [**DateTime**](DateTime.md) | Bildirimi yapılan olayın gerçekleştiği tarih saat. | [optional] 
**domainId** | **String** | Bulutsantral ID'si. | [optional] 
**ivrCampaignId** | **int** | Otomatik IVR arama kampanyasının ID'si. | [optional] 
**ivrCampaignName** | **String** | Otomatik IVR arama kampanyasının adı. | [optional] 
**ivrLeadId** | **int** | Kampanyadaki numaranın ID'si. | [optional] 
**phone** | **String** | Aranan telefon numarası. | [optional] 
**digit** | **String** | Aranan kişinin yaptığı tuşlama. Boş string (\"\"): Çağrı başlamadı. 0-9: Geçerli tuşlama. -: timeout. !4: Geçersiz tuşlama. | [optional] 
**callUuid** | **String** | Tuşlama için yapılan çağrının UUID'si. | [optional] 
**status** | **String** | Çağrı durumu. 'Cevaplandı', 'Cevapsız', 'Reddedildi', 'Hata' gibi açıklamaları içerir. 'Cevaplandı' hariç her durum hata olarak yorumlanabilir. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


