# verimor_sms.model.GonderimRaporuAlimiPostRequestInner

## Load the model package
```dart
import 'package:verimor_sms/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Mesajın yönüdür. Gönderilen SMS olduğu için outbound. | [optional] 
**campaignId** | **int** | Mesajın kampanya ID'si. | [optional] 
**campaignCustomId** | **String** | Mesajın kampanyasına sizin tarafınızdan verilmiş özel ID. | [optional] 
**messageId** | **String** | Mesaja API tarafından verilmiş ID. | [optional] 
**messageCustomId** | **String** | Mesaja sizin tarafınızdan verilmiş özel ID. | [optional] 
**dest** | **String** | Mesajın gönderildiği telefon numarası. Yurt dışı numaralarının başına 00 eklenmelidir. Örnek: 0049xxxxxxxx. | [optional] 
**size** | **int** | Mesajın boyu. | [optional] 
**internationalMultiplier** | **int** | Mesajın kredi çarpanı (bir boyunun kaç krediye denk geldiği). Uluslararası mesajlarda 1'den büyük olur. Ulusal mesajlarda daima 1 olur. | [optional] 
**credits** | **int** | Bu mesaj için hesabınızdan kaç kredi düşüldüğü. | [optional] 
**status** | **String** | Mesajın durumu (olabilecek durumlar ve anlamları için dokümanın sonundaki durum listesine bakınız). | [optional] 
**gsmError** | **String** | Mesaj iletilemediyse operatörden dönen hata kodu. | [optional] 
**sentAt** | **String** | Mesajın iletildiği tarih (mesaj iletilemediyse null olur). | [optional] 
**doneAt** | **String** | Mesajın son durumuna ulaştığı tarih (mesaj iletilemediyse de dolu olur). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


