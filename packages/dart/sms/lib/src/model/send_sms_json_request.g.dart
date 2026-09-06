// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_sms_json_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SendSmsJsonRequestDatacodingEnum
    _$sendSmsJsonRequestDatacodingEnum_number0 =
    const SendSmsJsonRequestDatacodingEnum._('number0');
const SendSmsJsonRequestDatacodingEnum
    _$sendSmsJsonRequestDatacodingEnum_number1 =
    const SendSmsJsonRequestDatacodingEnum._('number1');
const SendSmsJsonRequestDatacodingEnum
    _$sendSmsJsonRequestDatacodingEnum_number2 =
    const SendSmsJsonRequestDatacodingEnum._('number2');

SendSmsJsonRequestDatacodingEnum _$sendSmsJsonRequestDatacodingEnumValueOf(
    String name) {
  switch (name) {
    case 'number0':
      return _$sendSmsJsonRequestDatacodingEnum_number0;
    case 'number1':
      return _$sendSmsJsonRequestDatacodingEnum_number1;
    case 'number2':
      return _$sendSmsJsonRequestDatacodingEnum_number2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SendSmsJsonRequestDatacodingEnum>
    _$sendSmsJsonRequestDatacodingEnumValues = BuiltSet<
        SendSmsJsonRequestDatacodingEnum>(const <SendSmsJsonRequestDatacodingEnum>[
  _$sendSmsJsonRequestDatacodingEnum_number0,
  _$sendSmsJsonRequestDatacodingEnum_number1,
  _$sendSmsJsonRequestDatacodingEnum_number2,
]);

Serializer<SendSmsJsonRequestDatacodingEnum>
    _$sendSmsJsonRequestDatacodingEnumSerializer =
    _$SendSmsJsonRequestDatacodingEnumSerializer();

class _$SendSmsJsonRequestDatacodingEnumSerializer
    implements PrimitiveSerializer<SendSmsJsonRequestDatacodingEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
  };

  @override
  final Iterable<Type> types = const <Type>[SendSmsJsonRequestDatacodingEnum];
  @override
  final String wireName = 'SendSmsJsonRequestDatacodingEnum';

  @override
  Object serialize(
          Serializers serializers, SendSmsJsonRequestDatacodingEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SendSmsJsonRequestDatacodingEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SendSmsJsonRequestDatacodingEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SendSmsJsonRequest extends SendSmsJsonRequest {
  @override
  final String username;
  @override
  final String password;
  @override
  final String? sourceAddr;
  @override
  final String? validFor;
  @override
  final SendSmsJsonRequestDatacodingEnum? datacoding;
  @override
  final bool? isCommercial;
  @override
  final String? iysRecipientType;
  @override
  final String? sendAt;
  @override
  final String? customId;
  @override
  final bool? addRet;
  @override
  final BuiltList<SendSmsJsonRequestMessagesInner> messages;

  factory _$SendSmsJsonRequest(
          [void Function(SendSmsJsonRequestBuilder)? updates]) =>
      (SendSmsJsonRequestBuilder()..update(updates))._build();

  _$SendSmsJsonRequest._(
      {required this.username,
      required this.password,
      this.sourceAddr,
      this.validFor,
      this.datacoding,
      this.isCommercial,
      this.iysRecipientType,
      this.sendAt,
      this.customId,
      this.addRet,
      required this.messages})
      : super._();
  @override
  SendSmsJsonRequest rebuild(
          void Function(SendSmsJsonRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendSmsJsonRequestBuilder toBuilder() =>
      SendSmsJsonRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendSmsJsonRequest &&
        username == other.username &&
        password == other.password &&
        sourceAddr == other.sourceAddr &&
        validFor == other.validFor &&
        datacoding == other.datacoding &&
        isCommercial == other.isCommercial &&
        iysRecipientType == other.iysRecipientType &&
        sendAt == other.sendAt &&
        customId == other.customId &&
        addRet == other.addRet &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, sourceAddr.hashCode);
    _$hash = $jc(_$hash, validFor.hashCode);
    _$hash = $jc(_$hash, datacoding.hashCode);
    _$hash = $jc(_$hash, isCommercial.hashCode);
    _$hash = $jc(_$hash, iysRecipientType.hashCode);
    _$hash = $jc(_$hash, sendAt.hashCode);
    _$hash = $jc(_$hash, customId.hashCode);
    _$hash = $jc(_$hash, addRet.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendSmsJsonRequest')
          ..add('username', username)
          ..add('password', password)
          ..add('sourceAddr', sourceAddr)
          ..add('validFor', validFor)
          ..add('datacoding', datacoding)
          ..add('isCommercial', isCommercial)
          ..add('iysRecipientType', iysRecipientType)
          ..add('sendAt', sendAt)
          ..add('customId', customId)
          ..add('addRet', addRet)
          ..add('messages', messages))
        .toString();
  }
}

class SendSmsJsonRequestBuilder
    implements Builder<SendSmsJsonRequest, SendSmsJsonRequestBuilder> {
  _$SendSmsJsonRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _sourceAddr;
  String? get sourceAddr => _$this._sourceAddr;
  set sourceAddr(String? sourceAddr) => _$this._sourceAddr = sourceAddr;

  String? _validFor;
  String? get validFor => _$this._validFor;
  set validFor(String? validFor) => _$this._validFor = validFor;

  SendSmsJsonRequestDatacodingEnum? _datacoding;
  SendSmsJsonRequestDatacodingEnum? get datacoding => _$this._datacoding;
  set datacoding(SendSmsJsonRequestDatacodingEnum? datacoding) =>
      _$this._datacoding = datacoding;

  bool? _isCommercial;
  bool? get isCommercial => _$this._isCommercial;
  set isCommercial(bool? isCommercial) => _$this._isCommercial = isCommercial;

  String? _iysRecipientType;
  String? get iysRecipientType => _$this._iysRecipientType;
  set iysRecipientType(String? iysRecipientType) =>
      _$this._iysRecipientType = iysRecipientType;

  String? _sendAt;
  String? get sendAt => _$this._sendAt;
  set sendAt(String? sendAt) => _$this._sendAt = sendAt;

  String? _customId;
  String? get customId => _$this._customId;
  set customId(String? customId) => _$this._customId = customId;

  bool? _addRet;
  bool? get addRet => _$this._addRet;
  set addRet(bool? addRet) => _$this._addRet = addRet;

  ListBuilder<SendSmsJsonRequestMessagesInner>? _messages;
  ListBuilder<SendSmsJsonRequestMessagesInner> get messages =>
      _$this._messages ??= ListBuilder<SendSmsJsonRequestMessagesInner>();
  set messages(ListBuilder<SendSmsJsonRequestMessagesInner>? messages) =>
      _$this._messages = messages;

  SendSmsJsonRequestBuilder() {
    SendSmsJsonRequest._defaults(this);
  }

  SendSmsJsonRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _sourceAddr = $v.sourceAddr;
      _validFor = $v.validFor;
      _datacoding = $v.datacoding;
      _isCommercial = $v.isCommercial;
      _iysRecipientType = $v.iysRecipientType;
      _sendAt = $v.sendAt;
      _customId = $v.customId;
      _addRet = $v.addRet;
      _messages = $v.messages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendSmsJsonRequest other) {
    _$v = other as _$SendSmsJsonRequest;
  }

  @override
  void update(void Function(SendSmsJsonRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendSmsJsonRequest build() => _build();

  _$SendSmsJsonRequest _build() {
    _$SendSmsJsonRequest _$result;
    try {
      _$result = _$v ??
          _$SendSmsJsonRequest._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'SendSmsJsonRequest', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'SendSmsJsonRequest', 'password'),
            sourceAddr: sourceAddr,
            validFor: validFor,
            datacoding: datacoding,
            isCommercial: isCommercial,
            iysRecipientType: iysRecipientType,
            sendAt: sendAt,
            customId: customId,
            addRet: addRet,
            messages: messages.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        messages.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SendSmsJsonRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
