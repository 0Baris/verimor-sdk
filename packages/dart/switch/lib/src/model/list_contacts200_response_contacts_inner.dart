//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_contacts200_response_contacts_inner.g.dart';

/// ListContacts200ResponseContactsInner
///
/// Properties:
/// * [id] - ID değeri. Bu değeri kullanarak Kişi silme veya güncelleme işlemlerini gerçekleştirebilirsiniz
/// * [name] - Ad
/// * [surname] - Soyad
/// * [tckn] - TC kimlik numarası
/// * [description] - Açıklama
/// * [phone] - GSM numarası 1
/// * [phone1] - GSM numarası 2
/// * [email] - E-posta adresi
/// * [title] - Unvan
/// * [phone2] - Ek telefon numarası
/// * [fax] - Fax numarası
/// * [gender] - Cinsiyet
/// * [birthday] - Doğum günü
/// * [birthdaySms] - Doğum gününde otomatik mesaj gönderimi. 'true' veya 'false' döner
/// * [weddingday] - Evlilik günü
/// * [weddingdaySms] - Evlilik gününde otomatik mesaj gönderimi. 'true' veya 'false' döner
/// * [note1] - Kişiyle ilgili notlar
/// * [note2] - Kişiyle ilgili notlar 2
/// * [note3] - Kişiyle ilgili notlar 3
/// * [note4] - Kişiyle ilgili notlar 4
/// * [companyName] - Firma adı
/// * [monthlySmsDay] - Kişiye aylık otomatik SMS gönderilecek gün. 0-31 arası rakam veya 'null' döner
/// * [monthlySmsMessage] - Aylık SMS mesajı
/// * [groupIds] - Kişinin eklendiği gruplar
@BuiltValue()
abstract class ListContacts200ResponseContactsInner implements Built<ListContacts200ResponseContactsInner, ListContacts200ResponseContactsInnerBuilder> {
  /// ID değeri. Bu değeri kullanarak Kişi silme veya güncelleme işlemlerini gerçekleştirebilirsiniz
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Ad
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Soyad
  @BuiltValueField(wireName: r'surname')
  String get surname;

  /// TC kimlik numarası
  @BuiltValueField(wireName: r'tckn')
  String? get tckn;

  /// Açıklama
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// GSM numarası 1
  @BuiltValueField(wireName: r'phone')
  String get phone;

  /// GSM numarası 2
  @BuiltValueField(wireName: r'phone1')
  String? get phone1;

  /// E-posta adresi
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Unvan
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Ek telefon numarası
  @BuiltValueField(wireName: r'phone2')
  String? get phone2;

  /// Fax numarası
  @BuiltValueField(wireName: r'fax')
  String? get fax;

  /// Cinsiyet
  @BuiltValueField(wireName: r'gender')
  String? get gender;

  /// Doğum günü
  @BuiltValueField(wireName: r'birthday')
  String? get birthday;

  /// Doğum gününde otomatik mesaj gönderimi. 'true' veya 'false' döner
  @BuiltValueField(wireName: r'birthday_sms')
  bool? get birthdaySms;

  /// Evlilik günü
  @BuiltValueField(wireName: r'weddingday')
  String? get weddingday;

  /// Evlilik gününde otomatik mesaj gönderimi. 'true' veya 'false' döner
  @BuiltValueField(wireName: r'weddingday_sms')
  bool? get weddingdaySms;

  /// Kişiyle ilgili notlar
  @BuiltValueField(wireName: r'note1')
  String? get note1;

  /// Kişiyle ilgili notlar 2
  @BuiltValueField(wireName: r'note2')
  String? get note2;

  /// Kişiyle ilgili notlar 3
  @BuiltValueField(wireName: r'note3')
  String? get note3;

  /// Kişiyle ilgili notlar 4
  @BuiltValueField(wireName: r'note4')
  String? get note4;

  /// Firma adı
  @BuiltValueField(wireName: r'company_name')
  String? get companyName;

  /// Kişiye aylık otomatik SMS gönderilecek gün. 0-31 arası rakam veya 'null' döner
  @BuiltValueField(wireName: r'monthly_sms_day')
  int? get monthlySmsDay;

  /// Aylık SMS mesajı
  @BuiltValueField(wireName: r'monthly_sms_message')
  String? get monthlySmsMessage;

  /// Kişinin eklendiği gruplar
  @BuiltValueField(wireName: r'group_ids')
  BuiltList<int>? get groupIds;

  ListContacts200ResponseContactsInner._();

  factory ListContacts200ResponseContactsInner([void updates(ListContacts200ResponseContactsInnerBuilder b)]) = _$ListContacts200ResponseContactsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListContacts200ResponseContactsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListContacts200ResponseContactsInner> get serializer => _$ListContacts200ResponseContactsInnerSerializer();
}

class _$ListContacts200ResponseContactsInnerSerializer implements PrimitiveSerializer<ListContacts200ResponseContactsInner> {
  @override
  final Iterable<Type> types = const [ListContacts200ResponseContactsInner, _$ListContacts200ResponseContactsInner];

  @override
  final String wireName = r'ListContacts200ResponseContactsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListContacts200ResponseContactsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'surname';
    yield serializers.serialize(
      object.surname,
      specifiedType: const FullType(String),
    );
    if (object.tckn != null) {
      yield r'tckn';
      yield serializers.serialize(
        object.tckn,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    if (object.phone1 != null) {
      yield r'phone1';
      yield serializers.serialize(
        object.phone1,
        specifiedType: const FullType(String),
      );
    }
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone2 != null) {
      yield r'phone2';
      yield serializers.serialize(
        object.phone2,
        specifiedType: const FullType(String),
      );
    }
    if (object.fax != null) {
      yield r'fax';
      yield serializers.serialize(
        object.fax,
        specifiedType: const FullType(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthday != null) {
      yield r'birthday';
      yield serializers.serialize(
        object.birthday,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthdaySms != null) {
      yield r'birthday_sms';
      yield serializers.serialize(
        object.birthdaySms,
        specifiedType: const FullType(bool),
      );
    }
    if (object.weddingday != null) {
      yield r'weddingday';
      yield serializers.serialize(
        object.weddingday,
        specifiedType: const FullType(String),
      );
    }
    if (object.weddingdaySms != null) {
      yield r'weddingday_sms';
      yield serializers.serialize(
        object.weddingdaySms,
        specifiedType: const FullType(bool),
      );
    }
    if (object.note1 != null) {
      yield r'note1';
      yield serializers.serialize(
        object.note1,
        specifiedType: const FullType(String),
      );
    }
    if (object.note2 != null) {
      yield r'note2';
      yield serializers.serialize(
        object.note2,
        specifiedType: const FullType(String),
      );
    }
    if (object.note3 != null) {
      yield r'note3';
      yield serializers.serialize(
        object.note3,
        specifiedType: const FullType(String),
      );
    }
    if (object.note4 != null) {
      yield r'note4';
      yield serializers.serialize(
        object.note4,
        specifiedType: const FullType(String),
      );
    }
    if (object.companyName != null) {
      yield r'company_name';
      yield serializers.serialize(
        object.companyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.monthlySmsDay != null) {
      yield r'monthly_sms_day';
      yield serializers.serialize(
        object.monthlySmsDay,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthlySmsMessage != null) {
      yield r'monthly_sms_message';
      yield serializers.serialize(
        object.monthlySmsMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupIds != null) {
      yield r'group_ids';
      yield serializers.serialize(
        object.groupIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListContacts200ResponseContactsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListContacts200ResponseContactsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'surname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surname = valueDes;
          break;
        case r'tckn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tckn = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'phone1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone1 = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'phone2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone2 = valueDes;
          break;
        case r'fax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fax = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gender = valueDes;
          break;
        case r'birthday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthday = valueDes;
          break;
        case r'birthday_sms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.birthdaySms = valueDes;
          break;
        case r'weddingday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.weddingday = valueDes;
          break;
        case r'weddingday_sms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.weddingdaySms = valueDes;
          break;
        case r'note1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note1 = valueDes;
          break;
        case r'note2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note2 = valueDes;
          break;
        case r'note3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note3 = valueDes;
          break;
        case r'note4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note4 = valueDes;
          break;
        case r'company_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.companyName = valueDes;
          break;
        case r'monthly_sms_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.monthlySmsDay = valueDes;
          break;
        case r'monthly_sms_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.monthlySmsMessage = valueDes;
          break;
        case r'group_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.groupIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListContacts200ResponseContactsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContacts200ResponseContactsInnerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

