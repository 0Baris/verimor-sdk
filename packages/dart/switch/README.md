# verimor_switch (experimental)

Verimor Switch API'sinin 52 OpenAPI operasyonu için generated Dart/Dio istemcisi.
Community paketidir; Verimor'un resmî SDK'sı değildir.

> Bu paket henüz pub.dev'de yayımlanmadı. Offline ve localhost testleriyle
> doğrulandı; canlı Verimor hesabıyla henüz test edilmedi.

## Git üzerinden kurulum

```yaml
dependencies:
  verimor_switch:
    git:
      url: https://github.com/0Baris/verimor-sdk.git
      ref: main
      path: packages/dart/switch
```

```sh
dart pub get
```

Reproducible build için `main` yerine doğruladığınız bir commit SHA kullanın.
Flutter projelerinde aynı dependency tanımı geçerlidir. Generated `.g.dart`
dosyaları hazırdır; model generation çalıştırmanız gerekmez.

## Kimlik doğrulama

Switch API anahtarı bütün isteklerde `key` query parametresi olarak gönderilir.
Default client'ın generated API-key interceptor'ını bir kez yapılandırın:

```dart
import 'dart:io';

import 'package:verimor_switch/verimor_switch.dart';

final client = VerimorSwitch();
client.setApiKey(
  'api_key',
  Platform.environment['VERIMOR_SWITCH_API_KEY']!,
);
```

## Arama başlatma

```dart
Future<void> main() async {
  final client = VerimorSwitch();
  client.setApiKey(
    'api_key',
    Platform.environment['VERIMOR_SWITCH_API_KEY']!,
  );

  try {
    final response = await client.getCagriYonetimiApi().originateCallPost(
      originateCallPostRequest: OriginateCallPostRequest((b) => b
        ..extension_ = '1001'
        ..destination = '905001112233'),
    );
    print(response.data);
  } finally {
    client.dio.close();
  }
}
```

`extension` Dart keyword'leriyle çakışabildiği için model builder alanı
`extension_` adını kullanır; JSON'a yine `extension` olarak serialize edilir.

## Kuyrukları listeleme

```dart
final response = await client.getKuyrukYonetimiApi().getQueues();
for (final queue in response.data ?? []) {
  print(queue);
}
```

Anons, kara liste, çağrı, CRM, dış numara, faks, kuyruk, otomatik arama,
raporlama ve rehber endpointleri kendi generated API getter'larında bulunur.
Tam metot ve model referansı `doc/` dizinindedir.

## Alternatif Dio yapılandırması

API key'i Dio'nun varsayılan query parametresinde de tanımlayabilirsiniz:

```dart
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
  baseUrl: VerimorSwitch.basePath,
  queryParameters: {'key': Platform.environment['VERIMOR_SWITCH_API_KEY']!},
  connectTimeout: const Duration(seconds: 10),
  receiveTimeout: const Duration(seconds: 30),
));
final client = VerimorSwitch(dio: dio);
```

Özel Dio verirken base URL'yi sizin belirlemeniz gerekir. Localhost testi için
default Dio ile `basePathOverride` da kullanılabilir:

```dart
final client = VerimorSwitch(
  basePathOverride: 'http://127.0.0.1:8080',
);
client.setApiKey('api_key', 'test-key');
```

## Hata, timeout ve iptal

Generated metotlar sorunlarda `DioException` fırlatır:

```dart
try {
  await client.getKuyrukYonetimiApi().getQueues();
} on DioException catch (error) {
  print(error.response?.statusCode);
  print(error.response?.data);
  rethrow;
}
```

Tek istek için `CancelToken`, özel status kabulü için `validateStatus` parametresi
generated metotlara verilebilir. Paket otomatik retry veya rate limiter eklemez.
Çağrı oluşturma isteğini tekrar göndermeden önce ilk çağrının oluşup oluşmadığını
kontrol edin. Query string API key içereceğinden URL loglarını koruyun.

## English summary

`verimor_switch` is an experimental generated Dio client covering 52 Verimor
Switch operations. It is not published to pub.dev. Install it from Git, set the
`api_key` once so it is sent as the `key` query parameter, and close the Dio
client when finished. Errors remain `DioException`; retries are never automatic.
Live Verimor services have not yet been tested.
