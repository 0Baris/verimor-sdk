# `verimor-sdk`

[English documentation](#english-documentation)

Verimor SMS, Switch ve WhatsApp API'leri için Python SDK'sı. Python 3.11 ve
üzerini destekler; sync ve async istemcilerle üç üründeki 68 operasyonun tamamını
doğrudan metot olarak sunar.

> Bu bağımsız bir topluluk projesidir; Verimor tarafından geliştirilmez veya
> desteklenmez. SDK kapsamlı offline ve localhost testlerinden geçmiştir ancak
> henüz canlı Verimor hesaplarıyla doğrulanmamıştır.

## Kurulum

```bash
python -m pip install verimor-sdk
```

`uv` kullanıyorsanız:

```bash
uv add verimor-sdk
```

Paket adı `verimor-sdk`, import adı `verimor` şeklindedir.

## SMS — sync

```python
import os

from verimor import SmsClient

with SmsClient(
    os.environ["VERIMOR_SMS_USERNAME"],
    os.environ["VERIMOR_SMS_PASSWORD"],
    source_addr="VERIMOR",
) as sms:
    message_id = sms.send(
        {
            "messages": [
                {
                    "dest": "905001112233",
                    "msg": "Siparişiniz hazır.",
                }
            ]
        }
    )

    balance = sms.balance()
    status = sms.status(id=int(message_id))
    sender_ids = sms.list_sender_ids()

print(message_id, balance, status, sender_ids)
```

`source_addr`, istemci seviyesindeki varsayılan SMS başlığıdır. Tek bir çağrıda
farklı başlık kullanabilirsiniz:

```python
with SmsClient("user", "secret", source_addr="VERIMOR") as sms:
    sms.send(
        {
            "source_addr": "DIGERBASLIK",
            "messages": [{"dest": "905001112233", "msg": "Merhaba"}],
        }
    )
```

Çağrıdaki `source_addr`, constructor'daki değerden önce gelir. Her iki değer de
yoksa SDK ağ isteği yapmadan `TypeError` fırlatır. Caller tarafından verilen
mapping değiştirilmez.

Durum sorgusunda yalnız `id` veya yalnız `custom_id` kullanılmalıdır:

```python
with SmsClient("user", "secret") as sms:
    sms.status(id=12345)
    sms.status(custom_id="siparis-42", dest="905001112233")
```

## SMS — async

```python
import asyncio
import os

from verimor import AsyncSmsClient


async def main() -> None:
    async with AsyncSmsClient(
        os.environ["VERIMOR_SMS_USERNAME"],
        os.environ["VERIMOR_SMS_PASSWORD"],
        source_addr="VERIMOR",
    ) as sms:
        message_id = await sms.send(
            {
                "messages": [
                    {"dest": "905001112233", "msg": "Siparişiniz hazır."}
                ]
            }
        )
        print(await sms.status(id=int(message_id)))


asyncio.run(main())
```

Sync istemcileri `with`, async istemcileri `async with` içinde kullanın. Context
manager hem normal çıkışta hem exception durumunda alttaki `httpx` kaynaklarını
kapatır.

## Switch

```python
import os

from verimor import SwitchClient

with SwitchClient(os.environ["VERIMOR_SWITCH_API_KEY"]) as switch:
    result = switch.originate(
        {
            "extension": "100",
            "destination": "905001112233",
        }
    )
    extensions = switch.list_extensions()
    queues = switch.list_queues()

print(result, extensions, queues)
```

Async kullanımda `AsyncSwitchClient` seçilir ve aynı metotlar `await` edilir.
Switch API anahtarı SDK tarafından `key` query parametresine eklenir.

## WhatsApp

```python
import os

from verimor import WhatsAppClient

with WhatsAppClient(os.environ["VERIMOR_WHATSAPP_API_KEY"]) as whatsapp:
    otp = whatsapp.send_otp(
        {
            "to": "905001112233",
            "template_name": "otp",
            "language": "tr",
            "parameters": ["482913"],
            "use_tenant_queue": False,
        }
    )

    utility = whatsapp.send_utility(
        {
            "to": "905001112233",
            "template_name": "siparis_hazir",
            "language": "tr",
            "parameters": ["ABC-42"],
            "use_tenant_queue": False,
        }
    )

    health = whatsapp.health()

print(otp, utility, health)
```

Async karşılıkları `AsyncWhatsAppClient.send_otp`, `send_utility` ve `health`
metotlarıdır. API anahtarı her isteğe `x-api-key` header'ı olarak eklenir. Mesaj
endpoint'lerinin başarılı `202` yanıtları normal başarı yanıtıdır.

## Constructor seçenekleri

```python
import httpx

client = SmsClient(
    "kullanici",
    "parola",
    source_addr="VERIMOR",
    base_url="http://127.0.0.1:8080",
    timeout=10.0,
    transport=httpx.MockTransport(handler),
)
```

| Alan | Açıklama |
| --- | --- |
| `username`, `password` | SMS kimlik bilgileri. |
| `api_key` | Switch veya WhatsApp API anahtarı. |
| `source_addr` | SMS gönderimleri için varsayılan başlık. |
| `base_url` | Test, proxy veya farklı ortam için servis kök adresi. |
| `timeout` | Saniye cinsinden zaman aşımı; varsayılan `30.0`. |
| `transport` | Test veya özel ağ davranışı için `httpx` transport'u. |

İstemciyi context manager dışında kullanırsanız underlying HTTP istemcisini
`client.raw.get_httpx_client().close()` veya async istemcide
`await client.raw.get_async_httpx_client().aclose()` ile kapatın.

## Hata yönetimi

Façade metotları 2xx dışındaki HTTP yanıtlarında `VerimorApiError` fırlatır:

```python
from verimor import SmsClient, VerimorApiError

try:
    with SmsClient("user", "secret") as sms:
        print(sms.balance())
except VerimorApiError as error:
    print(error.product)  # "sms"
    print(error.status)   # ör. 401 veya 429
    print(error.body)     # dict, list, str veya None
```

- Ağ, DNS ve bağlantı hataları native `httpx` exception'ları olarak kalır.
- Timeout hataları `httpx.TimeoutException` ailesinden gelir.
- Bozuk veya beklenmeyen başarılı yanıtlar `TypeError` oluşturabilir.
- SDK otomatik retry yapmaz ve rate limiter içermez.
- Yan etkili bir çağrıyı tekrar etmeden önce ilk isteğin servis tarafından
  işlenip işlenmediğini kontrol edin.

## Generated `raw` istemci

Uygulama kodunda doğrudan façade metotlarını kullanmanız önerilir. Her wrapper'ın
`raw` alanı `openapi-python-client` tarafından üretilen istemciyi verir. Düşük
seviyeli response, generated model veya endpoint modülü gerektiğinde kullanın.

SMS raw endpoint'lerinde credentials açıkça verilir:

```python
from verimor import SmsClient
from verimor.sms.generated.api.basliklar import get_v2_headers

with SmsClient("user", "secret") as sms:
    headers = get_v2_headers.sync(
        client=sms.raw,
        username="user",
        password="secret",
    )
```

Switch ve WhatsApp raw istemcileri ilgili API anahtarını taşır:

```python
from verimor import SwitchClient, WhatsAppClient
from verimor.switch.generated.api.kuyruk_yonetimi import get_queues
from verimor.whatsapp.generated.api.health import health_health_get

with SwitchClient("switch-key") as switch:
    queues = get_queues.sync(client=switch.raw)

with WhatsAppClient("whatsapp-key") as whatsapp:
    response = health_health_get.sync_detailed(client=whatsapp.raw)
    print(response.status_code, response.parsed)
```

Async generated çağrılarda aynı modülün `asyncio()` veya
`asyncio_detailed()` fonksiyonunu kullanın. Raw çağrılar façade katmanının
`VerimorApiError` normalizasyonunu kullanmaz; generated endpoint'in kendi return
ve hata sözleşmesini izler.

## Operasyon kapsamı ve üretim kullanımı

SDK; SMS 13, Switch 52 ve WhatsApp 3 olmak üzere 68 OpenAPI operasyonunu kapsar.
Tam liste [`docs/operations.md`](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md)
dosyasındadır.

Credentials'ı kaynak koda veya loglara yazmayın. Verimor hesabınızın rate limit
ve ücretlendirme koşullarını ayrıca doğrulayın. Bu sürüm canlı Verimor API'leriyle
test edilmediği için production öncesinde kendi hesabınızla kontrollü smoke test
uygulayın.

## English documentation

Unofficial, community-maintained Python SDK for the Verimor SMS, Switch and
WhatsApp APIs. It supports Python 3.11 or newer and provides synchronous and
asynchronous first-class methods for all 68 documented operations.

> This package is not developed or supported by Verimor. It has extensive
> offline and localhost coverage, but it has not yet been verified against live
> Verimor accounts.

### Installation

```bash
python -m pip install verimor-sdk
```

The distribution is named `verimor-sdk`; the import package is `verimor`.

### Synchronous SMS client

```python
import os

from verimor import SmsClient

with SmsClient(
    os.environ["VERIMOR_SMS_USERNAME"],
    os.environ["VERIMOR_SMS_PASSWORD"],
    source_addr="VERIMOR",
) as sms:
    message_id = sms.send(
        {"messages": [{"dest": "905001112233", "msg": "Your order is ready."}]}
    )
    print(sms.balance())
    print(sms.status(id=int(message_id)))
    print(sms.list_sender_ids())
```

`source_addr` supplied to `send` overrides the client default. Exactly one of
`id` and `custom_id` must be supplied to `status`.

### Asynchronous SMS client

```python
import asyncio
import os

from verimor import AsyncSmsClient


async def main() -> None:
    async with AsyncSmsClient(
        os.environ["VERIMOR_SMS_USERNAME"],
        os.environ["VERIMOR_SMS_PASSWORD"],
        source_addr="VERIMOR",
    ) as sms:
        print(await sms.balance())


asyncio.run(main())
```

Use sync clients with `with` and async clients with `async with` so their
underlying `httpx` resources are closed on both normal and exceptional exits.

### Switch

```python
from verimor import SwitchClient

with SwitchClient("switch-key") as switch:
    result = switch.originate(
        {"extension": "100", "destination": "905001112233"}
    )
    print(result)
    print(switch.list_extensions())
```

The SDK injects the API key as the `key` query parameter.

### WhatsApp

```python
from verimor import WhatsAppClient

with WhatsAppClient("whatsapp-key") as whatsapp:
    result = whatsapp.send_otp(
        {
            "to": "905001112233",
            "template_name": "otp",
            "language": "en",
            "parameters": ["482913"],
            "use_tenant_queue": False,
        }
    )
    print(result)
```

The API key is injected as the `x-api-key` header. Successful `202` message
responses are treated as normal success responses.

### Configuration, errors, and cleanup

All clients accept `base_url`, `timeout`, and an optional `httpx` `transport`.
The default timeout is 30 seconds. SMS clients additionally accept
`source_addr`.

Non-2xx façade responses raise `VerimorApiError` with `product`, `status`, and
`body` attributes. Network and timeout failures remain native `httpx`
exceptions. The SDK performs no automatic retries and includes no rate limiter.

Use `client.raw` for generated endpoint modules, models, detailed responses, or
headers. Raw calls follow `openapi-python-client` semantics and do not receive
the façade's error normalization automatically.

The complete operation table is available in
[`docs/operations.md`](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md).

Licensed under MIT.
