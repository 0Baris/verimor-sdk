# verimor_switch.model.OlayBildirmePostRequest

## Load the model package
```dart
import 'package:verimor_switch/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventType** | **String** | Olay tipi. ringing, answer, hangup veya user_hangup döner. | [optional]
**domainId** | **String** | Bulutsantral ID'si. | [optional]
**direction** | **String** | Çağrının yönü. internal, inbound yada outbound döner. | [optional]
**callerIdNumber** | **String** | Arayan numara. | [optional]
**outboundCallerIdNumber** | **String** | Arayanın dış numarası. | [optional]
**destinationNumber** | **String** | Aranan numara. | [optional]
**dialedUser** | **String** | Aranan kişinin dahili numarası. | [optional]
**connectedUser** | **String** | Bağlanan (telefonu açan) dahili. | [optional]
**callUuid** | **String** | Çağrının uuid'si. | [optional]
**startStamp** | [**DateTime**](DateTime.md) | Çağrının başladığı zaman. | [optional]
**answerStamp** | [**DateTime**](DateTime.md) | Çağrının cevaplandığı zaman. | [optional]
**endStamp** | [**DateTime**](DateTime.md) | Çağrının sonlandığı zaman. | [optional]
**duration** | **int** | Konuşma süresi. | [optional]
**recordingPresent** | **bool** | Çağrının ses kaydının olup olmadığı. true yada false döner. | [optional]
**answered** | **bool** | Kaçan çağrı tespiti için kullanılır. Aranan taraf çağrıyı kabul ettiyse true döner. | [optional]
**queue** | **String** | Kuyruğun veya Çağrı grubunun numarası. | [optional]
**queueWaitDuration** | **int** | Kuyrukta bekleme süresi. | [optional]
**sipHangupDisposition** | **String** | Çağrının kimin tarafından kapatıldığı. caller ya da callee olarak döner. | [optional]
**hangupCause** | **String** | Çağrının kapanma sebebi. Alabileceği değerler için <a href=\"/developer/errors/cagri-sonuc-kodlari\">Çağrı Sonuç Kodları</a> sayfasına bakın. | [optional]
**failureStatus** | **String** | Çağrı başarısız ise hata kodu. Bkz. <a href=\"/developer/errors/cagri-sonuc-kodlari\">Çağrı Sonuç Kodları</a>. | [optional]
**failurePhrase** | **String** | Çağrı başarısız ise hata mesajı. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

