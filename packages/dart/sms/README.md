# verimor_sms (experimental)

Verimor SMS API'sinin 13 OpenAPI operasyonu için generated Dart/Dio istemcisi.
Community paketidir; Verimor'un resmî SDK'sı değildir.

> Bu paket henüz pub.dev'de yayımlanmadı. Offline ve localhost testleriyle
> doğrulandı; canlı Verimor hesabıyla henüz test edilmedi.

## Public façade

```dart
final sms = SmsClient(
  username: 'SMS_USER', password: 'SMS_PASSWORD', sourceAddr: 'VERIMOR',
);
await sms.send({'messages': [{'dest': '905001112233', 'msg': 'Merhaba'}]});
final senderIds = await sms.listSenderIds();
sms.close();
```

13 operasyonun tamamı `SmsClient` üzerinde; credentials otomatik eklenir ve
generated istemci `sms.raw` alanında kalır. `sourceAddr` çağrıdaki `source_addr`
ile override edilebilir. 30 saniye timeout, otomatik retry yoktur.

## Git üzerinden kurulum

`pubspec.yaml` dosyanıza ekleyin:

```yaml
dependencies:
  verimor_sms:
    git:
      url: https://github.com/0Baris/verimor-sdk.git
      ref: main
      path: packages/dart/sms
```

Reproducible build için `main` yerine doğruladığınız bir commit SHA kullanmanız
önerilir. Ardından:

```sh
dart pub get
```

Flutter projesinde aynı dependency tanımı kullanılabilir. Generated `.g.dart`
dosyaları pakete dahildir; `build_runner` çalıştırmanız gerekmez.

## SMS gönderme

Alttaki bölüm generated/raw istemci örneğidir; raw kullanımda SMS credentials'ı
ilgili endpoint'in body veya query parametrelerine açıkça verilir:

```dart
import 'dart:io';

import 'package:verimor_sms/verimor_sms.dart';

Future<void> main() async {
  final client = VerimorSms();

  try {
    final request = SendSmsJsonRequest((b) => b
      ..username = Platform.environment['VERIMOR_SMS_USERNAME']!
      ..password = Platform.environment['VERIMOR_SMS_PASSWORD']!
      ..sourceAddr = 'MARKANIZ'
      ..messages.add(
        SendSmsJsonRequestMessagesInner((m) => m
          ..dest = '905001112233'
          ..msg = 'Siparişiniz hazırlanıyor.'),
      ));

    final response = await client.getSmsKampanyasiApi().sendSmsJson(
      sendSmsJsonRequest: request,
    );
    print(response.data); // message/campaign ID
  } finally {
    client.dio.close();
  }
}
```

## Bakiye sorgulama

```dart
final client = VerimorSms();

try {
  final response = await client.getBakiyeSorgulamalariApi().v2BalanceGet(
    username: Platform.environment['VERIMOR_SMS_USERNAME']!,
    password: Platform.environment['VERIMOR_SMS_PASSWORD']!,
  );
  print(response.statusCode);
} finally {
  client.dio.close();
}
```

Durum, başlık, kara liste, inbound message ve İYS işlemleri de ilgili generated
API getter'ları üzerinden çağrılır. Tüm sınıf ve endpoint referansı `doc/`
dizinindedir.

## Özel base URL ve timeout

Varsayılan client `https://sms.verimor.com.tr` adresini, 5 saniye connect ve 3
saniye receive timeout'unu kullanır. Kendi Dio instance'ınızı verirseniz base URL
ve timeout'u siz belirlemelisiniz:

```dart
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
  baseUrl: VerimorSms.basePath,
  connectTimeout: const Duration(seconds: 10),
  receiveTimeout: const Duration(seconds: 30),
));
final client = VerimorSms(dio: dio);
```

Test sunucusu için `VerimorSms(basePathOverride: 'http://127.0.0.1:8080')`
kullanılabilir.

## Hata ve iptal

Generated metotlar HTTP, bağlantı, timeout ve serialization sorunlarında
`DioException` fırlatır. Status ve response body'ye şöyle erişebilirsiniz:

```dart
try {
  await client.getBakiyeSorgulamalariApi().v2BalanceGet(
    username: 'user',
    password: 'secret',
  );
} on DioException catch (error) {
  print(error.response?.statusCode);
  print(error.response?.data);
  rethrow;
}
```

Tek isteği iptal etmek için generated metoda `cancelToken: CancelToken()` verin.
Paket otomatik retry veya rate limiter eklemez. SMS isteğini körlemesine tekrar
etmek çift gönderime yol açabilir.

## English summary

`verimor_sms` is an experimental generated Dio client covering 13 Verimor SMS
operations. It is not published to pub.dev; install it from the Git repository
and pin a commit for reproducible builds. Credentials are explicit endpoint
arguments, errors remain `DioException`, and retries are never automatic. Live
Verimor services have not yet been tested.
