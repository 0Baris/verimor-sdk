# verimor_switch.model.ListFdrs200ResponseFdrsInner

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callUuid** | **String** | Faksın uuid'si | 
**direction** | **String** | Çağrının yönü. \"Gelen\", \"Giden\" ve \"Santral içi\" olarak değişebilir | 
**callerIdNumber** | **String** | Faks gönderen numara | 
**localStationHeader** | **String** | Gönderen başlığı | [optional] 
**originalDestination** | **String** | Faks alan numara | 
**pagesCount** | **String** | Sayfa adedi | 
**transferRate** | **int** | Gönderim hızı | [optional] 
**startStamp** | [**DateTime**](DateTime.md) | Arama Zamanı | 
**answerStamp** | [**DateTime**](DateTime.md) | Cevaplama Zamanı | [optional] 
**endStamp** | [**DateTime**](DateTime.md) | Kapatma Zamanı | [optional] 
**duration** | **int** | Süre | [optional] 
**success** | **bool** | Durum | 
**result** | **String** | Sonuç | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


