# verimor_switch.model.ListAgentStatuses200ResponseInner

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | **String** | MT numarası | 
**queues** | **BuiltList&lt;String&gt;** | MT'nin üye olduğu kuyruklar | 
**status** | **String** | MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada) | 
**breakDescription** | **String** | MT molada ise, mola açıklaması (sadece status ON_BREAK olduğunda mevcut) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


