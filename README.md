# Verimor SDK

Verimor SMS, Switch ve WhatsApp API'leri için community tarafından geliştirilen,
MIT lisanslı SDK koleksiyonu. Bu proje Verimor'un resmî ürünü değildir ve Verimor
tarafından desteklendiğini iddia etmez.

> **Canlı API uyarısı:** Bu SDK'lar şu anda yalnızca offline ve localhost HTTP
> testleriyle doğrulanmıştır. Gerçek Verimor servisleri ve canlı credentials ile
> henüz test edilmemiştir. Production kullanımı öncesinde kendi hesabınız ve test
> senaryolarınızla doğrulayın.

## Paketler

| Dil | Paket | Durum | Gereksinim |
| --- | --- | --- | --- |
| TypeScript | `@bariscemant/verimor` | npm'de `0.1.0` | Node.js >=22.14, ESM |
| Python | `verimor-sdk` / import `verimor` | PyPI'da `0.1.0` | Python >=3.11 |
| Go | `github.com/0Baris/verimor-sdk/packages/go` | Kaynak kod mevcut | Go >=1.24 |
| Dart | `verimor_sms`, `verimor_switch`, `verimor_whatsapp` | Deneysel, pub.dev'de değil | Dart >=2.18 |

Generated istemciler toplam 68 OpenAPI operasyonunu kapsar: SMS 13, Switch 52,
WhatsApp 3. Generator ve şemaları işleyen private otomasyon bu repoda bulunmaz;
SDK'yı kullanmak için generator'a ihtiyacınız yoktur.

## Hangi yüzeyi kullanmalıyım?

- TypeScript ve Python'da sık kullanılan işlemler için convenience istemcileri
  kullanın. Credentials, timeout ve HTTP hata normalizasyonunu bunlar yönetir.
- API'nin geri kalan işlemleri için TypeScript'te `client.raw`, Python'da
  `client.raw` ile generated endpoint modüllerini kullanın.
- Go ve Dart paketleri v0.1.0'da doğrudan generated API yüzeyi sunar.
- SMS kimlik doğrulaması `username` ve `password`, Switch `key` query parametresi,
  WhatsApp ise `x-api-key` header'ı kullanır.

## TypeScript hızlı başlangıç

```sh
npm install @bariscemant/verimor
```

```ts
import {
  createSmsClient,
  createSwitchClient,
  createWhatsAppClient,
} from "@bariscemant/verimor";

const sms = createSmsClient({
  username: process.env.VERIMOR_SMS_USERNAME!,
  password: process.env.VERIMOR_SMS_PASSWORD!,
});

const messageId = await sms.send({
  source_addr: "MARKANIZ",
  messages: [{ dest: "905001112233", msg: "Merhaba" }],
});
const balance = await sms.balance();
const status = await sms.status({ id: Number(messageId) });

const switchClient = createSwitchClient({
  apiKey: process.env.VERIMOR_SWITCH_API_KEY!,
});
await switchClient.originate({
  extension: "1001",
  destination: "905001112233",
});

const whatsapp = createWhatsAppClient({
  apiKey: process.env.VERIMOR_WHATSAPP_API_KEY!,
});
await whatsapp.sendOtp({
  to: "905001112233",
  template_name: "otp_dogrulama",
  language: "tr",
  parameters: ["123456"],
});
```

Ayrıntılar: [TypeScript kullanım kılavuzu](packages/typescript/README.md).

## Python hızlı başlangıç

```sh
python -m pip install verimor-sdk
```

```python
import os

from verimor import SmsClient, SwitchClient, WhatsAppClient

with SmsClient(
    os.environ["VERIMOR_SMS_USERNAME"],
    os.environ["VERIMOR_SMS_PASSWORD"],
) as sms:
    message_id = sms.send(
        {
            "source_addr": "MARKANIZ",
            "messages": [{"dest": "905001112233", "msg": "Merhaba"}],
        }
    )
    balance = sms.balance()
    status = sms.status(id=int(message_id))

with SwitchClient(os.environ["VERIMOR_SWITCH_API_KEY"]) as switch:
    switch.originate({"extension": "1001", "destination": "905001112233"})

with WhatsAppClient(os.environ["VERIMOR_WHATSAPP_API_KEY"]) as whatsapp:
    whatsapp.send_otp(
        {
            "to": "905001112233",
            "template_name": "otp_dogrulama",
            "language": "tr",
            "parameters": ["123456"],
        }
    )
```

Async istemciler ve raw endpoint kullanımı için
[Python kullanım kılavuzuna](packages/python/README.md) bakın.

## Go ve Dart

Go paketi typed `ClientWithResponses` istemcileri üretir. Auth ve timeout'u
uygulama yapılandırır; HTTP response body'leri mutlaka kapatılmalıdır.
[Go kullanım kılavuzu](packages/go/README.md).

Dart paketleri henüz pub.dev'de yayımlanmadığı için Git dependency olarak
kullanılır. Ürün bazlı kurulum ve Dio yapılandırması:

- [Dart SMS](packages/dart/sms/README.md)
- [Dart Switch](packages/dart/switch/README.md)
- [Dart WhatsApp](packages/dart/whatsapp/README.md)

## Hata, timeout ve tekrar gönderim davranışı

TypeScript ve Python convenience çağrılarında 2xx dışındaki yanıtlar
`VerimorApiError` üretir. Hata nesnesinde `product`, `status` ve `body` alanları
bulunur. Ağ, DNS, bağlantı ve timeout hataları TypeScript'te native `fetch`,
Python'da `httpx` hatası olarak korunur. Generated raw istemcilerin kendi yanıt
ve hata sözleşmesi vardır; ayrıntılar dil kılavuzlarında gösterilir.

TypeScript ve Python convenience istemcilerinin varsayılan timeout'u 30
saniyedir. Otomatik retry veya rate limiter yoktur. `429` ya da geçici sunucu
hatasından sonra bir gönderimi tekrar denemeden önce operasyonun gerçekleşip
gerçekleşmediğini kontrol edin; aynı SMS, OTP veya çağrı iki kez oluşturulabilir.
Servisin hız sınırlarını ve güvenli retry politikasını uygulamanız yönetmelidir.

Credentials'ı kaynak koda veya repoya yazmayın. Environment variable ya da
secret manager kullanın; örneklerdeki numara, şablon ve başlıkları kendi
hesabınızdaki değerlerle değiştirin.

## Endpoint keşfi

- TypeScript raw tipleri: `@bariscemant/verimor/sms`, `/switch`, `/whatsapp`
- Python generated endpointleri: `verimor.<urun>.generated.api`
- Go paketleri: `packages/go/sms`, `packages/go/switch`, `packages/go/whatsapp`
- Dart generated referansı: her paketin `doc/` dizini

Operasyonların tamamı public repodaki
[`operation-manifest.json`](operation-manifest.json) manifestinde
ürün, method, path ve operation ID ile listelenir.

## Geliştirme

```sh
npm ci
npm test --workspace packages/typescript
npm run typecheck --workspace packages/typescript
npm run build --workspace packages/typescript

uv sync --project packages/python --extra dev --locked
uv run --project packages/python python -m pytest packages/python/tests

cd packages/go && go test ./...
```

Dart için ilgili ürün dizininde `dart pub get`, `dart analyze` ve `dart test`
çalıştırın. Generated `.g.dart` dosyaları repoda hazırdır; tüketicinin yeniden
model generation çalıştırması gerekmez.

Katkı süreci için [CONTRIBUTING.md](CONTRIBUTING.md), sürüm notları için
[CHANGELOG.md](CHANGELOG.md) dosyasına bakın.

## English summary

Community-maintained, unofficial Verimor SDKs for SMS, Cloud Switch and
WhatsApp. TypeScript and Python `0.1.0` packages are available on npm and PyPI;
Go sources are available from this repository, while Dart packages are
experimental and not published to pub.dev. All clients have been verified only
with offline and localhost tests, not against live Verimor services. See the
language-specific READMEs above for installation, authentication, raw endpoint,
timeout and error-handling examples.
