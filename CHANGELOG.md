# Changelog

## 0.2.2 — 2026-09-25

- TypeScript ve Go generated kaynakları ürün, tag ve model sınırlarına göre
  küçük, kararlı modüllere ayrıldı; public import yolları ve SDK API'leri
  değişmedi.
- Generated dosyalar için deterministik bölümleme, tekil sembol sahipliği ve
  800 satır üst sınırı doğrulamaları eklendi.
- Go generated kaynaklarındaki dokümantasyon ve iç açıklamalar modüler üretimde
  korunacak şekilde generator düzeltildi.
- TypeScript toolchain kararlı `5.9.3` sürümünde sabitlendi.
- Operasyon kapsamı değişmedi: SMS 13, Switch 52 ve WhatsApp 3 olmak üzere
  toplam 68 operasyon. Dart/Flutter pub.dev yayını bu sürümde yapılmaz.

## 0.2.1 — 2026-09-19

- npm ve PyPI paket sayfalarında görüntülenen README'ler kurulumdan hata
  yönetimine kadar Türkçe ve İngilizce tam kullanım rehberleriyle yenilendi.
- Repository, TypeScript, Python, Go ve Dart rehberlerinin ayrı İngilizce
  sürümleri eklendi; public API örnekleri ve canlı API uyarısı netleştirildi.
- Generator/public export belgeleri ve katkı-yayın talimatları güncellendi.
- Dart/Flutter pub.dev yayını hâlâ ertelenmiştir.

## 0.2.0 — 2026-09-19

- TypeScript, Python sync/async, Go ve Dart client'larına SMS 13, Switch 52 ve
  WhatsApp 3 operasyonun tamamı için doğrudan façade metotları eklendi.
- Credentials doğru body/query/header konumuna otomatik eklenirken generated
  `raw` erişimi korundu.
- SMS client düzeyinde varsayılan `source_addr` ve çağrı bazında override eklendi.
- 68 operasyonluk manifest, generated metot tablosu ve artifact localhost smoke
  testleri eklendi.
- Dart/Flutter kaynakları güncellendi; pub.dev yayını ertelenmeye devam ediyor.

## 0.1.1 — 2026-09-13

- TypeScript, Python, Go ve Dart için ayrıntılı kurulum, auth, kullanım ve hata
  yönetimi dokümantasyonu eklendi.
- Dart README'lerindeki yayımlanmamış pub.dev talimatları ve generator
  placeholder'ları kaldırıldı.

## 0.1.0 — 2026-09-11

- SMS, Switch ve WhatsApp için TypeScript, Python, Go ve Dart SDK kaynakları.
