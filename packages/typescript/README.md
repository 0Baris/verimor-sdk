# @bariscemant/verimor

Community/unofficial Verimor SDK. MIT lisanslı; resmî destek iddiası yoktur.

```ts
import { createSmsClient, createSwitchClient, createWhatsAppClient } from '@bariscemant/verimor';

const sms = createSmsClient({ username: 'USER', password: 'PASSWORD' });
const balance = await sms.balance();
const status = await sms.status({ id: 123 });
const campaign = await sms.send({ source_addr: 'TITLE', messages: [{ msg: 'Hello', dest: '905550000000' }] });
const switchClient = createSwitchClient({ apiKey: 'KEY' });
const whatsapp = createWhatsAppClient({ apiKey: 'KEY' });
```

SMS, Switch ve WhatsApp istemcilerinin `.raw` alanı tüm typed OpenAPI
operasyonlarını sunar. Convenience HTTP hataları `VerimorApiError` içinde
`product`, `status`, `body` alanlarıyla döner; ağ hataları native fetch hatasıdır.
Varsayılan timeout 30 saniye; otomatik retry yoktur. Rate limit'leri uygulamanız
yönetmelidir. Aynı gönderimi tekrarlamak çift mesaj/çağrı oluşturabilir.

Node >=22.14, ESM. Test: repo kökünde `npm test --workspace packages/typescript`.
