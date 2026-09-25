## Verimor SDK 0.2.2 — Modüler generated kaynaklar / Modular generated sources

### Türkçe

Bu bakım sürümü, TypeScript ve Go generated kaynaklarını ürün, tag ve model
sınırlarına göre küçük ve incelenebilir modüllere ayırır. Public import yolları,
istemci oluşturucuları, façade metotları ve `raw` erişim sözleşmesi değişmez.

Generator artık deterministik bölümleme, tekil sembol sahipliği ve generated
dosyalar için 800 satır üst sınırını doğrular. Go dokümantasyon yorumları ile iç
açıklamalar modüler çıktıda korunur. TypeScript toolchain kararlı `5.9.3`
sürümünde sabitlenmiştir.

Operasyon kapsamı değişmedi: SMS 13, Switch 52 ve WhatsApp 3 olmak üzere toplam
68 operasyon. Dart/Flutter kaynakları repoda kalır ancak bu sürümde pub.dev
yayını yapılmaz.

### English

This maintenance release splits the TypeScript and Go generated sources into
small, reviewable modules aligned with product, tag, and model boundaries.
Public import paths, client factories, façade methods, and the `raw` access
contract remain unchanged.

The generator now enforces deterministic partitioning, unique symbol ownership,
and an 800-line limit for generated files. Go documentation and internal
comments are retained in modular output. The TypeScript toolchain is pinned to
the stable `5.9.3` release.

Operation coverage remains unchanged at 68 operations: 13 SMS, 52 Switch, and
3 WhatsApp. Dart/Flutter sources remain in the repository but are not published
to pub.dev in this release.

### Kurulum / Installation

- TypeScript: `npm install @bariscemant/verimor@0.2.2`
- Python: `python -m pip install verimor-sdk==0.2.2`
- Go: `go get github.com/0Baris/verimor-sdk/packages/go@v0.2.2`

> Bağımsız topluluk projesidir; Verimor'un resmî ürünü değildir. Canlı Verimor
> API uyumluluğu henüz doğrulanmamıştır. / This is an unofficial community
> project and has not yet been verified against live Verimor services.
