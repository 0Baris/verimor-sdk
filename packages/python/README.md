# verimor-sdk

Verimor SMS, Switch ve WhatsApp API'leri için Python 3.11+ community SDK'sı.
Paket sync/async client'lar, `attrs` tabanlı generated modeller ve 68 OpenAPI
operasyonunun tamamı için doğrudan metot + raw erişim sunar. Verimor'un resmî
SDK'sı değildir.

> Paket offline ve localhost testleriyle doğrulanmıştır; canlı Verimor hesabıyla
> henüz doğrulanmamıştır.

## 0.2.0 public façade

Credentials client'a bir kez verilir. SMS 13, Switch 52 ve WhatsApp 3 operasyonun
tamamı sync/async client üzerinde snake_case metotlardır. Tam liste:
[`docs/operations.md`](../../docs/operations.md).

```python
with SmsClient("SMS_USER", "SMS_PASSWORD", source_addr="VERIMOR") as sms:
    sms.send({"messages": [{"dest": "905001112233", "msg": "Merhaba"}]})
    sender_ids = sms.list_sender_ids()

with SwitchClient("SWITCH_KEY") as switch:
    extensions = switch.list_extensions()

with WhatsAppClient("WHATSAPP_KEY") as whatsapp:
    health = whatsapp.health()
```

## Kurulum

```sh
python -m pip install verimor-sdk
```

Başka bir paket yöneticisi kullanıyorsanız dependency adı yine `verimor-sdk`,
Python import adı `verimor` olur.

```python
from verimor import SmsClient
```

Credentials'ı kaynak koda yazmak yerine environment variable veya secret manager
kullanın.

## SMS — sync

```python
import os

from verimor import SmsClient

with SmsClient(
    os.environ["VERIMOR_SMS_USERNAME"],
    os.environ["VERIMOR_SMS_PASSWORD"],
) as sms:
    message_id = sms.send(
        {
            "source_addr": "MARKANIZ",
            "messages": [
                {"dest": "905001112233", "msg": "Siparişiniz hazırlanıyor."},
                {"dest": "905009998877", "msg": "Siparişiniz hazırlanıyor."},
            ],
        }
    )

    balance = sms.balance()
    by_id = sms.status(id=int(message_id))
    by_custom_id = sms.status(custom_id="siparis-42")
    one_recipient = sms.status(id=int(message_id), dest="905001112233")
```

`send()` credentials'ı body'ye ekler ve başarılı yanıtı kırpılmış `str` olarak
döndürür. `balance()` `float`, `status()` ise decode edilmiş JSON döndürür.
`status()` çağrısında `id` veya `custom_id` alanlarından tam olarak biri
verilmelidir.

## SMS — async

```python
import asyncio
import os

from verimor import AsyncSmsClient


async def main() -> None:
    async with AsyncSmsClient(
        os.environ["VERIMOR_SMS_USERNAME"],
        os.environ["VERIMOR_SMS_PASSWORD"],
    ) as sms:
        message_id = await sms.send(
            {
                "source_addr": "MARKANIZ",
                "messages": [{"dest": "905001112233", "msg": "Merhaba"}],
            }
        )
        print(await sms.status(id=int(message_id)))


asyncio.run(main())
```

Sync istemcileri `with`, async istemcileri `async with` içinde kullanın. Context
manager normal çıkışta da exception durumunda da alttaki `httpx` kaynaklarını
kapatır.

## Switch

```python
import os

from verimor import SwitchClient

with SwitchClient(os.environ["VERIMOR_SWITCH_API_KEY"]) as switch:
    result = switch.originate(
        {
            "extension": "1001",
            "destination": "905001112233",
        }
    )
    print(result)
```

`originate()` API key'i `key` query parametresine ekler ve başarılı yanıtı
kırpılmış `str` olarak döndürür. Async karşılığı aynı sözleşmeye sahiptir:

```python
from verimor import AsyncSwitchClient

async with AsyncSwitchClient(os.environ["VERIMOR_SWITCH_API_KEY"]) as switch:
    result = await switch.originate(
        {"extension": "1001", "destination": "905001112233"}
    )
```

## WhatsApp

```python
import os

from verimor import WhatsAppClient

with WhatsAppClient(os.environ["VERIMOR_WHATSAPP_API_KEY"]) as whatsapp:
    otp = whatsapp.send_otp(
        {
            "to": "905001112233",
            "template_name": "otp_dogrulama",
            "language": "tr",
            "parameters": ["123456"],
            "use_tenant_queue": False,
        }
    )

    utility = whatsapp.send_utility(
        {
            "to": "905001112233",
            "template_name": "siparis_hazir",
            "language": "tr",
            "parameters": ["42"],
        }
    )
```

İki metot da `x-api-key` header'ını ekler ve JSON object yanıtını `dict` olarak
döndürür. Async kullanım:

```python
from verimor import AsyncWhatsAppClient

async with AsyncWhatsAppClient(os.environ["VERIMOR_WHATSAPP_API_KEY"]) as whatsapp:
    otp = await whatsapp.send_otp(
        {
            "to": "905001112233",
            "template_name": "otp_dogrulama",
            "parameters": ["123456"],
        }
    )
```

## Constructor seçenekleri

```python
SmsClient(
    username,
    password,
    base_url="https://sms.verimor.com.tr",
    timeout=30.0,
    transport=None,
)

SwitchClient(
    api_key,
    base_url="https://api.bulutsantralim.com",
    timeout=30.0,
    transport=None,
)

WhatsAppClient(
    api_key,
    base_url="https://wapi.verimor.com.tr",
    timeout=30.0,
    transport=None,
)
```

Async sınıflar aynı parametreleri kabul eder; yalnız `transport` bir
`httpx.AsyncBaseTransport` olmalıdır. `base_url` test sunucusu veya proxy,
`transport` ise `httpx.MockTransport` gibi özel transport'lar için kullanılabilir.

## Raw generated endpointler

Her wrapper'ın `raw` alanı `openapi-python-client` tarafından üretilen istemcidir.
Endpoint modülleri ürün altında tag'e göre grupludur. Örneğin SMS başlıklarını
listelemek için credentials'ı endpoint'e açıkça verin:

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

Switch raw istemcisinde `key` auth otomatik uygulanır:

```python
from verimor import SwitchClient
from verimor.switch.generated.api.kuyruk_yonetimi import get_queues

with SwitchClient("switch-key") as switch:
    queues = get_queues.sync(client=switch.raw)
```

WhatsApp raw istemcisinde `x-api-key` header'ı otomatik uygulanır:

```python
from verimor import WhatsAppClient
from verimor.whatsapp.generated.api.health import health_health_get

with WhatsAppClient("whatsapp-key") as whatsapp:
    response = health_health_get.sync_detailed(client=whatsapp.raw)
    print(response.status_code, response.parsed)
```

Async generated çağrılarda aynı modülün `asyncio()` veya
`asyncio_detailed()` fonksiyonunu kullanın:

```python
async with AsyncSwitchClient("switch-key") as switch:
    queues = await get_queues.asyncio(client=switch.raw)
```

`sync()`/`asyncio()` parse edilmiş sonucu, `sync_detailed()`/
`asyncio_detailed()` status, headers ve content içeren generated `Response`
nesnesini verir. Raw çağrılar convenience katmanının `VerimorApiError`
normalizasyonunu kullanmaz; generated endpoint'in return ve hata sözleşmesini
izler.

## Hata yönetimi

```python
import httpx

from verimor import VerimorApiError

try:
    with SmsClient("user", "secret") as sms:
        sms.balance()
except VerimorApiError as error:
    print(error.product)  # "sms" | "switch" | "whatsapp"
    print(error.status)   # ör. 401 veya 429
    print(error.body)     # JSON, text veya boş body
except httpx.HTTPError:
    # DNS, bağlantı kopması, timeout ve diğer native httpx hataları
    raise
```

`VerimorApiError` façade metotlarının 2xx dışındaki HTTP yanıtlarında
oluşur. Ağ hataları değiştirilmeden `httpx` exception'ı olarak bırakılır.
Beklenmeyen başarılı response içeriği `TypeError` veya JSON decode hatası
oluşturabilir.

Otomatik retry ve rate limiter yoktur. Timeout varsayılan olarak 30 saniyedir.
Özellikle mesaj, OTP ve çağrı oluşturma operasyonlarını bir hata sonrasında
körlemesine tekrarlamayın; ilk istek sunucuda gerçekleşmiş olabilir. `429`
yanıtları ve güvenli retry/backoff politikasını uygulamanız yönetmelidir.

## Public API özeti

- Sync: `SmsClient`, `SwitchClient`, `WhatsAppClient`
- Async: `AsyncSmsClient`, `AsyncSwitchClient`, `AsyncWhatsAppClient`
- SMS 13, Switch 52 ve WhatsApp 3 operasyon için sync/async client metotları
- Tüm OpenAPI endpointleri için `client.raw`

## English summary

Install `verimor-sdk` on Python 3.11+ and import clients from `verimor`. Sync and
async clients support first-class methods for all 68 SMS, Switch and WhatsApp
operations, a 30-second
default timeout, context-managed resource cleanup and `VerimorApiError` for
non-2xx façade responses. Use `client.raw` with generated endpoint modules
for the complete OpenAPI surface. Network errors remain native `httpx` errors;
there are no automatic retries. Live Verimor services have not yet been tested.
