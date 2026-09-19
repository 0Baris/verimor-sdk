## Verimor SDK 0.2.1 — Dokümantasyon / Documentation

### Türkçe

Bu sürüm, npm ve PyPI paket sayfalarında doğrudan görünen kullanım rehberlerini
yeniler. TypeScript ve Python README'lerinde SMS, Switch ve WhatsApp için
kurulum, kimlik doğrulama, gönderim/çağrı örnekleri, `source_addr`, doğrudan
façade metotları, generated `raw` erişimi, timeout, hata ve retry davranışı
Türkçe ve İngilizce olarak ayrıntılı anlatılır.

Repository, Go ve Dart rehberleri ile katkı-yayın belgeleri de güncellendi.
Kod davranışı ve 68 operasyonluk kapsam değişmedi: SMS 13, Switch 52,
WhatsApp 3. Dart kaynakları repoda kalır; pub.dev yayını yapılmaz.

### English

This release refreshes the guides rendered directly on npm and PyPI. The
TypeScript and Python package READMEs now provide complete Turkish and English
instructions for installation, authentication, SMS/Switch/WhatsApp examples,
`source_addr`, first-class façade methods, generated `raw` access, timeouts,
errors, and retries.

Repository, Go, Dart, and contribution/release guides were updated as well.
Runtime behavior and the 68-operation surface are unchanged: 13 SMS, 52
Switch, and 3 WhatsApp. Dart sources remain available but are not published to
pub.dev.

### Kurulum / Installation

- TypeScript: `npm install @bariscemant/verimor@0.2.1`
- Python: `python -m pip install verimor-sdk==0.2.1`
- Go: `go get github.com/0Baris/verimor-sdk/packages/go@v0.2.1`

> Bağımsız topluluk projesidir; Verimor'un resmî ürünü değildir. Canlı Verimor
> API uyumluluğu henüz doğrulanmamıştır. / This is an unofficial community
> project and has not yet been verified against live Verimor services.
