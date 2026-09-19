# Verimor SDK

[Türkçe](README.md)

Open-source, community-maintained TypeScript, Python, Go, and Dart clients for
the Verimor SMS, Switch, and WhatsApp APIs.

This repository contains only consumer-ready SDK sources, tests, and
documentation. The private generator that downloads and normalizes OpenAPI
specifications is maintained separately. Consumers do not need the generator.

> **Live API notice:** The SDKs are verified with offline fixtures, mock
> transports, and localhost HTTP servers. They have not yet been exercised
> end-to-end with live Verimor accounts. Run a controlled verification with
> your own account before production use.

## Packages

| Language | Package | Requirement | Status |
| --- | --- | --- | --- |
| TypeScript | [`@bariscemant/verimor`](https://www.npmjs.com/package/@bariscemant/verimor) | Node.js >=22.14, ESM | npm `0.2.1` |
| Python | [`verimor-sdk`](https://pypi.org/project/verimor-sdk/) / import `verimor` | Python >=3.11 | PyPI `0.2.1` |
| Go | `github.com/0Baris/verimor-sdk/packages/go` | Go >=1.24 | module tag `v0.2.1` |
| Dart / Flutter | `verimor_sms`, `verimor_switch`, `verimor_whatsapp` | Dart >=2.18 | source available; not on pub.dev |

The SDK surface covers 68 operations: 13 SMS, 52 Switch, and 3 WhatsApp.
See [`docs/operations.md`](docs/operations.md) for the complete method-to-path
mapping.

## Recommended API surface

Use first-class product methods in normal application code. They inject
credentials into the correct body, query, or header location, apply the client
timeout, and normalize non-2xx façade responses.

Use `raw` when you need generated models, headers, detailed response objects,
or low-level endpoint access. Raw behavior differs by language and does not
necessarily inherit façade credential injection or error normalization.

## TypeScript

```bash
npm install @bariscemant/verimor
```

```ts
import { createSmsClient } from "@bariscemant/verimor";

const sms = createSmsClient({
  username: process.env.VERIMOR_SMS_USERNAME!,
  password: process.env.VERIMOR_SMS_PASSWORD!,
  sourceAddr: "VERIMOR",
});

await sms.send({
  messages: [{ dest: "905001112233", msg: "Your order is ready." }],
});
console.log(await sms.balance());
```

See the [complete TypeScript guide](packages/typescript/README.md).

## Python

```bash
python -m pip install verimor-sdk
```

```python
import os

from verimor import SmsClient

with SmsClient(
    os.environ["VERIMOR_SMS_USERNAME"],
    os.environ["VERIMOR_SMS_PASSWORD"],
    source_addr="VERIMOR",
) as sms:
    sms.send(
        {"messages": [{"dest": "905001112233", "msg": "Your order is ready."}]}
    )
    print(sms.balance())
```

Synchronous and asynchronous clients are available for all three products.
See the [complete Python guide](packages/python/README.md).

## Go

```bash
go get github.com/0Baris/verimor-sdk/packages/go@v0.2.1
```

The Go package keeps generated client semantics. Configure timeout through
`http.Client`, cancellation through `context.Context`, inspect HTTP status
codes, and close response bodies. See the [Go guide](packages/go/README.md).

## Dart / Flutter

Dart package sources and tests are included, but the packages are not yet
published to pub.dev. Their names and publication policy may change before the
first public Dart release. See the [Dart guide](packages/dart/README.md).

## Authentication

| Product | Credential | Location |
| --- | --- | --- |
| SMS | `username`, `password` | JSON body or query parameter, depending on the operation |
| Switch | API key | `key` query parameter |
| WhatsApp | API key | `x-api-key` header |

## Timeouts, errors, and retries

- TypeScript, Python, and Dart façade clients default to a 30-second timeout.
- Their non-2xx façade responses are represented by `VerimorApiError`.
- Network errors remain native to `fetch`, `httpx`, or Dio.
- The Go generated client adds neither a default timeout nor HTTP error
  normalization.
- No language implementation performs automatic retries or rate limiting.
- A timeout or disconnected socket does not prove that the server ignored a
  request. Check the remote state before retrying SMS, OTP, or call creation.

## Security

Do not commit credentials or include them in logs. Use a secret manager in
production. Review TLS, proxy, and logging behavior when supplying custom
transports or base URLs. Repository tests and CI never use live Verimor
credentials.

## Development

CI verifies TypeScript typecheck/test/build/pack, Python Ruff/mypy/pytest/build,
Go tests and consumer smoke checks, and analyze/test for all three Dart
packages. No CI test calls a live Verimor endpoint.

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for contribution and release rules.

## License and support

MIT licensed. This is not an official Verimor SDK. Never include secrets, phone
numbers, message contents, or customer data in an issue report.
