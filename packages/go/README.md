# Verimor Go SDK (community / unofficial)

SMS, Switch ve WhatsApp için generated typed HTTP istemcileri. MIT lisanslıdır;
resmî Verimor desteği iddia edilmez. Üretim ve test: packages/go içinde `go test ./...`.

```go
import (
    "context"
    "net/http"
    "time"
    sms "github.com/0Baris/verimor-sdk/packages/go/sms"
)

client, err := sms.NewClientWithResponses("https://sms.verimor.com.tr",
    sms.WithHTTPClient(&http.Client{Timeout: 30 * time.Second}))
if err != nil { panic(err) }
response, err := client.GetV2BalanceWithResponse(context.Background(),
    &sms.GetV2BalanceParams{Username: "USERNAME", Password: "PASSWORD"})
// Önce err, sonra response.StatusCode() ve response.Body kontrol edilir.
```

Switch import'u `/switch` (paket adı `verimorswitch`), WhatsApp `/whatsapp`.
Switch için `WithRequestEditorFn` ile `r.URL.Query()` içine `key` ekleyip
`r.URL.RawQuery = query.Encode()` atayın. WhatsApp operasyonlarının
`XApiKey` parametresine anahtarı verin. Generated `ClientWithResponses`
tüm endpointleri içerir; convenience façade veya otomatik retry yoktur.
`context` ile iptal, `http.Client.Timeout` ile timeout kullanılır.
HTTP 4xx/5xx status/body içinde kalır; ağ/parse hataları `error` döner.

Modül monorepo içindedir; yayın öncesinde Go submodule tag stratejisi belirlenmelidir.
