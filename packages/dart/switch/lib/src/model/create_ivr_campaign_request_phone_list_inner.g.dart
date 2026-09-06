// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ivr_campaign_request_phone_list_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIvrCampaignRequestPhoneListInner
    extends CreateIvrCampaignRequestPhoneListInner {
  @override
  final String? phone;
  @override
  final String? phrase;
  @override
  final String? lang;

  factory _$CreateIvrCampaignRequestPhoneListInner(
          [void Function(CreateIvrCampaignRequestPhoneListInnerBuilder)?
              updates]) =>
      (CreateIvrCampaignRequestPhoneListInnerBuilder()..update(updates))
          ._build();

  _$CreateIvrCampaignRequestPhoneListInner._(
      {this.phone, this.phrase, this.lang})
      : super._();
  @override
  CreateIvrCampaignRequestPhoneListInner rebuild(
          void Function(CreateIvrCampaignRequestPhoneListInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIvrCampaignRequestPhoneListInnerBuilder toBuilder() =>
      CreateIvrCampaignRequestPhoneListInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIvrCampaignRequestPhoneListInner &&
        phone == other.phone &&
        phrase == other.phrase &&
        lang == other.lang;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, phrase.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CreateIvrCampaignRequestPhoneListInner')
          ..add('phone', phone)
          ..add('phrase', phrase)
          ..add('lang', lang))
        .toString();
  }
}

class CreateIvrCampaignRequestPhoneListInnerBuilder
    implements
        Builder<CreateIvrCampaignRequestPhoneListInner,
            CreateIvrCampaignRequestPhoneListInnerBuilder> {
  _$CreateIvrCampaignRequestPhoneListInner? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _phrase;
  String? get phrase => _$this._phrase;
  set phrase(String? phrase) => _$this._phrase = phrase;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  CreateIvrCampaignRequestPhoneListInnerBuilder() {
    CreateIvrCampaignRequestPhoneListInner._defaults(this);
  }

  CreateIvrCampaignRequestPhoneListInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _phrase = $v.phrase;
      _lang = $v.lang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIvrCampaignRequestPhoneListInner other) {
    _$v = other as _$CreateIvrCampaignRequestPhoneListInner;
  }

  @override
  void update(
      void Function(CreateIvrCampaignRequestPhoneListInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIvrCampaignRequestPhoneListInner build() => _build();

  _$CreateIvrCampaignRequestPhoneListInner _build() {
    final _$result = _$v ??
        _$CreateIvrCampaignRequestPhoneListInner._(
          phone: phone,
          phrase: phrase,
          lang: lang,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
