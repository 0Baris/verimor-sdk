// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_crm_integrations200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetCrmIntegrations200ResponseRingingEnum
    _$getCrmIntegrations200ResponseRingingEnum_on_ =
    const GetCrmIntegrations200ResponseRingingEnum._('on_');
const GetCrmIntegrations200ResponseRingingEnum
    _$getCrmIntegrations200ResponseRingingEnum_off =
    const GetCrmIntegrations200ResponseRingingEnum._('off');

GetCrmIntegrations200ResponseRingingEnum
    _$getCrmIntegrations200ResponseRingingEnumValueOf(String name) {
  switch (name) {
    case 'on_':
      return _$getCrmIntegrations200ResponseRingingEnum_on_;
    case 'off':
      return _$getCrmIntegrations200ResponseRingingEnum_off;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetCrmIntegrations200ResponseRingingEnum>
    _$getCrmIntegrations200ResponseRingingEnumValues = BuiltSet<
        GetCrmIntegrations200ResponseRingingEnum>(const <GetCrmIntegrations200ResponseRingingEnum>[
  _$getCrmIntegrations200ResponseRingingEnum_on_,
  _$getCrmIntegrations200ResponseRingingEnum_off,
]);

const GetCrmIntegrations200ResponseAnsweredEnum
    _$getCrmIntegrations200ResponseAnsweredEnum_on_ =
    const GetCrmIntegrations200ResponseAnsweredEnum._('on_');
const GetCrmIntegrations200ResponseAnsweredEnum
    _$getCrmIntegrations200ResponseAnsweredEnum_off =
    const GetCrmIntegrations200ResponseAnsweredEnum._('off');

GetCrmIntegrations200ResponseAnsweredEnum
    _$getCrmIntegrations200ResponseAnsweredEnumValueOf(String name) {
  switch (name) {
    case 'on_':
      return _$getCrmIntegrations200ResponseAnsweredEnum_on_;
    case 'off':
      return _$getCrmIntegrations200ResponseAnsweredEnum_off;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetCrmIntegrations200ResponseAnsweredEnum>
    _$getCrmIntegrations200ResponseAnsweredEnumValues = BuiltSet<
        GetCrmIntegrations200ResponseAnsweredEnum>(const <GetCrmIntegrations200ResponseAnsweredEnum>[
  _$getCrmIntegrations200ResponseAnsweredEnum_on_,
  _$getCrmIntegrations200ResponseAnsweredEnum_off,
]);

const GetCrmIntegrations200ResponseHangupEnum
    _$getCrmIntegrations200ResponseHangupEnum_on_ =
    const GetCrmIntegrations200ResponseHangupEnum._('on_');
const GetCrmIntegrations200ResponseHangupEnum
    _$getCrmIntegrations200ResponseHangupEnum_off =
    const GetCrmIntegrations200ResponseHangupEnum._('off');

GetCrmIntegrations200ResponseHangupEnum
    _$getCrmIntegrations200ResponseHangupEnumValueOf(String name) {
  switch (name) {
    case 'on_':
      return _$getCrmIntegrations200ResponseHangupEnum_on_;
    case 'off':
      return _$getCrmIntegrations200ResponseHangupEnum_off;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetCrmIntegrations200ResponseHangupEnum>
    _$getCrmIntegrations200ResponseHangupEnumValues = BuiltSet<
        GetCrmIntegrations200ResponseHangupEnum>(const <GetCrmIntegrations200ResponseHangupEnum>[
  _$getCrmIntegrations200ResponseHangupEnum_on_,
  _$getCrmIntegrations200ResponseHangupEnum_off,
]);

Serializer<GetCrmIntegrations200ResponseRingingEnum>
    _$getCrmIntegrations200ResponseRingingEnumSerializer =
    _$GetCrmIntegrations200ResponseRingingEnumSerializer();
Serializer<GetCrmIntegrations200ResponseAnsweredEnum>
    _$getCrmIntegrations200ResponseAnsweredEnumSerializer =
    _$GetCrmIntegrations200ResponseAnsweredEnumSerializer();
Serializer<GetCrmIntegrations200ResponseHangupEnum>
    _$getCrmIntegrations200ResponseHangupEnumSerializer =
    _$GetCrmIntegrations200ResponseHangupEnumSerializer();

class _$GetCrmIntegrations200ResponseRingingEnumSerializer
    implements PrimitiveSerializer<GetCrmIntegrations200ResponseRingingEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'on_': 'on',
    'off': 'off',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on': 'on_',
    'off': 'off',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCrmIntegrations200ResponseRingingEnum
  ];
  @override
  final String wireName = 'GetCrmIntegrations200ResponseRingingEnum';

  @override
  Object serialize(Serializers serializers,
          GetCrmIntegrations200ResponseRingingEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCrmIntegrations200ResponseRingingEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCrmIntegrations200ResponseRingingEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCrmIntegrations200ResponseAnsweredEnumSerializer
    implements PrimitiveSerializer<GetCrmIntegrations200ResponseAnsweredEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'on_': 'on',
    'off': 'off',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on': 'on_',
    'off': 'off',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCrmIntegrations200ResponseAnsweredEnum
  ];
  @override
  final String wireName = 'GetCrmIntegrations200ResponseAnsweredEnum';

  @override
  Object serialize(Serializers serializers,
          GetCrmIntegrations200ResponseAnsweredEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCrmIntegrations200ResponseAnsweredEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCrmIntegrations200ResponseAnsweredEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCrmIntegrations200ResponseHangupEnumSerializer
    implements PrimitiveSerializer<GetCrmIntegrations200ResponseHangupEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'on_': 'on',
    'off': 'off',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on': 'on_',
    'off': 'off',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCrmIntegrations200ResponseHangupEnum
  ];
  @override
  final String wireName = 'GetCrmIntegrations200ResponseHangupEnum';

  @override
  Object serialize(Serializers serializers,
          GetCrmIntegrations200ResponseHangupEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCrmIntegrations200ResponseHangupEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCrmIntegrations200ResponseHangupEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCrmIntegrations200Response extends GetCrmIntegrations200Response {
  @override
  final GetCrmIntegrations200ResponseRingingEnum ringing;
  @override
  final GetCrmIntegrations200ResponseAnsweredEnum answered;
  @override
  final GetCrmIntegrations200ResponseHangupEnum hangup;
  @override
  final String notificationUrl;

  factory _$GetCrmIntegrations200Response(
          [void Function(GetCrmIntegrations200ResponseBuilder)? updates]) =>
      (GetCrmIntegrations200ResponseBuilder()..update(updates))._build();

  _$GetCrmIntegrations200Response._(
      {required this.ringing,
      required this.answered,
      required this.hangup,
      required this.notificationUrl})
      : super._();
  @override
  GetCrmIntegrations200Response rebuild(
          void Function(GetCrmIntegrations200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCrmIntegrations200ResponseBuilder toBuilder() =>
      GetCrmIntegrations200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCrmIntegrations200Response &&
        ringing == other.ringing &&
        answered == other.answered &&
        hangup == other.hangup &&
        notificationUrl == other.notificationUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ringing.hashCode);
    _$hash = $jc(_$hash, answered.hashCode);
    _$hash = $jc(_$hash, hangup.hashCode);
    _$hash = $jc(_$hash, notificationUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCrmIntegrations200Response')
          ..add('ringing', ringing)
          ..add('answered', answered)
          ..add('hangup', hangup)
          ..add('notificationUrl', notificationUrl))
        .toString();
  }
}

class GetCrmIntegrations200ResponseBuilder
    implements
        Builder<GetCrmIntegrations200Response,
            GetCrmIntegrations200ResponseBuilder> {
  _$GetCrmIntegrations200Response? _$v;

  GetCrmIntegrations200ResponseRingingEnum? _ringing;
  GetCrmIntegrations200ResponseRingingEnum? get ringing => _$this._ringing;
  set ringing(GetCrmIntegrations200ResponseRingingEnum? ringing) =>
      _$this._ringing = ringing;

  GetCrmIntegrations200ResponseAnsweredEnum? _answered;
  GetCrmIntegrations200ResponseAnsweredEnum? get answered => _$this._answered;
  set answered(GetCrmIntegrations200ResponseAnsweredEnum? answered) =>
      _$this._answered = answered;

  GetCrmIntegrations200ResponseHangupEnum? _hangup;
  GetCrmIntegrations200ResponseHangupEnum? get hangup => _$this._hangup;
  set hangup(GetCrmIntegrations200ResponseHangupEnum? hangup) =>
      _$this._hangup = hangup;

  String? _notificationUrl;
  String? get notificationUrl => _$this._notificationUrl;
  set notificationUrl(String? notificationUrl) =>
      _$this._notificationUrl = notificationUrl;

  GetCrmIntegrations200ResponseBuilder() {
    GetCrmIntegrations200Response._defaults(this);
  }

  GetCrmIntegrations200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ringing = $v.ringing;
      _answered = $v.answered;
      _hangup = $v.hangup;
      _notificationUrl = $v.notificationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCrmIntegrations200Response other) {
    _$v = other as _$GetCrmIntegrations200Response;
  }

  @override
  void update(void Function(GetCrmIntegrations200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCrmIntegrations200Response build() => _build();

  _$GetCrmIntegrations200Response _build() {
    final _$result = _$v ??
        _$GetCrmIntegrations200Response._(
          ringing: BuiltValueNullFieldError.checkNotNull(
              ringing, r'GetCrmIntegrations200Response', 'ringing'),
          answered: BuiltValueNullFieldError.checkNotNull(
              answered, r'GetCrmIntegrations200Response', 'answered'),
          hangup: BuiltValueNullFieldError.checkNotNull(
              hangup, r'GetCrmIntegrations200Response', 'hangup'),
          notificationUrl: BuiltValueNullFieldError.checkNotNull(
              notificationUrl,
              r'GetCrmIntegrations200Response',
              'notificationUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
