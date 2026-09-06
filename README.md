# Verimor SDK

Verimor SMS, Switch ve WhatsApp için community SDK'ları. MIT lisanslıdır;
resmî Verimor desteği veya bağlantısı iddia edilmez.

| Dil | Paket |
| --- | --- |
| TypeScript | `@bariscemant/verimor` |
| Python | `verimor-sdk` / import `verimor` |
| Go | `github.com/0Baris/verimor-sdk/packages/go` |
| Dart | `verimor_sms`, `verimor_switch`, `verimor_whatsapp` |

Paketler henüz yayımlanmadı. Generated istemciler SMS 13, Switch 52, WhatsApp 3
operasyonu kapsar. Bu repo SDK kaynakları, testleri ve yayın araçlarını içerir;
üretim altyapısı ayrı tutulur. Kullanıcının generator'a erişmesi gerekmez.

TypeScript/Python örnekleri paket README'lerinde, Dart örnekleri ürün
paketlerinin README/doc dizinlerinde, Go örnekleri packages/go/README.md içinde.
Auth: SMS username/password, Switch query key, WhatsApp x-api-key.
Otomatik retry yoktur; tekrar gönderim çift SMS/OTP veya çağrı oluşturabilir.
Servis rate limit'lerini uygulamanız yönetmelidir.

## Geliştirme

CI generated kaynakları yeniden üretmeden test/build yapar. Yerel komutlar:

```sh
npm ci
npm test --workspace packages/typescript
npm run build --workspace packages/typescript
uv sync --project packages/python --extra dev --locked
uv run --project packages/python python -m pytest packages/python/tests
```

Go: packages/go içinde `go test ./...`. Dart: ürün dizininde `dart pub get`,
`dart analyze --no-fatal-warnings`, `dart test`. `.g.dart` dosyaları hazır gelir;
tüketici model generation çalıştırmak zorunda değildir.

PR'larda elle yazılan SDK kodu ve testler değiştirilebilir. Generated kaynak
düzeltmeleri için issue açın; üretim pipeline'ı yalnız generated dizinleri
günceller. Wrapper ve topluluk katkıları otomasyon tarafından ezilmez.

English: Unofficial, MIT-licensed Verimor SDKs. Source, tests and release tooling
are public; SDK generation runs separately. No automatic retries.
