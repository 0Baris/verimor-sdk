# `@bariscemant/verimor`

[English documentation](#english-documentation)

Verimor SMS, Switch ve WhatsApp API'leri için TypeScript SDK'sı. Paket ESM olarak
dağıtılır, Node.js 22.14 ve üzerini destekler ve üç üründeki 68 operasyonun
tamamını tip güvenli metotlarla sunar.

> Bu bağımsız bir topluluk projesidir; Verimor tarafından geliştirilmez veya
> desteklenmez. SDK kapsamlı offline ve localhost testlerinden geçmiştir ancak
> henüz canlı Verimor hesaplarıyla doğrulanmamıştır.

## Kurulum

```bash
npm install @bariscemant/verimor
```

Paket yalnız ESM destekler.

## SMS

```ts
import { createSmsClient } from "@bariscemant/verimor";

const sms = createSmsClient({
  username: process.env.VERIMOR_SMS_USERNAME!,
  password: process.env.VERIMOR_SMS_PASSWORD!,
  sourceAddr: "VERIMOR",
});

const messageId = await sms.send({
  messages: [{ dest: "905001112233", msg: "Siparişiniz hazır." }],
});

const balance = await sms.balance();
const status = await sms.status({ id: Number(messageId) });
console.log({ messageId, balance, status });
```

`sourceAddr`, istemci seviyesindeki varsayılan SMS başlığıdır. Bir gönderimde
farklı başlık kullanmak için çağrı üzerinde `source_addr` verin:

```ts
await sms.send({
  source_addr: "DIGERBASLIK",
  messages: [{ dest: "905001112233", msg: "Merhaba" }],
});
```

Çağrıdaki `source_addr`, istemcideki `sourceAddr` değerinden önce gelir. Her iki
değer de yoksa SDK ağ isteği oluşturmadan `TypeError` fırlatır. Gönderdiğiniz
nesne değiştirilmez.

Durum sorgusunda yalnız `id` veya yalnız `customId` kullanılmalıdır:

```ts
await sms.status({ id: 12345 });
await sms.status({ customId: "siparis-42", dest: "905001112233" });
```

Diğer SMS operasyonları da aynı istemcidedir:

```ts
await sms.listSenderIds();
await sms.listInboundMessages({ limit: 50 });
await sms.listBlacklistEntries({ offset: 0, limit: 100 });
```

## Switch

```ts
import { createSwitchClient } from "@bariscemant/verimor";

const switchClient = createSwitchClient({
  apiKey: process.env.VERIMOR_SWITCH_API_KEY!,
});

const result = await switchClient.originate({
  extension: "100",
  destination: "905001112233",
});

const extensions = await switchClient.listExtensions();
const queues = await switchClient.listQueues();
console.log({ result, extensions, queues });
```

Switch API anahtarı SDK tarafından `key` query parametresine eklenir. Çağrı,
kuyruk, dahili, rehber, faks, kara liste ve raporlama operasyonları doğrudan
`switchClient` üzerinde bulunur.

## WhatsApp

```ts
import { createWhatsAppClient } from "@bariscemant/verimor";

const whatsapp = createWhatsAppClient({
  apiKey: process.env.VERIMOR_WHATSAPP_API_KEY!,
});

const otp = await whatsapp.sendOtp({
  to: "905001112233",
  template_name: "otp",
  language: "tr",
  parameters: ["482913"],
  use_tenant_queue: false,
});

const utility = await whatsapp.sendUtility({
  to: "905001112233",
  template_name: "siparis_hazir",
  language: "tr",
  parameters: ["ABC-42"],
  use_tenant_queue: false,
});

const health = await whatsapp.health();
console.log({ otp, utility, health });
```

WhatsApp API anahtarı her isteğe `x-api-key` header'ı olarak eklenir. Mesaj
endpoint'lerinin başarılı `202` yanıtları normal başarı yanıtı olarak kabul edilir.

## İstemci seçenekleri

| Alan | Açıklama |
| --- | --- |
| `username`, `password` | SMS kimlik bilgileri; gereken endpoint'te body veya query alanına eklenir. |
| `apiKey` | Switch için `key` query parametresi, WhatsApp için `x-api-key` header'ıdır. |
| `sourceAddr` | SMS gönderimlerinde kullanılacak varsayılan başlık. |
| `baseUrl` | Test, proxy veya farklı ortam için servis kök adresi. |
| `timeoutMs` | İstek zaman aşımı; varsayılan `30_000` milisaniyedir. |
| `fetch` | Test veya özel ağ katmanı için `fetch` uyumlu uygulama. |

## Hata yönetimi

Convenience ve façade metotları 2xx dışındaki HTTP yanıtlarında
`VerimorApiError` fırlatır:

```ts
import { VerimorApiError, createSmsClient } from "@bariscemant/verimor";

try {
  await createSmsClient({ username: "user", password: "secret" }).balance();
} catch (error) {
  if (error instanceof VerimorApiError) {
    console.error(error.product); // "sms"
    console.error(error.status);  // ör. 401 veya 429
    console.error(error.body);    // JSON, metin veya null
  } else {
    throw error;
  }
}
```

- Ağ, DNS ve bağlantı hataları native `fetch` hatası olarak kalır.
- Timeout, `AbortSignal.timeout` kaynaklı native `TimeoutError`/fetch hata
  zinciri üzerinden iletilir.
- Bozuk veya beklenmeyen başarılı yanıtlar `TypeError` oluşturabilir.
- SDK otomatik retry yapmaz ve rate limiter içermez.
- SMS gönderimi, OTP ve çağrı başlatma gibi yan etkili işlemleri tekrar etmeden
  önce ilk isteğin sunucuda işlenip işlenmediğini kontrol edin.

## Façade ve `raw` arasındaki fark

Ürün istemcisindeki doğrudan metotlar önerilen yüzeydir. Credentials ekleme,
URL oluşturma, varsayılan timeout ve HTTP hata normalizasyonu bu katmandadır.

`raw`, `openapi-fetch` tarafından sağlanan düşük seviyeli typed istemcidir:

```ts
const response = await sms.raw.GET("/v2/headers", {
  params: {
    query: {
      username: process.env.VERIMOR_SMS_USERNAME!,
      password: process.env.VERIMOR_SMS_PASSWORD!,
    },
  },
});

if (response.error) {
  console.error(response.response.status, response.error);
}
```

`raw` kullanımında endpoint parametreleri ve hata kontrolü size aittir. Generated
OpenAPI tiplerine subpath export'larından erişebilirsiniz:

```ts
import type { paths as SmsPaths } from "@bariscemant/verimor/sms";
import type { paths as SwitchPaths } from "@bariscemant/verimor/switch";
import type { paths as WhatsAppPaths } from "@bariscemant/verimor/whatsapp";
```

## Operasyon kapsamı ve üretim kullanımı

SDK; SMS 13, Switch 52 ve WhatsApp 3 olmak üzere 68 OpenAPI operasyonunu kapsar.
Tam liste [`docs/operations.md`](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md)
dosyasındadır.

Credentials'ı kaynak koda veya loglara yazmayın. Verimor hesabınızın rate limit
ve ücretlendirme koşullarını ayrıca doğrulayın. Bu sürüm canlı Verimor API'leriyle
test edilmediği için production öncesinde kendi hesabınızla kontrollü smoke test
uygulayın.

## English documentation

Unofficial, community-maintained TypeScript SDK for the Verimor SMS, Switch and
WhatsApp APIs. It is distributed as ESM, requires Node.js 22.14 or newer, and
provides typed first-class methods for all 68 documented operations.

> This package is not developed or supported by Verimor. It has extensive
> offline and localhost coverage, but it has not yet been verified against live
> Verimor accounts.

### Installation

```bash
npm install @bariscemant/verimor
```

### SMS

```ts
import { createSmsClient } from "@bariscemant/verimor";

const sms = createSmsClient({
  username: process.env.VERIMOR_SMS_USERNAME!,
  password: process.env.VERIMOR_SMS_PASSWORD!,
  sourceAddr: "VERIMOR",
});

const messageId = await sms.send({
  messages: [{ dest: "905001112233", msg: "Your order is ready." }],
});

console.log(await sms.balance());
console.log(await sms.status({ id: Number(messageId) }));
console.log(await sms.listSenderIds());
```

`sourceAddr` is the default sender header. A per-call `source_addr` overrides
it. Exactly one of `id` and `customId` must be supplied to `status`.

### Switch

```ts
import { createSwitchClient } from "@bariscemant/verimor";

const switchClient = createSwitchClient({
  apiKey: process.env.VERIMOR_SWITCH_API_KEY!,
});

await switchClient.originate({ extension: "100", destination: "905001112233" });
console.log(await switchClient.listExtensions());
console.log(await switchClient.listQueues());
```

The SDK injects the Switch API key as the `key` query parameter.

### WhatsApp

```ts
import { createWhatsAppClient } from "@bariscemant/verimor";

const whatsapp = createWhatsAppClient({
  apiKey: process.env.VERIMOR_WHATSAPP_API_KEY!,
});

await whatsapp.sendOtp({
  to: "905001112233",
  template_name: "otp",
  language: "en",
  parameters: ["482913"],
  use_tenant_queue: false,
});
console.log(await whatsapp.health());
```

The API key is injected as the `x-api-key` header. Successful `202` responses
from message endpoints are treated as normal success responses.

### Configuration, errors, and retries

All clients accept `baseUrl`, `timeoutMs`, and a custom `fetch` implementation.
The default timeout is 30 seconds. The SMS client additionally accepts
`sourceAddr`.

Non-2xx façade responses throw `VerimorApiError` with `product`, `status`, and
`body` fields. Network errors remain native fetch errors. The SDK performs no
automatic retries and includes no rate limiter. Check whether a side-effecting
request reached the service before retrying it yourself.

### Low-level access

Use first-class client methods for normal application code. Use `client.raw`
when you need the underlying `openapi-fetch` response, headers, or generated
path types. Raw calls do not receive the façade's credential injection or error
normalization automatically.

The complete operation table is available in
[`docs/operations.md`](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md).

Licensed under MIT.
