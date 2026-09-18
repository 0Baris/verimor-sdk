# Verimor Dart / Flutter SDK

Community/unofficial `verimor_sms`, `verimor_switch` ve `verimor_whatsapp`
paketleri. Kaynak ve testler hazırdır; pub.dev yayını bu sürümde yapılmayacaktır.

```dart
import 'package:verimor_sms/verimor_sms.dart';

final sms = SmsClient(
  username: 'SMS_USER',
  password: 'SMS_PASSWORD',
  sourceAddr: 'VERIMOR',
);
await sms.send({
  'messages': [
    {'dest': '905001112233', 'msg': 'Merhaba'},
  ],
});
final balance = await sms.balance();
final senderIds = await sms.listSenderIds();
sms.close();
```

```dart
final switchClient = SwitchClient(apiKey: 'SWITCH_KEY');
await switchClient.listExtensions();

final whatsapp = WhatsAppClient(apiKey: 'WHATSAPP_KEY');
await whatsapp.sendOtp({'to': '905001112233', 'template_name': 'otp'});
await whatsapp.health();
```

Client'lar credentials'ı doğru body/query/header konumuna otomatik yerleştirir.
SMS 13, Switch 52 ve WhatsApp 3 operasyonun tamamı façade üzerindedir. Tam isim
tablosu: [Public SDK operations](../../docs/operations.md). `client.raw`, generated
Dio client'ına erişim verir.

4xx/5xx yanıtları `VerimorApiError`; ağ/timeout hataları native `DioException`
olarak kalır. İstekler otomatik tekrar edilmez. Caller'ın verdiği Dio kapatılmaz;
SDK'nın oluşturduğu Dio için `close()` çağırın. Bu API henüz canlı Verimor
credentials ile doğrulanmamıştır.
