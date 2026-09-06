# Katkı ve yayın

Elle yazılan istemci ve runtime testleri için bu repoya PR açın. Generated kodu
elle düzeltmek yerine ilgili endpoint/model için issue açın. Generated update
PR'ları yalnız generated dizinlerini değiştirir; wrapper/test/manifest değişiklikleri korunur.

## Yayın öncesi

- SDK CI başarılı olmalı; canlı Verimor credentials CI'a eklenmez.
- npm `@bariscemant/verimor`, PyPI `verimor-sdk` ve üç Dart paket adının sahipliği
  ilgili registry hesaplarında doğrulanmalıdır. GitHub hesabı registry sahipliği değildir.
- GitHub `npm` ve `pypi` environment'larını required reviewer ve release tag
  kısıtlamalarıyla oluşturun. Trusted publisher repo: `0Baris/verimor-sdk`,
  workflow: `release.yml`, environment: `npm` / `pypi`. Kalıcı registry token'ı yoktur.
- `v0.1.0` manuel tag'i npm/PyPI release workflow'unu başlatır; yalnız hazırlık
  tamamlandıktan sonra gönderin. İki registry arasında atomik yayın garantisi yoktur.
- Go modülü alt dizinde: modül tag'i `packages/go/v0.1.0` olmalıdır ve aynı
  doğrulanmış commit'i göstermelidir. Modül yolu `github.com/0Baris/verimor-sdk/packages/go`.
- Dart paketleri için `dart pub publish --dry-run` CI'da çalışır. pub.dev hesap ve
  publisher kurulumu tamamlanmadan otomatik yayın etkinleştirilmez.

Generator erişimi SDK'yı derlemek veya test etmek için gerekli değildir.
Go/Dart testleri CI'da Docker'da çalışır; generated model dosyaları repodadır.
Canlı smoke testler ayrıca planlanır; ücretli gönderimler CI'ın parçası değildir.
