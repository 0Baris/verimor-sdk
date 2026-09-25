# `@bariscemant/verimor` — English guide

[Türkçe / bilingual npm page](README.md)

Unofficial TypeScript SDK for the Verimor SMS, Switch, and WhatsApp APIs.
Requires Node.js 22.14 or newer and ESM. It exposes first-class methods for
all 68 operations: 13 SMS, 52 Switch, and 3 WhatsApp.

> Community-maintained, not developed or supported by Verimor. Tested with
> offline fixtures and localhost HTTP servers, not live Verimor accounts.

## Install

```bash
npm install @bariscemant/verimor
```

## SMS

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

The client-level `sourceAddr` is the default sender header. An individual
`send({ source_addr: "OTHER", messages: [...] })` overrides it. Neither the
input object nor your credentials are mutated. `status` requires exactly one
of `id` and `customId`.

Other methods, such as `listInboundMessages({ limit: 50 })` and
`listBlacklistEntries({ offset: 0, limit: 100 })`, are available directly on
the SMS client.

## Switch

```ts
import { createSwitchClient } from "@bariscemant/verimor";

const switchClient = createSwitchClient({
  apiKey: process.env.VERIMOR_SWITCH_API_KEY!,
});

await switchClient.originate({ extension: "100", destination: "905001112233" });
console.log(await switchClient.listExtensions());
console.log(await switchClient.listQueues());
```

The API key is injected as the `key` query parameter. Call, queue, extension,
contact, fax, blacklist, and report operations are first-class methods.

## WhatsApp

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

The API key is injected as the `x-api-key` header. A successful `202` message
response is treated as success.

## Configuration

| Option | Behavior |
| --- | --- |
| `username`, `password` | SMS credentials, placed in body or query as required by each endpoint |
| `apiKey` | Switch `key` query parameter or WhatsApp `x-api-key` header |
| `sourceAddr` | Default SMS sender header |
| `baseUrl` | Override the product service URL for a trusted proxy or test server |
| `timeoutMs` | Request timeout in milliseconds; defaults to `30_000` |
| `fetch` | Custom fetch-compatible transport |

## Errors and retries

Non-2xx façade responses throw `VerimorApiError` with `product`, `status`, and
`body` fields. Network and timeout failures remain native fetch errors;
unexpected successful response shapes may throw `TypeError`. There are no
automatic retries or rate limits. After a timeout, check whether a send, OTP,
or originate request was processed before retrying.

## Low-level and generated types

Use first-class product methods for normal application code. The `raw` field is
an `openapi-fetch` client for low-level responses and headers; raw calls do not
automatically use the façade's credential injection or error normalization.

```ts
import type { paths as SmsPaths } from "@bariscemant/verimor/sms";

const response = await sms.raw.GET("/v2/headers", {
  params: {
    query: {
      username: process.env.VERIMOR_SMS_USERNAME!,
      password: process.env.VERIMOR_SMS_PASSWORD!,
    },
  },
});
if (response.error) console.error(response.response.status, response.error);
```

Generated path types are also exported from `/switch` and `/whatsapp`.
The [operation table](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md)
lists every façade method and HTTP path.

## Modular generated types

Declarations below `dist/generated/sms`, `switch`, and `whatsapp` are split by
tag into small modules. No generated source file may exceed **800 physical
lines**. The goal is stable, reviewable diffs rather than a material reduction
in total generated code.

Compatibility aggregators preserve the subpath imports above and every
`client.raw` type. Never edit generated modules directly; regeneration happens
in the private generator automation. Verify the public export with:

```bash
npm run typecheck --workspace packages/typescript
npm test --workspace packages/typescript
npm run build --workspace packages/typescript
```

## Production precautions

Keep credentials out of code and logs, use a secret manager, verify account
rate limits and billing, and perform controlled live smoke tests with your own
account before production use. Licensed under MIT.
