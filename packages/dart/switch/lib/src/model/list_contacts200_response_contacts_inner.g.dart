// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_contacts200_response_contacts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContacts200ResponseContactsInner
    extends ListContacts200ResponseContactsInner {
  @override
  final int id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String? tckn;
  @override
  final String? description;
  @override
  final String phone;
  @override
  final String? phone1;
  @override
  final String email;
  @override
  final String? title;
  @override
  final String? phone2;
  @override
  final String? fax;
  @override
  final String? gender;
  @override
  final String? birthday;
  @override
  final bool? birthdaySms;
  @override
  final String? weddingday;
  @override
  final bool? weddingdaySms;
  @override
  final String? note1;
  @override
  final String? note2;
  @override
  final String? note3;
  @override
  final String? note4;
  @override
  final String? companyName;
  @override
  final int? monthlySmsDay;
  @override
  final String? monthlySmsMessage;
  @override
  final BuiltList<int>? groupIds;

  factory _$ListContacts200ResponseContactsInner(
          [void Function(ListContacts200ResponseContactsInnerBuilder)?
              updates]) =>
      (ListContacts200ResponseContactsInnerBuilder()..update(updates))._build();

  _$ListContacts200ResponseContactsInner._(
      {required this.id,
      required this.name,
      required this.surname,
      this.tckn,
      this.description,
      required this.phone,
      this.phone1,
      required this.email,
      this.title,
      this.phone2,
      this.fax,
      this.gender,
      this.birthday,
      this.birthdaySms,
      this.weddingday,
      this.weddingdaySms,
      this.note1,
      this.note2,
      this.note3,
      this.note4,
      this.companyName,
      this.monthlySmsDay,
      this.monthlySmsMessage,
      this.groupIds})
      : super._();
  @override
  ListContacts200ResponseContactsInner rebuild(
          void Function(ListContacts200ResponseContactsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListContacts200ResponseContactsInnerBuilder toBuilder() =>
      ListContacts200ResponseContactsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListContacts200ResponseContactsInner &&
        id == other.id &&
        name == other.name &&
        surname == other.surname &&
        tckn == other.tckn &&
        description == other.description &&
        phone == other.phone &&
        phone1 == other.phone1 &&
        email == other.email &&
        title == other.title &&
        phone2 == other.phone2 &&
        fax == other.fax &&
        gender == other.gender &&
        birthday == other.birthday &&
        birthdaySms == other.birthdaySms &&
        weddingday == other.weddingday &&
        weddingdaySms == other.weddingdaySms &&
        note1 == other.note1 &&
        note2 == other.note2 &&
        note3 == other.note3 &&
        note4 == other.note4 &&
        companyName == other.companyName &&
        monthlySmsDay == other.monthlySmsDay &&
        monthlySmsMessage == other.monthlySmsMessage &&
        groupIds == other.groupIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, tckn.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, phone1.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, phone2.hashCode);
    _$hash = $jc(_$hash, fax.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, birthdaySms.hashCode);
    _$hash = $jc(_$hash, weddingday.hashCode);
    _$hash = $jc(_$hash, weddingdaySms.hashCode);
    _$hash = $jc(_$hash, note1.hashCode);
    _$hash = $jc(_$hash, note2.hashCode);
    _$hash = $jc(_$hash, note3.hashCode);
    _$hash = $jc(_$hash, note4.hashCode);
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, monthlySmsDay.hashCode);
    _$hash = $jc(_$hash, monthlySmsMessage.hashCode);
    _$hash = $jc(_$hash, groupIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListContacts200ResponseContactsInner')
          ..add('id', id)
          ..add('name', name)
          ..add('surname', surname)
          ..add('tckn', tckn)
          ..add('description', description)
          ..add('phone', phone)
          ..add('phone1', phone1)
          ..add('email', email)
          ..add('title', title)
          ..add('phone2', phone2)
          ..add('fax', fax)
          ..add('gender', gender)
          ..add('birthday', birthday)
          ..add('birthdaySms', birthdaySms)
          ..add('weddingday', weddingday)
          ..add('weddingdaySms', weddingdaySms)
          ..add('note1', note1)
          ..add('note2', note2)
          ..add('note3', note3)
          ..add('note4', note4)
          ..add('companyName', companyName)
          ..add('monthlySmsDay', monthlySmsDay)
          ..add('monthlySmsMessage', monthlySmsMessage)
          ..add('groupIds', groupIds))
        .toString();
  }
}

class ListContacts200ResponseContactsInnerBuilder
    implements
        Builder<ListContacts200ResponseContactsInner,
            ListContacts200ResponseContactsInnerBuilder> {
  _$ListContacts200ResponseContactsInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _tckn;
  String? get tckn => _$this._tckn;
  set tckn(String? tckn) => _$this._tckn = tckn;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _phone1;
  String? get phone1 => _$this._phone1;
  set phone1(String? phone1) => _$this._phone1 = phone1;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _phone2;
  String? get phone2 => _$this._phone2;
  set phone2(String? phone2) => _$this._phone2 = phone2;

  String? _fax;
  String? get fax => _$this._fax;
  set fax(String? fax) => _$this._fax = fax;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  bool? _birthdaySms;
  bool? get birthdaySms => _$this._birthdaySms;
  set birthdaySms(bool? birthdaySms) => _$this._birthdaySms = birthdaySms;

  String? _weddingday;
  String? get weddingday => _$this._weddingday;
  set weddingday(String? weddingday) => _$this._weddingday = weddingday;

  bool? _weddingdaySms;
  bool? get weddingdaySms => _$this._weddingdaySms;
  set weddingdaySms(bool? weddingdaySms) =>
      _$this._weddingdaySms = weddingdaySms;

  String? _note1;
  String? get note1 => _$this._note1;
  set note1(String? note1) => _$this._note1 = note1;

  String? _note2;
  String? get note2 => _$this._note2;
  set note2(String? note2) => _$this._note2 = note2;

  String? _note3;
  String? get note3 => _$this._note3;
  set note3(String? note3) => _$this._note3 = note3;

  String? _note4;
  String? get note4 => _$this._note4;
  set note4(String? note4) => _$this._note4 = note4;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  int? _monthlySmsDay;
  int? get monthlySmsDay => _$this._monthlySmsDay;
  set monthlySmsDay(int? monthlySmsDay) =>
      _$this._monthlySmsDay = monthlySmsDay;

  String? _monthlySmsMessage;
  String? get monthlySmsMessage => _$this._monthlySmsMessage;
  set monthlySmsMessage(String? monthlySmsMessage) =>
      _$this._monthlySmsMessage = monthlySmsMessage;

  ListBuilder<int>? _groupIds;
  ListBuilder<int> get groupIds => _$this._groupIds ??= ListBuilder<int>();
  set groupIds(ListBuilder<int>? groupIds) => _$this._groupIds = groupIds;

  ListContacts200ResponseContactsInnerBuilder() {
    ListContacts200ResponseContactsInner._defaults(this);
  }

  ListContacts200ResponseContactsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _surname = $v.surname;
      _tckn = $v.tckn;
      _description = $v.description;
      _phone = $v.phone;
      _phone1 = $v.phone1;
      _email = $v.email;
      _title = $v.title;
      _phone2 = $v.phone2;
      _fax = $v.fax;
      _gender = $v.gender;
      _birthday = $v.birthday;
      _birthdaySms = $v.birthdaySms;
      _weddingday = $v.weddingday;
      _weddingdaySms = $v.weddingdaySms;
      _note1 = $v.note1;
      _note2 = $v.note2;
      _note3 = $v.note3;
      _note4 = $v.note4;
      _companyName = $v.companyName;
      _monthlySmsDay = $v.monthlySmsDay;
      _monthlySmsMessage = $v.monthlySmsMessage;
      _groupIds = $v.groupIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListContacts200ResponseContactsInner other) {
    _$v = other as _$ListContacts200ResponseContactsInner;
  }

  @override
  void update(
      void Function(ListContacts200ResponseContactsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListContacts200ResponseContactsInner build() => _build();

  _$ListContacts200ResponseContactsInner _build() {
    _$ListContacts200ResponseContactsInner _$result;
    try {
      _$result = _$v ??
          _$ListContacts200ResponseContactsInner._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ListContacts200ResponseContactsInner', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ListContacts200ResponseContactsInner', 'name'),
            surname: BuiltValueNullFieldError.checkNotNull(
                surname, r'ListContacts200ResponseContactsInner', 'surname'),
            tckn: tckn,
            description: description,
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'ListContacts200ResponseContactsInner', 'phone'),
            phone1: phone1,
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ListContacts200ResponseContactsInner', 'email'),
            title: title,
            phone2: phone2,
            fax: fax,
            gender: gender,
            birthday: birthday,
            birthdaySms: birthdaySms,
            weddingday: weddingday,
            weddingdaySms: weddingdaySms,
            note1: note1,
            note2: note2,
            note3: note3,
            note4: note4,
            companyName: companyName,
            monthlySmsDay: monthlySmsDay,
            monthlySmsMessage: monthlySmsMessage,
            groupIds: _groupIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupIds';
        _groupIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListContacts200ResponseContactsInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
