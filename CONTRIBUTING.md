# Katkı ve yayın rehberi

[English](CONTRIBUTING.en.md)

Bu repo public, kullanıma hazır SDK kaynaklarının asıl kaynağıdır. Runtime
wrapper'ları, testler, kullanım rehberleri, manifestler ve release workflow'u
burada geliştirilir. Private generator repo şemaları ve generated kodu üretir;
public repodaki topluluk değişikliklerini topluca ezmemelidir.

## Geliştirme

Değişiklikleri ayrı branch/PR ile gönderin. Hata düzeltmelerinde önce başarısız
regression testi ekleyin; generated dosyayı elle düzenlemeyin. OpenAPI veya
generated kaynakta düzeltme gerekiyorsa generator tarafındaki normalize/yama
veya renderer kodunu güncelleyin, ardından public repoya export edin.

```bash
npm ci
npm run typecheck --workspace packages/typescript
npm test --workspace packages/typescript
npm run build --workspace packages/typescript
npm run pack:dry --workspace packages/typescript

uv sync --project packages/python --extra dev --locked
uv run --project packages/python ruff check --config packages/python/pyproject.toml packages/python/src packages/python/tests
uv run --project packages/python ruff format --check --config packages/python/pyproject.toml packages/python/src packages/python/tests scripts tests
uv run --project packages/python mypy --config-file packages/python/pyproject.toml packages/python/src/verimor
uv run --project packages/python python -m pytest packages/python/tests tests
uv build --project packages/python

(cd packages/go && go vet ./... && go test -race ./...)
```

Dart kaynakları henüz pub.dev'de değildir. Üç ürün için `dart pub get`,
`dart analyze` ve `dart test` çalıştırın. CI ayrıca `dart pub publish --dry-run`
çalıştırabilir; dry-run gerçek yayın değildir.

## Dokümantasyon

Ana `README.md` Türkçe, `README.en.md` İngilizcedir. Paket README'lerinde her iki
dil aynı dosyada tam anlatılır: npm ve PyPI uzun açıklamayı paketin
`packages/typescript/README.md` ve `packages/python/README.md` dosyalarından
gösterir. Ayrı `README.en.md` dosyaları GitHub gezintisi içindir.

Örneklerde gerçek public metot adlarını ve request alanlarını kullanın. SMS
başlığını `sourceAddr` / `source_addr` ile açıklayın. Canlı API test edildiği
izlenimi vermeyin; örnek credentials ve telefon numaraları kurgusal olsun.

## Sürüm ve release

TypeScript ve Python manifestleri lockstep SemVer kullanır. Yeni sürüm için
önce manifestleri ve lock dosyalarını eşitleyin, changelog/release notlarını
yazın, PR CI'ını ve temiz paket smoke testlerini geçirin. Sonra public `main`
commit'ine `vX.Y.Z` tag'i verin. Go alt modülü için aynı commit üzerinde
`packages/go/vX.Y.Z` tag'i kullanılır; ayrı GitHub Release açılmaz. Dart
pub.dev yayını ayrıca kararlaştırılana kadar kapsam dışıdır.

Public release workflow'u bir kez npm tarball ve Python wheel/sdist üretip test
eder; Go consumer testlerini de bekler. npm ve PyPI yayınları korumalı `npm` ve
`pypi` environment'larında OIDC trusted publishing ile yapılır. Kalıcı registry
token'ı kullanılmaz. İki registry arasında atomik yayın garantisi yoktur;
workflow ve registry durumlarını ayrı ayrı doğrulayın.

## Güvenlik ve destek

CI canlı Verimor servislerine istek göndermez ve gerçek credentials içermez.
Issue/PR içine token, telefon numarası, mesaj içeriği veya müşteri verisi
koymayın. Bu çalışma Verimor'un resmî SDK'sı değildir.
