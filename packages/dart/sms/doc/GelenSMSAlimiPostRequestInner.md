# verimor_sms.model.GelenSMSAlimiPostRequestInner

## Load the model package
```dart
import 'package:verimor_sms/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **int** | Mesaja API tarafından verilmiş ID. | [optional] 
**type** | **String** | Mesajın yönüdür. Gelen SMS olduğu için inbound. | [optional] 
**createdAt** | **String** | Mesajın kayıt edildiği tarih saat. Tarih ve saat aralığına göre API isteklerinde filtre yapılacak alan. | [optional] 
**network** | **String** | Mesajı gönderen operatör. TURKCELL, TTMOBIL, VODAFONE değerleri olabilir. | [optional] 
**sourceAddr** | **String** | Mesajı gönderen numara. | [optional] 
**destinationAddr** | **String** | Mesajın gönderildiği numara (Verimor abone numarası veya 4 haneli Verimor ücretsiz kısa numarası). | [optional] 
**keyword** | **String** | Ortak kullanımlı kısa numaralardaki ayırt edici anahtar kelime. Kısa numaraya değil doğrudan sizin numaranıza gelen sms'lerde boş olur. | [optional] 
**content** | **String** | Gelen mesajın tam içeriği. | [optional] 
**receivedAt** | **String** | Mesajın alındığı tarih saat. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


