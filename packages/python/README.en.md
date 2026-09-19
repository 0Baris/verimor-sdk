# `verimor-sdk` — English guide

[Türkçe / bilingual PyPI page](README.md)

Unofficial Python SDK for the Verimor SMS, Switch, and WhatsApp APIs. It
requires Python 3.11 or newer and provides sync and async first-class methods
for all 68 documented operations (13 SMS, 52 Switch, 3 WhatsApp).

> Community-maintained, not developed or supported by Verimor. Tested offline
> and against localhost, but not with live Verimor accounts.

## Install

```bash
python -m pip install verimor-sdk
```

The distribution name is `verimor-sdk`; import it as `verimor`.

## SMS, synchronous and asynchronous

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

An individual `send({"source_addr": "OTHER", "messages": [...]})` overrides
the client default. `status` requires exactly one of `id` or `custom_id`.

```python
import asyncio
from verimor import AsyncSmsClient


async def main() -> None:
    async with AsyncSmsClient("username", "password", source_addr="VERIMOR") as sms:
        print(await sms.balance())


asyncio.run(main())
```

Use `with` for sync clients and `async with` for async clients. Both close their
underlying `httpx` resources even when an exception exits the context.

## Switch

```python
from verimor import SwitchClient

with SwitchClient("switch-key") as switch:
    result = switch.originate(
        {"extension": "100", "destination": "905001112233"}
    )
    print(result)
    print(switch.list_extensions())
    print(switch.list_queues())
```

The API key is injected as the `key` query parameter. Use
`AsyncSwitchClient` and `await` for the asynchronous equivalent.

## WhatsApp

```python
from verimor import WhatsAppClient

with WhatsAppClient("whatsapp-key") as whatsapp:
    print(whatsapp.send_otp({
        "to": "905001112233",
        "template_name": "otp",
        "language": "en",
        "parameters": ["482913"],
        "use_tenant_queue": False,
    }))
    print(whatsapp.health())
```

`send_utility` uses the same message shape. The API key is injected as the
`x-api-key` header. Successful `202` message responses are accepted normally.
Use `AsyncWhatsAppClient` for async calls.

## Configuration

| Argument | Behavior |
| --- | --- |
| `username`, `password` | SMS credentials |
| `api_key` | Switch or WhatsApp credential |
| `source_addr` | Default SMS sender header |
| `base_url` | Override a product service URL for testing or a trusted proxy |
| `timeout` | Seconds; defaults to `30.0` |
| `transport` | Optional sync or async `httpx` transport |

Outside a context manager, close the underlying HTTP client with
`client.raw.get_httpx_client().close()` or
`await client.raw.get_async_httpx_client().aclose()`, respectively.

## Errors and retries

Non-2xx façade responses raise `VerimorApiError` with `product`, `status`, and
`body` attributes. Network and timeout errors remain native `httpx`
exceptions. Unexpected successful response shapes may raise `TypeError`.
There are no automatic retries or rate limits; check remote state before
repeating side-effecting calls after a timeout.

## Generated `raw` access

Normal application code should use direct product methods. `client.raw` is an
`openapi-python-client` instance for detailed responses, generated models, and
endpoint modules. SMS raw endpoints may require credentials explicitly:

```python
from verimor.sms.generated.api.basliklar import get_v2_headers

with SmsClient("user", "secret") as sms:
    headers = get_v2_headers.sync(
        client=sms.raw,
        username="user",
        password="secret",
    )
```

Generated endpoint modules also have `sync_detailed`, `asyncio`, and
`asyncio_detailed` functions. Raw calls follow generated response/error
semantics, not the façade's `VerimorApiError` contract.

The [operation table](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md)
lists every method and HTTP path. Keep secrets out of code and logs, review
account rate limits and billing, and verify live behavior with your own account
before production use. Licensed under MIT.
