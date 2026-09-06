# verimor_switch.model.GetCdrs200ResponseCdrsInner

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startStamp** | **String** | Çağrı başlangıç zamanı | [optional] 
**direction** | **String** | Çağrı yönü (insan okunabilir) | [optional] 
**callerIdNumber** | **String** | Arayan numara | [optional] 
**callerIdName** | **String** | Arayan isim | [optional] 
**destinationNumber** | **String** | Hedef numara | [optional] 
**destinationName** | **String** | Hedef isim | [optional] 
**duration** | **String** | Çağrı süresi (SS:dd:ss) | [optional] 
**talkDuration** | **String** | Konuşma süresi (SS:dd:ss) | [optional] 
**queueWaitSeconds** | **String** | Kuyruk bekleme süresi (SS:dd:ss) | [optional] 
**queue** | **String** | Kuyruk adı | [optional] 
**result** | **String** | Human-readable call result in Turkish | [optional] 
**missed** | **bool** | Cevapsız çağrı mı? | [optional] 
**returnUuid** | **String** | Return UUID | [optional] 
**recordingPresent** | **String** | Kayıt durumu | [optional] 
**sipHangupDisposition** | **String** | SIP sonlandırma nedeni | [optional] 
**callUuid** | **String** | Çağrı UUID | [optional] 
**answerStamp** | **String** | Çağrı cevaplanma zamanı | [optional] 
**endStamp** | **String** | Çağrı bitiş zamanı | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


