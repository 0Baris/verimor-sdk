# Verimor Dart / Flutter SDK

[English documentation](#english-documentation)

Verimor SMS, Switch ve WhatsApp API'leri için Dart istemcileri. Üç paketin
kaynakları ve testleri bu repoda bulunur:

- `verimor_sms`
- `verimor_switch`
- `verimor_whatsapp`

> Paketler henüz pub.dev'de yayımlanmamıştır. İlk pub.dev sürümüne kadar paket
> adları ve yayın politikası değişebilir. Bu bağımsız topluluk projesi Verimor
> tarafından desteklenmez ve henüz canlı Verimor hesaplarıyla doğrulanmamıştır.

## Yerel kullanım

Geliştirme sırasında path dependency kullanabilirsiniz:

```yaml
dependencies:
  verimor_sms:
    path: ../verimor-sdk/packages/dart/sms
  verimor_switch:
    path: ../verimor-sdk/packages/dart/switch
  verimor_whatsapp:
    path: ../verimor-sdk/packages/dart/whatsapp
```

Bu örnek bir pub.dev kurulum talimatı değildir. Production bağımlılığı için ilk
resmî Dart release'ini beklemeniz önerilir.

## SMS

```dart
import 'package:verimor_sms/verimor_sms.dart';

Future<void> main() async {
  final sms = SmsClient(
    username: const String.fromEnvironment('VERIMOR_SMS_USERNAME'),
    password: const String.fromEnvironment('VERIMOR_SMS_PASSWORD'),
    sourceAddr: 'VERIMOR',
  );

  try {
    final messageId = await sms.send({
      'messages': [
        {'dest': '905001112233', 'msg': 'Siparişiniz hazır.'},
      ],
    });

    final balance = await sms.balance();
    final status = await sms.status(id: int.parse(messageId));
    final senderIds = await sms.listSenderIds();

    print({messageId, balance, status, senderIds});
  } finally {
    sms.close();
  }
}
```

`sourceAddr` varsayılan SMS başlığıdır. Tek çağrıda verilen `source_addr` bu
değeri ezer. `status` için yalnız `id` veya yalnız `customId` verilmelidir.

## Switch

```dart
import 'package:verimor_switch/verimor_switch.dart';

Future<void> main() async {
  final switchClient = SwitchClient(apiKey: 'SWITCH_KEY');

  try {
    await switchClient.originate({
      'extension': '100',
      'destination': '905001112233',
    });
    print(await switchClient.listExtensions());
    print(await switchClient.listQueues());
  } finally {
    switchClient.close();
  }
}
```

API anahtarı her isteğe `key` query parametresi olarak eklenir.

## WhatsApp

```dart
import 'package:verimor_whatsapp/verimor_whatsapp.dart';

Future<void> main() async {
  final whatsapp = WhatsAppClient(apiKey: 'WHATSAPP_KEY');

  try {
    await whatsapp.sendOtp({
      'to': '905001112233',
      'template_name': 'otp',
      'language': 'tr',
      'parameters': ['482913'],
      'use_tenant_queue': false,
    });

    await whatsapp.sendUtility({
      'to': '905001112233',
      'template_name': 'siparis_hazir',
      'language': 'tr',
      'parameters': ['ABC-42'],
      'use_tenant_queue': false,
    });

    print(await whatsapp.health());
  } finally {
    whatsapp.close();
  }
}
```

WhatsApp API anahtarı `x-api-key` header'ına eklenir. Mesaj endpoint'lerinin
başarılı `202` yanıtları normal başarı yanıtı olarak kabul edilir.

## Yapılandırma ve lifecycle

Client constructor'ları `baseUrl`, `timeout` ve isteğe bağlı bir `Dio` instance'ı
kabul eder. Varsayılan timeout 30 saniyedir.

SDK'nın oluşturduğu Dio kaynaklarını kapatmak için `close()` çağırın. Caller
tarafından verilen Dio instance'ı SDK tarafından kapatılmaz; lifecycle çağırana
aittir.

## Hata yönetimi

- 2xx dışındaki façade yanıtları `VerimorApiError` oluşturur.
- Ağ ve timeout hataları native `DioException` olarak kalır.
- Beklenmeyen başarılı response biçimleri `FormatException` veya type hatası
  oluşturabilir.
- Otomatik retry ve rate limiter yoktur.
- Timeout sonrasında yan etkili bir isteği tekrar etmeden önce uzak durumu
  kontrol edin.

## Generated `raw` erişimi

Normal uygulama kodunda doğrudan client metotlarını kullanın. `client.raw`,
generated Dio istemcisine erişim verir. Raw kullanımda generated model, response
ve hata sözleşmesi geçerlidir; façade normalizasyonu otomatik uygulanmaz.

SMS 13, Switch 52 ve WhatsApp 3 operasyonun tamamı façade üzerindedir. Tam liste
[`docs/operations.md`](../../docs/operations.md) içindedir.

## Test

```bash
cd packages/dart/sms && dart pub get && dart analyze && dart test
cd ../switch && dart pub get && dart analyze && dart test
cd ../whatsapp && dart pub get && dart analyze && dart test
```

## English documentation

Community-maintained Dart clients for the Verimor SMS, Switch, and WhatsApp
APIs. The source and tests for `verimor_sms`, `verimor_switch`, and
`verimor_whatsapp` are included in this repository.

> These packages are not published to pub.dev yet. Package names and the
> publication policy may change before the first Dart release. They are not
> official Verimor packages and have not been tested with live Verimor accounts.

### Local dependency

During development, reference the packages by path:

```yaml
dependencies:
  verimor_sms:
    path: ../verimor-sdk/packages/dart/sms
  verimor_switch:
    path: ../verimor-sdk/packages/dart/switch
  verimor_whatsapp:
    path: ../verimor-sdk/packages/dart/whatsapp
```

This is not a pub.dev installation command. Waiting for the first published
Dart release is recommended for production dependencies.

### SMS

```dart
import 'package:verimor_sms/verimor_sms.dart';

Future<void> main() async {
  final sms = SmsClient(
    username: 'SMS_USER',
    password: 'SMS_PASSWORD',
    sourceAddr: 'VERIMOR',
  );

  try {
    await sms.send({
      'messages': [
        {'dest': '905001112233', 'msg': 'Your order is ready.'},
      ],
    });
    print(await sms.balance());
    print(await sms.listSenderIds());
  } finally {
    sms.close();
  }
}
```

A per-call `source_addr` overrides the client default. Exactly one of `id` and
`customId` must be passed to `status`.

### Switch and WhatsApp

```dart
import 'package:verimor_switch/verimor_switch.dart';
import 'package:verimor_whatsapp/verimor_whatsapp.dart';

Future<void> main() async {
  final switchClient = SwitchClient(apiKey: 'SWITCH_KEY');
  final whatsapp = WhatsAppClient(apiKey: 'WHATSAPP_KEY');

  try {
    print(await switchClient.listExtensions());
    await whatsapp.sendOtp({
      'to': '905001112233',
      'template_name': 'otp',
      'language': 'en',
      'parameters': ['482913'],
      'use_tenant_queue': false,
    });
  } finally {
    switchClient.close();
    whatsapp.close();
  }
}
```

Switch credentials are injected as the `key` query parameter. WhatsApp
credentials are injected as the `x-api-key` header.

### Configuration, errors, and cleanup

Clients accept `baseUrl`, `timeout`, and an optional Dio instance. The default
timeout is 30 seconds. Call `close()` for SDK-owned Dio resources. A Dio instance
supplied by the caller remains caller-owned.

Non-2xx façade responses throw `VerimorApiError`; network and timeout failures
remain native `DioException` values. No automatic retries or rate limiting are
performed. Use `client.raw` for generated Dio access and generated response
semantics.

Licensed under MIT.
