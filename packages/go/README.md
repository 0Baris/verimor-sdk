# Verimor SDK for Go

Verimor SMS, Switch ve WhatsApp OpenAPI operasyonları için generated Go
istemcileri. Modül community tarafından geliştirilir; Verimor'un resmî SDK'sı
değildir.

> Go istemcileri offline ve localhost testleriyle doğrulanmıştır; canlı Verimor
> hesabıyla henüz doğrulanmamıştır.

## Durum ve kurulum

Go 1.24 veya daha yeni bir sürüm gerekir:

```sh
go get github.com/0Baris/verimor-sdk/packages/go@v0.2.0
```

Production bağımlılığında yeniden üretilebilirlik için `go.mod` dosyanıza yazılan
pseudo-version'ı commit edin. Ürün paketleri ayrı import edilir:

```go
import (
	verimorsms "github.com/0Baris/verimor-sdk/packages/go/sms"
	verimorswitch "github.com/0Baris/verimor-sdk/packages/go/switch"
	verimorwhatsapp "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)
```

## 0.2.0 public façade

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

Devamındaki generated/raw örnekler düşük seviye kullanım içindir.

## SMS

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

## Switch

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

## WhatsApp

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

Generated istemci kendiliğinden timeout koymaz. Timeout'u `http.Client` üzerinde,
tek operasyonluk deadline'ı ise `context.Context` ile belirleyin:

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

HTTP 4xx/5xx yanıtı tek başına Go `error` değildir. Önce transport hatasını,
sonra status kodunu kontrol edin:

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

- `sms/client.gen.go` — 13 operasyon,
- `switch/client.gen.go` — 52 operasyon,
- `whatsapp/client.gen.go` — 3 operasyon.

Metot adları OpenAPI operation ID'lerinden türetilir. Typed body ve parametre
struct'ları aynı ürün paketindedir. Repo kökündeki
`../../operation-manifest.json` dosyası bütün operation ID, HTTP method ve path
eşleşmelerini listeler.

## Test

```sh
cd packages/go
go test ./...
go test -race ./...
```

## English summary

This Go module contains generated clients for all Verimor SMS, Switch and
WhatsApp operations. Use Go 1.24+, configure your own `http.Client` timeout and
pass authentication as shown above. The generated surface does not normalize
non-2xx responses into errors and does not retry automatically. Always inspect
the HTTP status and close response bodies. The module has only been tested
offline and against localhost, not against live Verimor services.
