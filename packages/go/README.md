# Verimor SDK for Go

Verimor SMS, Switch ve WhatsApp OpenAPI operasyonları için generated Go
istemcileri. Modül community tarafından geliştirilir; Verimor'un resmî SDK'sı
değildir.

> Go istemcileri offline ve localhost testleriyle doğrulanmıştır; canlı Verimor
> hesabıyla henüz doğrulanmamıştır.

## Durum ve kurulum

Go 1.24 veya daha yeni bir sürüm gerekir:

```sh
go get github.com/0Baris/verimor-sdk/packages/go@v0.2.2
```

Production bağımlılığında yeniden üretilebilirlik için `go.mod` ve `go.sum`
dosyalarınızı commit edin. Üretilmiş modellere ihtiyaç duyarsanız ürün paketleri
ayrı import edilir:

```go
import (
	verimorsms "github.com/0Baris/verimor-sdk/packages/go/sms"
	verimorswitch "github.com/0Baris/verimor-sdk/packages/go/switch"
	verimorwhatsapp "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)
```

## Façade istemcileri

`NewSMSClient`, `NewSwitchClient` ve `NewWhatsAppClient` credentials'ı otomatik
ekler, 30 saniye varsayılan timeout ve `VerimorAPIError` sağlar. SMS 13, Switch 52
ve WhatsApp 3 operasyonun tamamı doğrudan metottur; generated istemci `Raw`
alanında kalır. Tam liste: [`docs/operations.md`](../../docs/operations.md).

```go
import (
    "context"

    verimor "github.com/0Baris/verimor-sdk/packages/go"
)

ctx := context.Background()
sms, _ := verimor.NewSMSClient("SMS_USER", "SMS_PASSWORD", verimor.WithSourceAddr("VERIMOR"))
_, _ = sms.Send(ctx, map[string]any{"messages": []any{map[string]any{"dest": "905001112233", "msg": "Merhaba"}}})
_, _ = sms.ListSenderIds(ctx)

sw, _ := verimor.NewSwitchClient("SWITCH_KEY")
_, _ = sw.ListExtensions(ctx)
```

Devamındaki generated/raw örnekler düşük seviye kullanım içindir. Façade
istemcilerinde credentials ve HTTP hatası yönetimi otomatikken `Raw` tarafında
generated response/status sözleşmesini siz yönetirsiniz.

## SMS `Raw` örneği

SMS credentials'ı her endpoint'in parametre ya da body modeline açıkça verilir.
Aşağıdaki örnek bakiye endpoint'ini çağırır:

```go
package main

import (
	"context"
	"fmt"
	"net/http"
	"os"
	"time"

	verimorsms "github.com/0Baris/verimor-sdk/packages/go/sms"
)

func main() {
	httpClient := &http.Client{Timeout: 30 * time.Second}
	client, err := verimorsms.NewClientWithResponses(
		"https://sms.verimor.com.tr",
		verimorsms.WithHTTPClient(httpClient),
	)
	if err != nil {
		panic(err)
	}

	response, err := client.GetV2BalanceWithResponse(
		context.Background(),
		&verimorsms.GetV2BalanceParams{
			Username: os.Getenv("VERIMOR_SMS_USERNAME"),
			Password: os.Getenv("VERIMOR_SMS_PASSWORD"),
		},
	)
	if err != nil {
		panic(err)
	}
	defer response.HTTPResponse.Body.Close()

	fmt.Println(response.StatusCode())
}
```

SMS gönderiminde `SendSmsJsonJSONRequestBody` modelini ve generated
`SendSmsJsonWithResponse` metodunu kullanın. Credentials bu operasyonun JSON
body'sinde yer alır; endpoint modelindeki `Username` ve `Password` alanlarını
doldurmayı unutmayın.

## Switch `Raw` örneği

Switch bütün isteklerde `key` query parametresi bekler. Bunu bir request editor
ile istemciye bir kez ekleyebilirsiniz:

```go
package main

import (
	"context"
	"fmt"
	"net/http"
	"os"
	"time"

	verimorswitch "github.com/0Baris/verimor-sdk/packages/go/switch"
)

func main() {
	client, err := verimorswitch.NewClientWithResponses(
		"https://api.bulutsantralim.com",
		verimorswitch.WithHTTPClient(&http.Client{Timeout: 30 * time.Second}),
		verimorswitch.WithRequestEditorFn(func(_ context.Context, req *http.Request) error {
			query := req.URL.Query()
			query.Set("key", os.Getenv("VERIMOR_SWITCH_API_KEY"))
			req.URL.RawQuery = query.Encode()
			return nil
		}),
	)
	if err != nil {
		panic(err)
	}

	response, err := client.GetQueuesWithResponse(context.Background())
	if err != nil {
		panic(err)
	}
	defer response.HTTPResponse.Body.Close()

	fmt.Println(response.StatusCode(), response.JSON200)
}
```

Editor mevcut query parametrelerini korur ve URL encoding'i standart kütüphaneye
bırakır. API key'i loglamayın veya URL içeren hata/trace kayıtlarında sızdırmayın.

## WhatsApp `Raw` örneği

WhatsApp endpointleri `x-api-key` header'ını operation params içinden alır:

```go
package main

import (
	"context"
	"fmt"
	"net/http"
	"os"
	"time"

	verimorwhatsapp "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)

func main() {
	client, err := verimorwhatsapp.NewClientWithResponses(
		"https://wapi.verimor.com.tr",
		verimorwhatsapp.WithHTTPClient(&http.Client{Timeout: 30 * time.Second}),
	)
	if err != nil {
		panic(err)
	}

	apiKey := os.Getenv("VERIMOR_WHATSAPP_API_KEY")
	language := "tr"
	parameters := []string{"123456"}
	response, err := client.SendOtpV1MessagesOtpPostWithResponse(
		context.Background(),
		&verimorwhatsapp.SendOtpV1MessagesOtpPostParams{XApiKey: &apiKey},
		verimorwhatsapp.TemplateMessageRequest{
			To:           "905001112233",
			TemplateName: "otp_dogrulama",
			Language:     &language,
			Parameters:   &parameters,
		},
	)
	if err != nil {
		panic(err)
	}
	defer response.HTTPResponse.Body.Close()

	fmt.Println(response.StatusCode(), response.JSON202)
}
```

Utility mesajı için aynı modelle
`SendUtilityV1MessagesUtilityPostWithResponse` metodunu kullanın.

## Context, timeout ve iptal

Façade istemcilerinde varsayılan timeout 30 saniyedir ve `WithTimeout` veya
`WithHTTPClient` ile değiştirilebilir. Ürün paketinden doğrudan oluşturduğunuz
generated istemcide varsayılan timeout yoktur. Tek operasyonluk deadline'ı
`context.Context` ile belirleyin:

```go
ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
defer cancel()

response, err := client.GetQueuesWithResponse(ctx)
```

Context iptal edilirse native Go HTTP/context hatası döner. Paket otomatik retry
ve rate limiter eklemez. Aynı SMS, OTP veya çağrı oluşturma isteğini tekrar
göndermeden önce ilk isteğin gerçekleşip gerçekleşmediğini kontrol edin.

## Response ve hata yönetimi

`NewClientWithResponses` kullanan metotlar şunları sunar:

- `HTTPResponse`: status, headers ve ham response bilgisi,
- `Body`: response body'nin byte hali,
- `JSON200`, `JSON202` gibi alanlar: şemada tanımlanan typed başarılı/hata body'leri.

Bu bölümdeki `Raw` çağrılarında HTTP 4xx/5xx yanıtı tek başına Go `error`
değildir. Önce transport hatasını, sonra status kodunu kontrol edin. Façade
çağrılarında 2xx dışı yanıt `VerimorAPIError` olur:

```go
response, err := client.GetQueuesWithResponse(ctx)
if err != nil {
	// DNS, bağlantı, timeout, context cancellation veya decode hatası
	return err
}
defer response.HTTPResponse.Body.Close()

if response.StatusCode() < 200 || response.StatusCode() >= 300 {
	return fmt.Errorf("switch API HTTP %d: %s", response.StatusCode(), response.Body)
}
```

Response body'yi normal ve hata yollarında kapatın. Credentials veya kişisel
veri içerebileceği için response/request body'lerini kontrolsüz loglamayın.

## Endpoint keşfi

Generated public metotlar şu dosyalardadır:

- `sms/client_*.gen.go` ve `sms/models_*.gen.go` — 13 operasyon,
- `switch/client_*.gen.go` ve `switch/models_*.gen.go` — 52 operasyon,
- `whatsapp/client_*.gen.go` ve `whatsapp/models_*.gen.go` — 3 operasyon.

Metot adları OpenAPI operation ID'lerinden türetilir. Typed body ve parametre
struct'ları aynı ürün paketindedir. Repo kökündeki
`../../operation-manifest.json` dosyası bütün operation ID, HTTP method ve path
eşleşmelerini listeler.

## Modüler generated kaynaklar

Generated declaration'lar ürün tag'lerine göre `client_*.gen.go` ve
`models_*.gen.go` dosyalarına ayrılır. Hiçbir generated dosya **800 fiziksel
satırı** geçmez. Bu sınır toplam generated satır sayısını düşürmek için değil,
büyük tek dosyaları kararlı ve incelenebilir diff'lere dönüştürmek içindir.

`github.com/0Baris/verimor-sdk/packages/go`, `/sms`, `/switch` ve `/whatsapp`
import path'leri ile exported semboller değişmez. Generated dosyaları doğrudan
düzenlemeyin; generator packages/go içinde `go test ./...` çalıştırın. Ardından:

```sh
(cd packages/go && go test -race ./... && go vet ./...)
packages/python/.venv/bin/python -m scripts.verify_modular_codegen \
  --plan build/modular-plan \
  --typescript packages/typescript/src/generated \
  --go packages/go \
  --max-lines 800
```

## Test

```sh
cd packages/go
go test ./...
go test -race ./...
```

## English documentation

This unofficial, community-maintained Go module provides first-class clients
and generated low-level access for all 13 SMS, 52 Switch, and 3 WhatsApp
operations. It requires Go 1.24 or newer. It has been tested offline and against
localhost servers, not live Verimor accounts.

### Installation

```bash
go get github.com/0Baris/verimor-sdk/packages/go@v0.2.2
```

Import the root package for the recommended façade clients. Product subpackages
contain generated request and response types for low-level access.

### SMS

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

	response, err := client.Send(context.Background(), map[string]any{
		"messages": []any{
			map[string]any{"dest": "905001112233", "msg": "Your order is ready."},
		},
	})
	if err != nil {
		log.Fatal(err)
	}
	log.Print(response)
}
```

SMS credentials are injected into the location required by each operation. A
per-call `source_addr` overrides the default supplied with `WithSourceAddr`.

### Switch and WhatsApp

```go
switchClient, err := verimor.NewSwitchClient(os.Getenv("VERIMOR_SWITCH_API_KEY"))
if err != nil {
	log.Fatal(err)
}

whatsappClient, err := verimor.NewWhatsAppClient(
	os.Getenv("VERIMOR_WHATSAPP_API_KEY"),
)
if err != nil {
	log.Fatal(err)
}
```

Switch authentication is sent as the `key` query parameter. WhatsApp
authentication is sent as the `x-api-key` header. Generated request types and
method names remain available through each client's `Raw` field.

### Timeout, cancellation, and errors

The generated Go client deliberately does not impose a default timeout. Supply
an `http.Client` with a timeout and use `context.Context` for per-call deadlines:

```go
httpClient := &http.Client{Timeout: 30 * time.Second}
client, err := verimor.NewSwitchClient("switch-key", verimor.WithHTTPClient(httpClient))

ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
defer cancel()

response, err := client.GetQueuesWithResponse(ctx)
```

Façade methods normalize non-2xx responses as `VerimorAPIError`. Transport and
context failures remain native Go errors. Generated calls through `Raw` return
response objects; inspect their status code and parsed body, and close response
bodies when applicable. The module performs no automatic retries and includes
no rate limiter.

### Testing

```bash
cd packages/go
go test ./...
go test -race ./...
```

Licensed under MIT. This is not an official Verimor SDK.
