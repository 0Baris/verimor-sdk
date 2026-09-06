from enum import StrEnum

class GetCdrsResponse200CdrsItemResult(StrEnum):
    ARAMA_IÇIN_SANTRAL_UYGUN_DURUMDA_DEĞIL = "Arama için santral uygun durumda değil"
    CEVAPLANDI = "Cevaplandı"
    CEVAPSIZ = "Cevapsız"
    CIHAZLA_ILETIŞIM_SORUNU = "Cihazla iletişim sorunu"
    CIHAZ_YÖNLENDIRMESI = "Cihaz yönlendirmesi"
    DESTEKLENMEYEN_KANAL_TIPI = "Desteklenmeyen kanal tipi"
    DIĞER_DAHILI_CEVAPLADI = "Diğer dahili cevapladı"
    GENEL_HATA = "Genel Hata"
    GEÇERSIZ_JSON_KULLANIMI = "Geçersiz JSON kullanımı"
    HATA = "Hata"
    HATALI_NUMARA = "Hatalı Numara"
    İLETIŞIM_SORUNU = "İletişim sorunu"
    İYS_IZNI_YOK = "İYS izni yok"
    KATILIMLI_AKTARIM = "Katılımlı aktarım"
    MEŞGUL = "Meşgul"
    REDDEDILDI = "Reddedildi"
    RTP_ZAMANAŞIMI = "RTP zamanaşımı"
    SANTRAL_KAPATILIYOR = "Santral kapatılıyor"
    SESLI_GÖRÜŞME_YAPAMAYAN_NUMARA = "Sesli görüşme yapamayan numara"
    SES_KODEKLERI_UYUMSUZ = "Ses kodekleri uyumsuz"
    TANINMAYAN_ÇAĞRI_ID_NUMARASI = "Tanınmayan Çağrı ID numarası"
    ULAŞILAMIYOR = "Ulaşılamıyor"
    VAZGEÇILDI = "Vazgeçildi"
    ZAMANAŞIMI = "Zamanaşımı"
    ÇAĞRISI_ÇEKILDI = "Çağrısı çekildi"
    ÇAĞRI_BAĞLANAMADI = "Çağrı bağlanamadı"

    def __str__(self) -> str:
        return str(self.value)
