# verimor_switch.model.OriginateCallPostRequest

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extension_** | **String** | Aramanın bağlanacağı dahili numaradır. | 
**destination** | **String** | Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında olmalı). | 
**callerId** | **String** | Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide seçili olan dış no kullanılacaktır). | [optional] 
**manualAnswer** | **bool** | Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır ve karşı numara aranır). | [optional] 
**timeout** | **int** | Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur. | [optional] 
**announcementToCaller** | **int** | Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz. | [optional] 
**announcementToCallee** | **int** | Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz. | [optional] 
**customCallType** | **String** | Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak gönderebilirsiniz. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


