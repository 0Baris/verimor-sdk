// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_extension200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetExtension200Response extends GetExtension200Response {
  @override
  final String? number;
  @override
  final String? password;
  @override
  final String? domain;
  @override
  final String? name;
  @override
  final bool? dnd;
  @override
  final bool? isAgent;
  @override
  final int? maxCalls;
  @override
  final bool? useWebrtc;
  @override
  final String? timeRangeBegin;
  @override
  final String? timeRangeEnd;
  @override
  final String? outboundCallerIdNumber;

  factory _$GetExtension200Response(
          [void Function(GetExtension200ResponseBuilder)? updates]) =>
      (GetExtension200ResponseBuilder()..update(updates))._build();

  _$GetExtension200Response._(
      {this.number,
      this.password,
      this.domain,
      this.name,
      this.dnd,
      this.isAgent,
      this.maxCalls,
      this.useWebrtc,
      this.timeRangeBegin,
      this.timeRangeEnd,
      this.outboundCallerIdNumber})
      : super._();
  @override
  GetExtension200Response rebuild(
          void Function(GetExtension200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetExtension200ResponseBuilder toBuilder() =>
      GetExtension200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetExtension200Response &&
        number == other.number &&
        password == other.password &&
        domain == other.domain &&
        name == other.name &&
        dnd == other.dnd &&
        isAgent == other.isAgent &&
        maxCalls == other.maxCalls &&
        useWebrtc == other.useWebrtc &&
        timeRangeBegin == other.timeRangeBegin &&
        timeRangeEnd == other.timeRangeEnd &&
        outboundCallerIdNumber == other.outboundCallerIdNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dnd.hashCode);
    _$hash = $jc(_$hash, isAgent.hashCode);
    _$hash = $jc(_$hash, maxCalls.hashCode);
    _$hash = $jc(_$hash, useWebrtc.hashCode);
    _$hash = $jc(_$hash, timeRangeBegin.hashCode);
    _$hash = $jc(_$hash, timeRangeEnd.hashCode);
    _$hash = $jc(_$hash, outboundCallerIdNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetExtension200Response')
          ..add('number', number)
          ..add('password', password)
          ..add('domain', domain)
          ..add('name', name)
          ..add('dnd', dnd)
          ..add('isAgent', isAgent)
          ..add('maxCalls', maxCalls)
          ..add('useWebrtc', useWebrtc)
          ..add('timeRangeBegin', timeRangeBegin)
          ..add('timeRangeEnd', timeRangeEnd)
          ..add('outboundCallerIdNumber', outboundCallerIdNumber))
        .toString();
  }
}

class GetExtension200ResponseBuilder
    implements
        Builder<GetExtension200Response, GetExtension200ResponseBuilder> {
  _$GetExtension200Response? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _dnd;
  bool? get dnd => _$this._dnd;
  set dnd(bool? dnd) => _$this._dnd = dnd;

  bool? _isAgent;
  bool? get isAgent => _$this._isAgent;
  set isAgent(bool? isAgent) => _$this._isAgent = isAgent;

  int? _maxCalls;
  int? get maxCalls => _$this._maxCalls;
  set maxCalls(int? maxCalls) => _$this._maxCalls = maxCalls;

  bool? _useWebrtc;
  bool? get useWebrtc => _$this._useWebrtc;
  set useWebrtc(bool? useWebrtc) => _$this._useWebrtc = useWebrtc;

  String? _timeRangeBegin;
  String? get timeRangeBegin => _$this._timeRangeBegin;
  set timeRangeBegin(String? timeRangeBegin) =>
      _$this._timeRangeBegin = timeRangeBegin;

  String? _timeRangeEnd;
  String? get timeRangeEnd => _$this._timeRangeEnd;
  set timeRangeEnd(String? timeRangeEnd) => _$this._timeRangeEnd = timeRangeEnd;

  String? _outboundCallerIdNumber;
  String? get outboundCallerIdNumber => _$this._outboundCallerIdNumber;
  set outboundCallerIdNumber(String? outboundCallerIdNumber) =>
      _$this._outboundCallerIdNumber = outboundCallerIdNumber;

  GetExtension200ResponseBuilder() {
    GetExtension200Response._defaults(this);
  }

  GetExtension200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _password = $v.password;
      _domain = $v.domain;
      _name = $v.name;
      _dnd = $v.dnd;
      _isAgent = $v.isAgent;
      _maxCalls = $v.maxCalls;
      _useWebrtc = $v.useWebrtc;
      _timeRangeBegin = $v.timeRangeBegin;
      _timeRangeEnd = $v.timeRangeEnd;
      _outboundCallerIdNumber = $v.outboundCallerIdNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetExtension200Response other) {
    _$v = other as _$GetExtension200Response;
  }

  @override
  void update(void Function(GetExtension200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetExtension200Response build() => _build();

  _$GetExtension200Response _build() {
    final _$result = _$v ??
        _$GetExtension200Response._(
          number: number,
          password: password,
          domain: domain,
          name: name,
          dnd: dnd,
          isAgent: isAgent,
          maxCalls: maxCalls,
          useWebrtc: useWebrtc,
          timeRangeBegin: timeRangeBegin,
          timeRangeEnd: timeRangeEnd,
          outboundCallerIdNumber: outboundCallerIdNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
