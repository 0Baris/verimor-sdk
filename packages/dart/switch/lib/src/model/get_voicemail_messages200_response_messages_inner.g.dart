// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_voicemail_messages200_response_messages_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVoicemailMessages200ResponseMessagesInner
    extends GetVoicemailMessages200ResponseMessagesInner {
  @override
  final String startStamp;
  @override
  final String readStamp;
  @override
  final String userNumber;
  @override
  final String uuid;
  @override
  final String callerIdName;
  @override
  final String callerIdNumber;
  @override
  final String duration;

  factory _$GetVoicemailMessages200ResponseMessagesInner(
          [void Function(GetVoicemailMessages200ResponseMessagesInnerBuilder)?
              updates]) =>
      (GetVoicemailMessages200ResponseMessagesInnerBuilder()..update(updates))
          ._build();

  _$GetVoicemailMessages200ResponseMessagesInner._(
      {required this.startStamp,
      required this.readStamp,
      required this.userNumber,
      required this.uuid,
      required this.callerIdName,
      required this.callerIdNumber,
      required this.duration})
      : super._();
  @override
  GetVoicemailMessages200ResponseMessagesInner rebuild(
          void Function(GetVoicemailMessages200ResponseMessagesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVoicemailMessages200ResponseMessagesInnerBuilder toBuilder() =>
      GetVoicemailMessages200ResponseMessagesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVoicemailMessages200ResponseMessagesInner &&
        startStamp == other.startStamp &&
        readStamp == other.readStamp &&
        userNumber == other.userNumber &&
        uuid == other.uuid &&
        callerIdName == other.callerIdName &&
        callerIdNumber == other.callerIdNumber &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startStamp.hashCode);
    _$hash = $jc(_$hash, readStamp.hashCode);
    _$hash = $jc(_$hash, userNumber.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, callerIdName.hashCode);
    _$hash = $jc(_$hash, callerIdNumber.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetVoicemailMessages200ResponseMessagesInner')
          ..add('startStamp', startStamp)
          ..add('readStamp', readStamp)
          ..add('userNumber', userNumber)
          ..add('uuid', uuid)
          ..add('callerIdName', callerIdName)
          ..add('callerIdNumber', callerIdNumber)
          ..add('duration', duration))
        .toString();
  }
}

class GetVoicemailMessages200ResponseMessagesInnerBuilder
    implements
        Builder<GetVoicemailMessages200ResponseMessagesInner,
            GetVoicemailMessages200ResponseMessagesInnerBuilder> {
  _$GetVoicemailMessages200ResponseMessagesInner? _$v;

  String? _startStamp;
  String? get startStamp => _$this._startStamp;
  set startStamp(String? startStamp) => _$this._startStamp = startStamp;

  String? _readStamp;
  String? get readStamp => _$this._readStamp;
  set readStamp(String? readStamp) => _$this._readStamp = readStamp;

  String? _userNumber;
  String? get userNumber => _$this._userNumber;
  set userNumber(String? userNumber) => _$this._userNumber = userNumber;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _callerIdName;
  String? get callerIdName => _$this._callerIdName;
  set callerIdName(String? callerIdName) => _$this._callerIdName = callerIdName;

  String? _callerIdNumber;
  String? get callerIdNumber => _$this._callerIdNumber;
  set callerIdNumber(String? callerIdNumber) =>
      _$this._callerIdNumber = callerIdNumber;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  GetVoicemailMessages200ResponseMessagesInnerBuilder() {
    GetVoicemailMessages200ResponseMessagesInner._defaults(this);
  }

  GetVoicemailMessages200ResponseMessagesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startStamp = $v.startStamp;
      _readStamp = $v.readStamp;
      _userNumber = $v.userNumber;
      _uuid = $v.uuid;
      _callerIdName = $v.callerIdName;
      _callerIdNumber = $v.callerIdNumber;
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVoicemailMessages200ResponseMessagesInner other) {
    _$v = other as _$GetVoicemailMessages200ResponseMessagesInner;
  }

  @override
  void update(
      void Function(GetVoicemailMessages200ResponseMessagesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVoicemailMessages200ResponseMessagesInner build() => _build();

  _$GetVoicemailMessages200ResponseMessagesInner _build() {
    final _$result = _$v ??
        _$GetVoicemailMessages200ResponseMessagesInner._(
          startStamp: BuiltValueNullFieldError.checkNotNull(startStamp,
              r'GetVoicemailMessages200ResponseMessagesInner', 'startStamp'),
          readStamp: BuiltValueNullFieldError.checkNotNull(readStamp,
              r'GetVoicemailMessages200ResponseMessagesInner', 'readStamp'),
          userNumber: BuiltValueNullFieldError.checkNotNull(userNumber,
              r'GetVoicemailMessages200ResponseMessagesInner', 'userNumber'),
          uuid: BuiltValueNullFieldError.checkNotNull(
              uuid, r'GetVoicemailMessages200ResponseMessagesInner', 'uuid'),
          callerIdName: BuiltValueNullFieldError.checkNotNull(callerIdName,
              r'GetVoicemailMessages200ResponseMessagesInner', 'callerIdName'),
          callerIdNumber: BuiltValueNullFieldError.checkNotNull(
              callerIdNumber,
              r'GetVoicemailMessages200ResponseMessagesInner',
              'callerIdNumber'),
          duration: BuiltValueNullFieldError.checkNotNull(duration,
              r'GetVoicemailMessages200ResponseMessagesInner', 'duration'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
