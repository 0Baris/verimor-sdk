# Verimor Dart / Flutter SDK — English guide

[Türkçe / bilingual guide](README.md)

The community-maintained `verimor_sms`, `verimor_switch`, and
`verimor_whatsapp` packages provide first-class methods for 13 SMS, 52 Switch,
and 3 WhatsApp operations. Their source and tests are present in this
repository, but they are **not published to pub.dev**. Names and publication
policy may change before the first Dart release.

> These are not official Verimor packages. They have been tested offline and
> against localhost servers, not live Verimor accounts.

## Local development

Reference the checked-out repository by path in `pubspec.yaml`:

```yaml
dependencies:
  verimor_sms:
    path: ../verimor-sdk/packages/dart/sms
  verimor_switch:
    path: ../verimor-sdk/packages/dart/switch
  verimor_whatsapp:
    path: ../verimor-sdk/packages/dart/whatsapp
```

This is not a pub.dev installation command. Wait for a published Dart release
before relying on these packages in production.

## SMS

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

A per-call `source_addr` overrides the default `sourceAddr`. `status` accepts
exactly one of `id` and `customId`.

## Switch and WhatsApp

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

Switch credentials use the `key` query parameter; WhatsApp uses the
`x-api-key` header. Successful `202` message responses are accepted.

## Options, errors, and cleanup

Each client accepts `baseUrl`, `timeout` (30 seconds by default), and an
optional Dio instance. Call `close()` to dispose of SDK-created Dio resources.
An injected Dio remains caller-owned.

Non-2xx façade responses throw `VerimorApiError`. Network and timeout failures
remain `DioException`. No automatic retries or rate limiter are included. Use
`client.raw` for generated Dio methods and their own response/error semantics.

```bash
cd packages/dart/sms && dart pub get && dart analyze && dart test
cd ../switch && dart pub get && dart analyze && dart test
cd ../whatsapp && dart pub get && dart analyze && dart test
```

See the [operation table](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md).
Do not put credentials or personal data in source code or logs. MIT license.
