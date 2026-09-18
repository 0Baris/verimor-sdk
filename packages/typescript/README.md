# @bariscemant/verimor

Verimor SMS, Switch ve WhatsApp API'leri için strict TypeScript, ESM ve typed
OpenAPI istemcileri. Bu paket community tarafından geliştirilir; Verimor'un
resmî SDK'sı değildir.

> Paket offline ve localhost testleriyle doğrulanmıştır; canlı Verimor hesabıyla
> henüz doğrulanmamıştır.

## 0.2.0 public façade

SMS 13, Switch 52 ve WhatsApp 3 operasyonun tamamı ürün client'larında doğrudan
metottur; credentials her çağrıda tekrar verilmez. Tam liste:
[`docs/operations.md`](../../docs/operations.md). `raw` düşük seviye kullanım için
korunur.

```ts
const sms = createSmsClient({
  username: "SMS_USER", password: "SMS_PASSWORD", sourceAddr: "VERIMOR",
});
await sms.send({ messages: [{ dest: "905001112233", msg: "Merhaba" }] });
await sms.listSenderIds();

await createSwitchClient({ apiKey: "SWITCH_KEY" }).listExtensions();
await createWhatsAppClient({ apiKey: "WHATSAPP_KEY" }).health();
```

## Kurulum

Node.js 22.14 veya daha yeni bir sürüm gerekir.

```sh
npm install @bariscemant/verimor
```

Paket yalnız ESM sunar:

```ts
import { createSmsClient } from "@bariscemant/verimor";
```

## SMS

### İstemci oluşturma ve mesaj gönderme

```ts
import { createSmsClient } from "@bariscemant/verimor";

const sms = createSmsClient({
  username: process.env.VERIMOR_SMS_USERNAME!,
  password: process.env.VERIMOR_SMS_PASSWORD!,
  // timeoutMs: 30_000,
  // baseUrl: "https://sms.verimor.com.tr",
});

const messageId = await sms.send({
  source_addr: "MARKANIZ",
  messages: [
    { dest: "905001112233", msg: "Siparişiniz hazırlanıyor." },
    { dest: "905009998877", msg: "Siparişiniz hazırlanıyor." },
  ],
});
```

`send()` credentials'ı request body'ye otomatik ekler ve başarılı yanıtı kırpılmış
metin olarak döndürür. Çağıranın verdiği body değiştirilmez.

### Bakiye ve durum

```ts
const balance = await sms.balance();

const byVerimorId = await sms.status({ id: 123456 });
const byCustomId = await sms.status({ customId: "siparis-42" });
const oneRecipient = await sms.status({ id: 123456, dest: "905001112233" });
```

`status()` için `id` veya `customId` alanlarından tam olarak biri zorunludur.
İkisini birlikte vermek TypeScript tarafından, dinamik JavaScript kullanımında
ise runtime kontrolü tarafından reddedilir.

### SMS raw endpoint

13 SMS operasyonunun tamamı `sms` üzerinde metottur; aynı endpointlere `raw`
üzerinden de erişilebilir.
SMS raw çağrılarında `username` ve `password` ilgili endpoint'in query veya body
alanına açıkça verilmelidir:

```ts
const { data, error, response } = await sms.raw.GET("/v2/headers", {
  params: {
    query: {
      username: process.env.VERIMOR_SMS_USERNAME!,
      password: process.env.VERIMOR_SMS_PASSWORD!,
    },
  },
});

if (error) {
  console.error(response.status, error);
} else {
  console.log(data);
}
```

Raw path ve model tipleri ayrıca subpath export'larından alınabilir:

```ts
import type { components, paths } from "@bariscemant/verimor/sms";
```

## Switch

```ts
import { createSwitchClient } from "@bariscemant/verimor";

const switchClient = createSwitchClient({
  apiKey: process.env.VERIMOR_SWITCH_API_KEY!,
});

const result = await switchClient.originate({
  extension: "1001",
  destination: "905001112233",
});
console.log(result);
```

`originate()` anahtarı `key` query parametresine ekler ve başarılı yanıtı metin
olarak döndürür. Diğer 51 Switch işlemi de `switchClient` üzerinde doğrudan metot
olarak bulunur. `raw` üzerindeki
tüm isteklerde API key middleware tarafından otomatik eklenir:

```ts
const { data, error, response } = await switchClient.raw.GET("/queues");

if (error) {
  console.error(response.status, error);
} else {
  console.log(data);
}
```

Switch generated tipleri:

```ts
import type { components, paths } from "@bariscemant/verimor/switch";
```

## WhatsApp

```ts
import { createWhatsAppClient } from "@bariscemant/verimor";

const whatsapp = createWhatsAppClient({
  apiKey: process.env.VERIMOR_WHATSAPP_API_KEY!,
});

const otp = await whatsapp.sendOtp({
  to: "905001112233",
  template_name: "otp_dogrulama",
  language: "tr",
  parameters: ["123456"],
  use_tenant_queue: false,
});

const utility = await whatsapp.sendUtility({
  to: "905001112233",
  template_name: "siparis_hazir",
  language: "tr",
  parameters: ["42"],
});
```

Her iki metot `x-api-key` header'ını otomatik ekler ve JSON object yanıtı döndürür.
Health dahil üç WhatsApp operasyonu client üzerinde ve raw istemcide kullanılabilir:

```ts
const { data, error, response } = await whatsapp.raw.GET("/health");
```

WhatsApp generated tipleri:

```ts
import type { components, paths } from "@bariscemant/verimor/whatsapp";
```

## Ortak seçenekler

Her factory aşağıdaki opsiyonel alanları kabul eder:

| Alan | Açıklama |
| --- | --- |
| `baseUrl` | Test sunucusu, proxy veya farklı API origin'i |
| `timeoutMs` | İstek timeout'u; varsayılan `30_000` ms |
| `fetch` | Özel `fetch` implementasyonu veya test adapter'ı |

```ts
const localSms = createSmsClient({
  username: "user",
  password: "secret",
  baseUrl: "http://127.0.0.1:8080",
  timeoutMs: 5_000,
  fetch: globalThis.fetch,
});
```

Factory oluşturulduktan sonra options nesnesini veya credentials'ı değiştirmek
istemciyi değiştirmez. Her istemci kendi credentials kopyasını kullanır.

## Hata yönetimi

```ts
import { VerimorApiError } from "@bariscemant/verimor";

try {
  await sms.balance();
} catch (error) {
  if (error instanceof VerimorApiError) {
    console.error(error.product); // "sms" | "switch" | "whatsapp"
    console.error(error.status);  // ör. 401 veya 429
    console.error(error.body);    // JSON, text veya boş body
  } else {
    // DNS, bağlantı, AbortSignal/timeout ve native fetch hataları
    throw error;
  }
}
```

`VerimorApiError` façade metotlarının 2xx dışı HTTP yanıtları için
kullanılır. Raw `openapi-fetch` çağrıları `data`, `error` ve `response` döndürür.
Bozuk veya beklenmeyen başarılı response tipi `TypeError` ya da JSON parse hatası
oluşturabilir.

Paket otomatik retry ve rate limiter eklemez. Özellikle SMS, OTP ve çağrı
oluşturma isteklerini körlemesine tekrarlamayın; ilk istek sunucuda gerçekleşmiş
olabilir. `429` yanıtlarını servisin rate-limit politikasına göre uygulamanız
yönetmelidir.

## Public API özeti

```ts
createSmsClient({ username, password, baseUrl?, timeoutMs?, fetch? })
createSwitchClient({ apiKey, baseUrl?, timeoutMs?, fetch? })
createWhatsAppClient({ apiKey, baseUrl?, timeoutMs?, fetch? })
```

- SMS 13, Switch 52 ve WhatsApp 3 operasyon için doğrudan client metotları
- Her üründe tüm OpenAPI işlemleri için typed `raw`

## English summary

Install `@bariscemant/verimor` on Node.js 22.14+ and create an SMS, Switch or
WhatsApp client from the package root. Convenience methods add credentials,
apply a 30-second default timeout and throw `VerimorApiError` for non-2xx HTTP
responses. All 68 operations have first-class client methods; use each client's
typed `raw` property when low-level generated access is needed.
There are no automatic retries. This community SDK has not yet been tested
against live Verimor services.
