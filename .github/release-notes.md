Verimor SMS, Switch ve WhatsApp API'leri için topluluk tarafından geliştirilen SDK paketi.

Community-maintained SDKs for the Verimor SMS, Switch, and WhatsApp APIs.

## 0.2.0

- SMS 13, Switch 52 ve WhatsApp 3 operasyonun tamamı TypeScript, Python, Go ve
  Dart client'larında doğrudan metot olarak kullanılabilir.
- Credentials doğru body/query/header konumuna otomatik eklenir.
- SMS client'ında varsayılan `source_addr` tanımlanabilir; çağrıdaki değer önceliklidir.
- Generated `raw` istemciler geriye dönük uyumluluk ve düşük seviye kullanım için kalır.
- 30 saniye varsayılan timeout, normalize API hatası ve otomatik retry olmaması korunur.
- Dart/Flutter kaynakları bu release'e dahildir ancak pub.dev yayını yapılmaz.

## Paketler

- npm: `@bariscemant/verimor`
- PyPI: `verimor-sdk`
- Go: `github.com/0Baris/verimor-sdk/packages/go`

> Bu bağımsız bir topluluk projesidir. Verimor tarafından resmî olarak desteklenmez ve canlı API uyumluluğu henüz doğrulanmamıştır.
