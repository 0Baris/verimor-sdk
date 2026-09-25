# Verimor Go SDK — English guide

[Türkçe / bilingual guide](README.md)

Unofficial Go module for the Verimor SMS, Switch, and WhatsApp APIs. It
requires Go 1.24 or newer and exposes façade methods for all 68 operations
plus generated clients in each product subpackage and `Raw` field.

> Community-maintained, not supported by Verimor. Verified with offline and
> localhost tests, not live Verimor accounts.

## Install

```bash
go get github.com/0Baris/verimor-sdk/packages/go@v0.2.1
```

Commit your `go.mod` and `go.sum` to pin the module version.

## SMS

```go
package main

import (
	"context"
	"log"
	"os"

	verimor "github.com/0Baris/verimor-sdk/packages/go"
)

func main() {
	client, err := verimor.NewSMSClient(
		os.Getenv("VERIMOR_SMS_USERNAME"),
		os.Getenv("VERIMOR_SMS_PASSWORD"),
		verimor.WithSourceAddr("VERIMOR"),
	)
	if err != nil {
		log.Fatal(err)
	}

	messageID, err := client.Send(context.Background(), map[string]any{
		"messages": []any{
			map[string]any{"dest": "905001112233", "msg": "Your order is ready."},
		},
	})
	if err != nil {
		log.Fatal(err)
	}
	log.Print(messageID)
}
```

Client-level `WithSourceAddr` is the default SMS sender header; per-call
`source_addr` overrides it. Credentials are injected into each operation's
required body or query fields. Use `client.Balance(ctx)` and
`client.Status(ctx, map[string]any{"id": 12345})` for balance and status.

## Switch and WhatsApp

```go
switchClient, err := verimor.NewSwitchClient(os.Getenv("VERIMOR_SWITCH_API_KEY"))
if err != nil {
	log.Fatal(err)
}
extensions, err := switchClient.ListExtensions(context.Background())

whatsapp, err := verimor.NewWhatsAppClient(
	os.Getenv("VERIMOR_WHATSAPP_API_KEY"),
)
if err != nil {
	log.Fatal(err)
}
otp, err := whatsapp.SendOtp(context.Background(), map[string]any{
	"to": "905001112233",
	"template_name": "otp",
	"language": "en",
	"parameters": []string{"482913"},
	"use_tenant_queue": false,
})
```

Switch credentials are injected as the `key` query parameter; WhatsApp uses
the `x-api-key` header. The WhatsApp `202` response is a successful result.

## Configuration and errors

The façade default timeout is 30 seconds. `WithTimeout(duration)`,
`WithHTTPClient(*http.Client)`, and `WithBaseURL(url)` customize requests. Use
`context.WithTimeout` or cancellation for an individual call.

Façade methods return `VerimorAPIError` for non-2xx responses. Transport and
context failures remain native Go errors. `Raw` generated calls instead return
response objects: inspect status and parsed fields, and close response bodies
when applicable. Directly instantiated generated clients do not add the façade
timeout or error normalization. No automatic retries or rate limiter are
provided.

## Modular generated sources

Generated declarations are partitioned by product tag into `client_*.gen.go`
and `models_*.gen.go`. No generated file may exceed **800 physical lines**.
This limit is intended to make reviews and diffs manageable; total generated
code is not expected to shrink materially.

The root, `/sms`, `/switch`, and `/whatsapp` import paths and every exported
symbol remain unchanged. Never edit generated modules directly. Run `make
generate-go` from the generator repository root, then verify with:

```bash
(cd packages/go && go test -race ./... && go vet ./...)
packages/python/.venv/bin/python -m scripts.verify_modular_codegen \
  --plan build/modular-plan \
  --typescript packages/typescript/src/generated \
  --go packages/go \
  --max-lines 800
```

```bash
cd packages/go
go test ./...
go test -race ./...
```

The [operation table](https://github.com/0Baris/verimor-sdk/blob/main/docs/operations.md)
lists every method. Never log credentials, verify account rate limits and
billing, and run controlled live smoke tests before production use. MIT license.
