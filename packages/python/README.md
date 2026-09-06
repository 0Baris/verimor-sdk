# verimor-sdk

Unofficial, community-maintained Python SDK for Verimor SMS, Cloud Switch, and
WhatsApp APIs. Python 3.11+, attrs models, sync/async clients, 30-second default
timeout and no automatic retries. Not affiliated with or supported by Verimor.

```python
from verimor import SmsClient

with SmsClient("SMS_USER", "SMS_PASSWORD") as sms:
    credits = sms.balance()
```

[Türkçe kullanım, üç ürünün auth/raw örnekleri ve English summary](https://github.com/0Baris/verimor-sdk#readme).
