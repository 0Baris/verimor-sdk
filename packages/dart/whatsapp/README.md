# verimor_whatsapp (experimental)

Verimor WhatsApp OTP, utility message ve health operasyonları için generated
Dart/Dio istemcisi. Community paketidir; Verimor'un resmî SDK'sı değildir.

> Bu paket henüz pub.dev'de yayımlanmadı. Offline ve localhost testleriyle
> doğrulandı; canlı Verimor hesabıyla henüz test edilmedi.

## Public façade

```dart
final client = WhatsAppClient(apiKey: 'WHATSAPP_KEY');
await client.sendOtp({'to': '905001112233', 'template_name': 'otp'});
await client.sendUtility({'to': '905001112233', 'template_name': 'utility'});
await client.health();
client.close();
```

Üç operasyonun tamamı `WhatsAppClient` üzerinde; `x-api-key` otomatik eklenir,
30 saniye timeout uygulanır ve generated istemci `client.raw` alanında kalır.
Otomatik retry yoktur.

## Git üzerinden kurulum

```yaml
dependencies:
  verimor_whatsapp:
    git:
      url: https://github.com/0Baris/verimor-sdk.git
      ref: main
      path: packages/dart/whatsapp
```

```sh
dart pub get
```

Reproducible build için `main` yerine doğruladığınız bir commit SHA kullanın.
Flutter projelerinde aynı dependency tanımı geçerlidir. Generated `.g.dart`
dosyaları pakete dahildir.

## Generated/raw ile OTP gönderme

```dart
import 'dart:io';

import 'package:verimor_whatsapp/verimor_whatsapp.dart';

Future<void> main() async {
  final client = VerimorWhatsapp();

  try {
    final response = await client.getMessagesApi().sendOtpV1MessagesOtpPost(
      xApiKey: Platform.environment['VERIMOR_WHATSAPP_API_KEY']!,
      templateMessageRequest: TemplateMessageRequest((b) => b
        ..to = '905001112233'
        ..templateName = 'otp_dogrulama'
        ..language = 'tr'
        ..parameters.add('123456')),
    );
    print(response.statusCode); // Şemada başarılı OTP yanıtı: 202
    print(response.data?.id);
  } finally {
    client.dio.close();
  }
}
```

`xApiKey` değeri request'in `x-api-key` header'ına yazılır. Telefon numarası ve
template adı kendi Verimor hesabınızdaki onaylı değerlerle değiştirilmelidir.

## Utility mesajı gönderme

```dart
final response = await client.getMessagesApi().sendUtilityV1MessagesUtilityPost(
  xApiKey: Platform.environment['VERIMOR_WHATSAPP_API_KEY']!,
  templateMessageRequest: TemplateMessageRequest((b) => b
    ..to = '905001112233'
    ..templateName = 'siparis_hazir'
    ..language = 'tr'
    ..parameters.add('42')),
);
```

Health kontrolü auth gerektirmeden çağrılabilir:

```dart
final response = await client.getHealthApi().healthHealthGet();
print(response.statusCode);
```

Model ve endpoint alanlarının tam generated referansı `doc/` dizinindedir.

## Özel base URL ve timeout

Varsayılan client `https://wapi.verimor.com.tr` adresini, 5 saniye connect ve 3
saniye receive timeout'unu kullanır. Kendi Dio instance'ınızı verirseniz base URL
ve timeout'u siz yapılandırın:

```dart
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
  baseUrl: VerimorWhatsapp.basePath,
  connectTimeout: const Duration(seconds: 10),
  receiveTimeout: const Duration(seconds: 30),
));
final client = VerimorWhatsapp(dio: dio);
```

Localhost testi için
`VerimorWhatsapp(basePathOverride: 'http://127.0.0.1:8080')` kullanılabilir.

## Hata ve iptal

HTTP, bağlantı, timeout ve serialization sorunları `DioException` olarak kalır:

```dart
try {
  await client.getMessagesApi().sendOtpV1MessagesOtpPost(
    xApiKey: 'secret',
    templateMessageRequest: request,
  );
} on DioException catch (error) {
  print(error.response?.statusCode);
  print(error.response?.data);
  rethrow;
}
```

Generated metoda `cancelToken: CancelToken()` vererek isteği iptal edebilirsiniz.
Paket otomatik retry veya rate limiter eklemez. Timeout/5xx sonrasında aynı OTP
veya utility mesajını tekrar göndermeden önce ilk isteğin gerçekleşip
gerçekleşmediğini kontrol edin.

## English summary

`verimor_whatsapp` is an experimental generated Dio client for OTP, utility
message and health operations. It is not published to pub.dev; install it from
Git and pin a commit for reproducible builds. Pass the API key as `xApiKey`,
handle native `DioException` errors and close the Dio client when finished.
Retries are never automatic. Live Verimor services have not yet been tested.
