from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast

if TYPE_CHECKING:
  from ..models.create_ivr_campaign_body_phone_list_item import CreateIvrCampaignBodyPhoneListItem





T = TypeVar("T", bound="CreateIvrCampaignBody")



@_attrs_define
class CreateIvrCampaignBody:
    

    call_type: str
    """ Otomatik aramanın tipi. "queue" ya da "ivr" olabilir. """
    name: str
    """ Kampanyanın adı. """
    phone_list: list[CreateIvrCampaignBodyPhoneListItem]
    """ Aranacak numara listesi (zorunlu). "phone" aranacak numaradır, "905111111111" veya "05111111111" veya
    "5111111111" veya uluslararası için "00491234567" şeklinde olmalıdır, "phone" sahası zorunludur. "phrase" sahası
    bu numaraya okunacak özel mesajı belirtir, formatı için aşağıda Cümle (phrase) Formatı başlığına bakınız.
    "phrase" sahası zorunlu değildir. "lang" sahası, mesajın hangi dilde okunacağını belirtir. Zorunlu değildir.
    Geçerli diller: "tr-TR", "en-US" ve "ar-XA". """
    queue_number: str | Unset = UNSET
    """ Kuyruk tipi otomatik aramalarda, çağrıların hangi kuyruğa aktarılacağını belirtir. """
    thread_multiplier: int | Unset = UNSET
    """ Kuyruk tipi otomatik aramalarda, eşzamanlı olarak, müsait temsilci sayısının kaç katı arama yapılacağını
    belirtir. """
    max_thread_count: int | Unset = UNSET
    """ Kampanya için, eşzamanlı maksimum çağrı sayısını belirtir. Bu parametre belirtilmezse, santralin değerleri
    referans alınır. (Santral ayarlarında, "Otomatik Arama Kanal Sayısı" değeri referans alınır. Bu ayar için
    "Otomatik Arama / Sesli Mesaj (Çoklu) modülü gereklidir.) """
    date_range_begin: str | Unset = UNSET
    """ Opsiyonel. Kampanyanın aramaya başlayacağı tarih, YYYY-AA-GG formatında olmalıdır. Gönderilmezse o anki
    tarih kullanılır. """
    date_range_end: str | Unset = UNSET
    """ Opsiyonel. Kampanyanın arama bitiş tarihi. YYYY-AA-GG formatında olmalıdır. Gönderilmezse date_range_begin
    değeri kullanılır. """
    time_range_begin: str | Unset = UNSET
    """ Opsiyonel. Kampanyanın çalışma saatlerinin başlangıcı. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse
    "00:00" değeri kullanılır. """
    time_range_end: str | Unset = UNSET
    """ Opsiyonel. Kampanyanın çalışma saatlerinin bitişi. SS:DD (veya S:DD) formatında olmalı. Gönderilmezse
    "23:59" değeri kullanılır. """
    active_days: list[int] | Unset = UNSET
    """ Kampanyanın çalışma günleri. 1=Pazartesi, 7=Pazar olacak şekilde integer array olarak verilir ve kampanyanın
    haftanın sadece belirli günleri çalışmasını sağlar. """
    ring_timeout: int | Unset = UNSET
    """ Aranan numara çalarken beklenecek süre (saniye), 25 – 60 sn. arasında olabilir. """
    cli: str | Unset = UNSET
    """ Arayan numara. Karşı taraf bu numarayı görür. """
    welcome_announcement_id: int | Unset = UNSET
    """ Aranan numaralara dinletilecek ses dosyasının ID'si. Bu ses dinletilip peşinden tuşlama beklenir. Ses
    dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz. """
    call_retries: int | Unset = UNSET
    """ Tekrar arama sayısı. Meşgul, ulaşılamıyor, cevap yok gibi durumlarda numaranın kaç defa daha aranacağını
    belirtir. """
    webhook_url: str | Unset = UNSET
    """ Tuşlamaların bildirileceği URL. Doluysa tüm tuşlamalar bu URL'e gönderilir. Kampanya oluşturulurken bu URL'e
    boş bir POST request'i gönderilip 200 dönmesi beklenir, bu şekilde URL'i doğruluyoruz. Aranan kişi tuşlama
    yaptıktan sonra bir yere yönlenmeyecekse, sadece tuşlamayı kaydetmek istiyorsanız, tuşa hedef olarak anons
    verebilirsiniz. """
    digit_target_0: str | Unset = UNSET
    """ Aranan kişi 0 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_1: str | Unset = UNSET
    """ Aranan kişi 1 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_2: str | Unset = UNSET
    """ Aranan kişi 2 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_3: str | Unset = UNSET
    """ Aranan kişi 3 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_4: str | Unset = UNSET
    """ Aranan kişi 4 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_5: str | Unset = UNSET
    """ Aranan kişi 5 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_6: str | Unset = UNSET
    """ Aranan kişi 6 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_7: str | Unset = UNSET
    """ Aranan kişi 7 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_8: str | Unset = UNSET
    """ Aranan kişi 8 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_9: str | Unset = UNSET
    """ Aranan kişi 9 tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_star: str | Unset = UNSET
    """ Aranan kişi yıldız (*) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz
    hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_target_square: str | Unset = UNSET
    """ Aranan kişi kare (#) tuşuna bastığında yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz
    hedeflerin listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    timeout_target: str | Unset = UNSET
    """ Aranan kişi ses kaydını dinledikten sonra digit_timeout süresi içinde bir tuşa basmadığında ve retry_count
    adedi kadar tekrar denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin
    listesi: 0-9, star, square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    invalid_target: str | Unset = UNSET
    """ Aranan kişi ses kaydını dinledikten sonra hatalı bir tuşa bastığında ve retry_count adedi kadar tekrar
    denemenin sonunda yönlendirilecek hedef (gerçekleşecek eylem). Verebileceğiniz hedeflerin listesi: 0-9, star,
    square, timeout, invalid. En az birisi için hedef verilmesi zorunludur. """
    digit_retries: int | Unset = UNSET
    """ Tuşlama tekrar sayısı. Geçersiz tuşlama yapıldığında veya hiç tuşlama yapılmayıp digit_timeout süresi
    dolduğunda, ilgili uyarı okunup Menü baştan okunur. """
    digit_timeout: int | Unset = UNSET
    """ Opsiyonel. Min:1, Maks:10, Varsayılan 4'tür. Ses kaydı dinletildikten sonra burada belirtilen süre kadar
    bekletilip senaryoya göre ya zaman aşımı hedefine aktarılır ya da menü baştan okutulur. """
    is_commercial: bool | Unset = UNSET
    """ Opsiyonel. true | false değeri alır. Varsayılan false. Ticari gönderimlerde true olarak belirlemelisiniz.
    """
    iys_recipient_type: str | Unset = UNSET
    """ "BIREYSEL" ya da "TACIR" olmalıdır. Ticari gönderimlerde bu alanı zorunlu olarak göndermelisiniz. """
    iys_brand_code: str | Unset = UNSET
    """ Sistemde kayıtlı ve onaylı başlıklarınızdan birinin "İYS Marka Kodu" değeri olmalıdır. Ticari gönderimlerde
    bu alanı zorunlu olarak göndermelisiniz. """
    recording_enabled: bool | Unset = UNSET
    """ Arama başlar başlamaz kayıt yapılmasını istiyorsanız bu parametreye "true" (String) ya da "t" vermelisiniz.
    """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.create_ivr_campaign_body_phone_list_item import CreateIvrCampaignBodyPhoneListItem # noqa: PLC0415
        call_type = self.call_type

        name = self.name

        phone_list = []
        for phone_list_item_data in self.phone_list:
            phone_list_item = phone_list_item_data.to_dict()
            phone_list.append(phone_list_item)



        queue_number = self.queue_number

        thread_multiplier = self.thread_multiplier

        max_thread_count = self.max_thread_count

        date_range_begin = self.date_range_begin

        date_range_end = self.date_range_end

        time_range_begin = self.time_range_begin

        time_range_end = self.time_range_end

        active_days: list[int] | Unset = UNSET
        if not isinstance(self.active_days, Unset):
            active_days = self.active_days



        ring_timeout = self.ring_timeout

        cli = self.cli

        welcome_announcement_id = self.welcome_announcement_id

        call_retries = self.call_retries

        webhook_url = self.webhook_url

        digit_target_0 = self.digit_target_0

        digit_target_1 = self.digit_target_1

        digit_target_2 = self.digit_target_2

        digit_target_3 = self.digit_target_3

        digit_target_4 = self.digit_target_4

        digit_target_5 = self.digit_target_5

        digit_target_6 = self.digit_target_6

        digit_target_7 = self.digit_target_7

        digit_target_8 = self.digit_target_8

        digit_target_9 = self.digit_target_9

        digit_target_star = self.digit_target_star

        digit_target_square = self.digit_target_square

        timeout_target = self.timeout_target

        invalid_target = self.invalid_target

        digit_retries = self.digit_retries

        digit_timeout = self.digit_timeout

        is_commercial = self.is_commercial

        iys_recipient_type = self.iys_recipient_type

        iys_brand_code = self.iys_brand_code

        recording_enabled = self.recording_enabled


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "call_type": call_type,
            "name": name,
            "phone_list": phone_list,
        })
        if queue_number is not UNSET:
            field_dict["queue_number"] = queue_number
        if thread_multiplier is not UNSET:
            field_dict["thread_multiplier"] = thread_multiplier
        if max_thread_count is not UNSET:
            field_dict["max_thread_count"] = max_thread_count
        if date_range_begin is not UNSET:
            field_dict["date_range_begin"] = date_range_begin
        if date_range_end is not UNSET:
            field_dict["date_range_end"] = date_range_end
        if time_range_begin is not UNSET:
            field_dict["time_range_begin"] = time_range_begin
        if time_range_end is not UNSET:
            field_dict["time_range_end"] = time_range_end
        if active_days is not UNSET:
            field_dict["active_days"] = active_days
        if ring_timeout is not UNSET:
            field_dict["ring_timeout"] = ring_timeout
        if cli is not UNSET:
            field_dict["cli"] = cli
        if welcome_announcement_id is not UNSET:
            field_dict["welcome_announcement_id"] = welcome_announcement_id
        if call_retries is not UNSET:
            field_dict["call_retries"] = call_retries
        if webhook_url is not UNSET:
            field_dict["webhook_url"] = webhook_url
        if digit_target_0 is not UNSET:
            field_dict["digit_target_0"] = digit_target_0
        if digit_target_1 is not UNSET:
            field_dict["digit_target_1"] = digit_target_1
        if digit_target_2 is not UNSET:
            field_dict["digit_target_2"] = digit_target_2
        if digit_target_3 is not UNSET:
            field_dict["digit_target_3"] = digit_target_3
        if digit_target_4 is not UNSET:
            field_dict["digit_target_4"] = digit_target_4
        if digit_target_5 is not UNSET:
            field_dict["digit_target_5"] = digit_target_5
        if digit_target_6 is not UNSET:
            field_dict["digit_target_6"] = digit_target_6
        if digit_target_7 is not UNSET:
            field_dict["digit_target_7"] = digit_target_7
        if digit_target_8 is not UNSET:
            field_dict["digit_target_8"] = digit_target_8
        if digit_target_9 is not UNSET:
            field_dict["digit_target_9"] = digit_target_9
        if digit_target_star is not UNSET:
            field_dict["digit_target_star"] = digit_target_star
        if digit_target_square is not UNSET:
            field_dict["digit_target_square"] = digit_target_square
        if timeout_target is not UNSET:
            field_dict["timeout_target"] = timeout_target
        if invalid_target is not UNSET:
            field_dict["invalid_target"] = invalid_target
        if digit_retries is not UNSET:
            field_dict["digit_retries"] = digit_retries
        if digit_timeout is not UNSET:
            field_dict["digit_timeout"] = digit_timeout
        if is_commercial is not UNSET:
            field_dict["is_commercial"] = is_commercial
        if iys_recipient_type is not UNSET:
            field_dict["iys_recipient_type"] = iys_recipient_type
        if iys_brand_code is not UNSET:
            field_dict["iys_brand_code"] = iys_brand_code
        if recording_enabled is not UNSET:
            field_dict["recording_enabled"] = recording_enabled

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.create_ivr_campaign_body_phone_list_item import CreateIvrCampaignBodyPhoneListItem # noqa: PLC0415
        d = dict(src_dict)
        call_type = d.pop("call_type")

        name = d.pop("name")

        phone_list = []
        _phone_list = d.pop("phone_list")
        for phone_list_item_data in (_phone_list):
            phone_list_item = CreateIvrCampaignBodyPhoneListItem.from_dict(phone_list_item_data)



            phone_list.append(phone_list_item)


        queue_number = d.pop("queue_number", UNSET)

        thread_multiplier = d.pop("thread_multiplier", UNSET)

        max_thread_count = d.pop("max_thread_count", UNSET)

        date_range_begin = d.pop("date_range_begin", UNSET)

        date_range_end = d.pop("date_range_end", UNSET)

        time_range_begin = d.pop("time_range_begin", UNSET)

        time_range_end = d.pop("time_range_end", UNSET)

        active_days = cast(list[int], d.pop("active_days", UNSET))


        ring_timeout = d.pop("ring_timeout", UNSET)

        cli = d.pop("cli", UNSET)

        welcome_announcement_id = d.pop("welcome_announcement_id", UNSET)

        call_retries = d.pop("call_retries", UNSET)

        webhook_url = d.pop("webhook_url", UNSET)

        digit_target_0 = d.pop("digit_target_0", UNSET)

        digit_target_1 = d.pop("digit_target_1", UNSET)

        digit_target_2 = d.pop("digit_target_2", UNSET)

        digit_target_3 = d.pop("digit_target_3", UNSET)

        digit_target_4 = d.pop("digit_target_4", UNSET)

        digit_target_5 = d.pop("digit_target_5", UNSET)

        digit_target_6 = d.pop("digit_target_6", UNSET)

        digit_target_7 = d.pop("digit_target_7", UNSET)

        digit_target_8 = d.pop("digit_target_8", UNSET)

        digit_target_9 = d.pop("digit_target_9", UNSET)

        digit_target_star = d.pop("digit_target_star", UNSET)

        digit_target_square = d.pop("digit_target_square", UNSET)

        timeout_target = d.pop("timeout_target", UNSET)

        invalid_target = d.pop("invalid_target", UNSET)

        digit_retries = d.pop("digit_retries", UNSET)

        digit_timeout = d.pop("digit_timeout", UNSET)

        is_commercial = d.pop("is_commercial", UNSET)

        iys_recipient_type = d.pop("iys_recipient_type", UNSET)

        iys_brand_code = d.pop("iys_brand_code", UNSET)

        recording_enabled = d.pop("recording_enabled", UNSET)

        create_ivr_campaign_body = cls(
            call_type=call_type,
            name=name,
            phone_list=phone_list,
            queue_number=queue_number,
            thread_multiplier=thread_multiplier,
            max_thread_count=max_thread_count,
            date_range_begin=date_range_begin,
            date_range_end=date_range_end,
            time_range_begin=time_range_begin,
            time_range_end=time_range_end,
            active_days=active_days,
            ring_timeout=ring_timeout,
            cli=cli,
            welcome_announcement_id=welcome_announcement_id,
            call_retries=call_retries,
            webhook_url=webhook_url,
            digit_target_0=digit_target_0,
            digit_target_1=digit_target_1,
            digit_target_2=digit_target_2,
            digit_target_3=digit_target_3,
            digit_target_4=digit_target_4,
            digit_target_5=digit_target_5,
            digit_target_6=digit_target_6,
            digit_target_7=digit_target_7,
            digit_target_8=digit_target_8,
            digit_target_9=digit_target_9,
            digit_target_star=digit_target_star,
            digit_target_square=digit_target_square,
            timeout_target=timeout_target,
            invalid_target=invalid_target,
            digit_retries=digit_retries,
            digit_timeout=digit_timeout,
            is_commercial=is_commercial,
            iys_recipient_type=iys_recipient_type,
            iys_brand_code=iys_brand_code,
            recording_enabled=recording_enabled,
        )


        create_ivr_campaign_body.additional_properties = d
        return create_ivr_campaign_body

    @property
    def additional_keys(self) -> list[str]:
        return list(self.additional_properties.keys())

    def __getitem__(self, key: str) -> Any:
        return self.additional_properties[key]

    def __setitem__(self, key: str, value: Any) -> None:
        self.additional_properties[key] = value

    def __delitem__(self, key: str) -> None:
        del self.additional_properties[key]

    def __contains__(self, key: str) -> bool:
        return key in self.additional_properties
