# Verimor SDK

[English](README.en.md)

Verimor SMS, Switch ve WhatsApp API'leri için TypeScript, Python, Go ve Dart
istemcileri sunan açık kaynak topluluk projesi.

Bu repo yalnız kullanıma hazır SDK kaynaklarını, testleri ve dokümantasyonu
içerir. OpenAPI şemalarını indiren ve paketleri üreten otomasyon ayrı, private
bir repoda tutulur. SDK'yı kurmak veya kullanmak için generator'a ihtiyacınız
yoktur.

> **Canlı API uyarısı:** SDK'lar offline fixture'lar, mock transport'lar ve
> localhost HTTP sunucularıyla doğrulanmıştır. Henüz gerçek Verimor hesapları ve
> canlı servislerle uçtan uca test edilmemiştir. Production kullanımı öncesinde
> kendi hesabınızla kontrollü doğrulama yapın.

## Paketler

| Dil | Paket | Gereksinim | Yayın durumu |
| --- | --- | --- | --- |
| TypeScript | [`@bariscemant/verimor`](https://www.npmjs.com/package/@bariscemant/verimor) | Node.js >=22.14, ESM | npm `0.2.1` |
| Python | [`verimor-sdk`](https://pypi.org/project/verimor-sdk/) / import `verimor` | Python >=3.11 | PyPI `0.2.1` |
| Go | `github.com/0Baris/verimor-sdk/packages/go` | Go >=1.24 | module tag `v0.2.1` |
| Dart / Flutter | `verimor_sms`, `verimor_switch`, `verimor_whatsapp` | Dart >=2.18 | kaynak mevcut, pub.dev'de değil |

Toplam kapsam 68 operasyondur: SMS 13, Switch 52 ve WhatsApp 3. Tam metot ve
HTTP path tablosu [`docs/operations.md`](docs/operations.md) içindedir.

## Hangi istemci yüzeyini kullanmalıyım?

Normal uygulama kodunda ürün istemcisindeki doğrudan metotları kullanın:

- SMS: `send`, `balance`, `status`, `listSenderIds` / `list_sender_ids` ve diğerleri
- Switch: `originate`, `listExtensions` / `list_extensions` ve diğerleri
- WhatsApp: `sendOtp` / `send_otp`, `sendUtility` / `send_utility`, `health`

Bu façade katmanı credentials'ı doğru body, query veya header konumuna ekler;
varsayılan timeout'u uygular ve HTTP hatalarını tutarlı biçime getirir.

Generated response nesnesi, header veya düşük seviyeli endpoint erişimi
gerektiğinde `raw` yüzeyini kullanın. Raw çağrılar, façade davranışlarını her
dilde otomatik olarak devralmayabilir.

## TypeScript hızlı başlangıç

```bash
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
  sourceAddr: "VERIMOR",
});

await sms.send({
  messages: [{ dest: "905001112233", msg: "Siparişiniz hazır." }],
});
console.log(await sms.balance());

const switchClient = createSwitchClient({
  apiKey: process.env.VERIMOR_SWITCH_API_KEY!,
});
console.log(await switchClient.listExtensions());

const whatsapp = createWhatsAppClient({
  apiKey: process.env.VERIMOR_WHATSAPP_API_KEY!,
});
await whatsapp.sendOtp({
  to: "905001112233",
  template_name: "otp",
  language: "tr",
  parameters: ["482913"],
  use_tenant_queue: false,
});
```

Ayrıntılı TypeScript rehberi: [`packages/typescript/README.md`](packages/typescript/README.md)

## Python hızlı başlangıç

```bash
python -m pip install verimor-sdk
```

```python
import os

from verimor import SmsClient, SwitchClient, WhatsAppClient

with SmsClient(
    os.environ["VERIMOR_SMS_USERNAME"],
    os.environ["VERIMOR_SMS_PASSWORD"],
    source_addr="VERIMOR",
) as sms:
    sms.send(
        {"messages": [{"dest": "905001112233", "msg": "Siparişiniz hazır."}]}
    )
    print(sms.balance())

with SwitchClient(os.environ["VERIMOR_SWITCH_API_KEY"]) as switch:
    print(switch.list_extensions())

with WhatsAppClient(os.environ["VERIMOR_WHATSAPP_API_KEY"]) as whatsapp:
    print(whatsapp.health())
```

Her ürün için `AsyncSmsClient`, `AsyncSwitchClient` ve `AsyncWhatsAppClient`
karşılıkları da vardır.

Ayrıntılı Python rehberi: [`packages/python/README.md`](packages/python/README.md)

## Go

```bash
go get github.com/0Baris/verimor-sdk/packages/go@v0.2.1
```

Go paketi generated istemci davranışını korur. Timeout'u `http.Client`, tek
çağrılık iptali `context.Context` ile yönetirsiniz. HTTP status ve response
body lifecycle kontrolü çağırana aittir.

Ayrıntılı Go rehberi: [`packages/go/README.md`](packages/go/README.md)

## Dart / Flutter

Dart paketlerinin kaynakları ve testleri repoda bulunmaktadır ancak henüz
pub.dev'de yayımlanmamıştır. Git dependency ile production kullanımı önerilmez;
paket isimleri ve yayın politikası ilk pub.dev sürümüne kadar değişebilir.

Ayrıntılı Dart rehberi: [`packages/dart/README.md`](packages/dart/README.md)

## Authentication

| Ürün | Credential | Yerleşim |
| --- | --- | --- |
| SMS | `username`, `password` | Endpoint'e göre JSON body veya query parametresi |
| Switch | API key | `key` query parametresi |
| WhatsApp | API key | `x-api-key` header'ı |

Credentials'ı her çağrıda tekrar vermek gerekmez; ürün client'ı bunları saklar
ve ilgili operasyonun beklediği yere ekler. `raw` kullanımında dil ve endpoint
davranışına göre credentials'ı açıkça vermeniz gerekebilir.

## Timeout, hata ve retry davranışı

- TypeScript, Python ve Dart façade istemcilerinde varsayılan timeout 30 saniyedir.
- TypeScript, Python ve Dart 2xx dışındaki façade yanıtlarını
  `VerimorApiError` ile temsil eder.
- Ağ hataları ilgili runtime'ın native hata türü olarak kalır: TypeScript'te
  `fetch`, Python'da `httpx`, Dart'ta `DioException`.
- Go generated istemcisi otomatik timeout veya HTTP hata normalizasyonu eklemez.
- Hiçbir dil otomatik retry veya rate limiter eklemez.
- Timeout ya da bağlantı kopması, isteğin sunucuya hiç ulaşmadığını garanti
  etmez. SMS, OTP ve çağrı oluşturma gibi işlemleri körlemesine tekrarlamayın.

## `source_addr` kullanımı

SMS başlığı istemci oluşturulurken varsayılan olarak verilebilir:

- TypeScript: `sourceAddr: "VERIMOR"`
- Python: `source_addr="VERIMOR"`
- Dart: `sourceAddr: 'VERIMOR'`

Tek çağrıdaki `source_addr` değeri varsayılanı ezer. Go generated istemcisinde
alan doğrudan ilgili request modeline yazılır.

## Güvenlik

- Credentials'ı kaynak koda, exception mesajlarına veya CI loglarına yazmayın.
- Environment variable yalnız başlangıç seviyesinde bir örnektir; production'da
  secret manager kullanın.
- Özel `baseUrl`, `fetch`, `transport`, `Dio` veya `http.Client` verirken TLS,
  proxy ve loglama davranışını kendiniz denetleyin.
- Gerçek Verimor credentials hiçbir repository testinde veya CI job'ında
  kullanılmaz.

## Modüler generated kaynaklar

TypeScript ve Go generated kodu ürün/tag/model bazında küçük dosyalara ayrılır;
hiçbir generated dosya **800 fiziksel satırı** geçmez. Toplam generated kodun
belirgin biçimde azalması beklenmez. Amaç dev tek dosyalar yerine okunabilir,
kararlı ve incelemesi kolay diff'ler üretmektir.

Bu yalnız kaynak yerleşimi değişikliğidir. TypeScript'te
`@bariscemant/verimor/sms`, `/switch`, `/whatsapp` type import'ları; Go'da kök,
`/sms`, `/switch` ve `/whatsapp` import path'leri ile exported semboller aynı
kalır. Generated dosyaları elle düzenlemeyin. Regeneration private generator
otomasyonu tarafından yapılır; bu public repoda yalnız sonucu doğrulayın:

```bash
npm run typecheck --workspace packages/typescript
npm test --workspace packages/typescript
(cd packages/go && go test -race ./... && go vet ./...)
```

## Geliştirme ve test

```bash
npm ci
npm test --workspace packages/typescript
uv sync --project packages/python --extra dev --locked
uv run --project packages/python pytest
(cd packages/go && go test ./...)
```

CI; TypeScript typecheck/test/build/pack, Python Ruff/mypy/pytest/build, Go test
ve consumer smoke testleri ile üç Dart paketinin analyze/test adımlarını
çalıştırır. Testler canlı Verimor servislerine istek göndermez.

Katkı rehberi: [`CONTRIBUTING.md`](CONTRIBUTING.md)

## Lisans ve destek durumu

MIT lisanslıdır. Bu proje Verimor'un resmî SDK'sı değildir. Issue açarken secret,
telefon numarası, mesaj içeriği veya müşteri verisi paylaşmayın.
