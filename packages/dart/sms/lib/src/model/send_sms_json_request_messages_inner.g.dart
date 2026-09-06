// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_sms_json_request_messages_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendSmsJsonRequestMessagesInner
    extends SendSmsJsonRequestMessagesInner {
  @override
  final String dest;
  @override
  final String msg;
  @override
  final String? id;
  @override
  final String? iysRecipientType;

  factory _$SendSmsJsonRequestMessagesInner(
          [void Function(SendSmsJsonRequestMessagesInnerBuilder)? updates]) =>
      (SendSmsJsonRequestMessagesInnerBuilder()..update(updates))._build();

  _$SendSmsJsonRequestMessagesInner._(
      {required this.dest, required this.msg, this.id, this.iysRecipientType})
      : super._();
  @override
  SendSmsJsonRequestMessagesInner rebuild(
          void Function(SendSmsJsonRequestMessagesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendSmsJsonRequestMessagesInnerBuilder toBuilder() =>
      SendSmsJsonRequestMessagesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendSmsJsonRequestMessagesInner &&
        dest == other.dest &&
        msg == other.msg &&
        id == other.id &&
        iysRecipientType == other.iysRecipientType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dest.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, iysRecipientType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendSmsJsonRequestMessagesInner')
          ..add('dest', dest)
          ..add('msg', msg)
          ..add('id', id)
          ..add('iysRecipientType', iysRecipientType))
        .toString();
  }
}

class SendSmsJsonRequestMessagesInnerBuilder
    implements
        Builder<SendSmsJsonRequestMessagesInner,
            SendSmsJsonRequestMessagesInnerBuilder> {
  _$SendSmsJsonRequestMessagesInner? _$v;

  String? _dest;
  String? get dest => _$this._dest;
  set dest(String? dest) => _$this._dest = dest;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _iysRecipientType;
  String? get iysRecipientType => _$this._iysRecipientType;
  set iysRecipientType(String? iysRecipientType) =>
      _$this._iysRecipientType = iysRecipientType;

  SendSmsJsonRequestMessagesInnerBuilder() {
    SendSmsJsonRequestMessagesInner._defaults(this);
  }

  SendSmsJsonRequestMessagesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dest = $v.dest;
      _msg = $v.msg;
      _id = $v.id;
      _iysRecipientType = $v.iysRecipientType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendSmsJsonRequestMessagesInner other) {
    _$v = other as _$SendSmsJsonRequestMessagesInner;
  }

  @override
  void update(void Function(SendSmsJsonRequestMessagesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendSmsJsonRequestMessagesInner build() => _build();

  _$SendSmsJsonRequestMessagesInner _build() {
    final _$result = _$v ??
        _$SendSmsJsonRequestMessagesInner._(
          dest: BuiltValueNullFieldError.checkNotNull(
              dest, r'SendSmsJsonRequestMessagesInner', 'dest'),
          msg: BuiltValueNullFieldError.checkNotNull(
              msg, r'SendSmsJsonRequestMessagesInner', 'msg'),
          id: id,
          iysRecipientType: iysRecipientType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
