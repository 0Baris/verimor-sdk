// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cdr200_response_call_flow_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCdr200ResponseCallFlowInner extends GetCdr200ResponseCallFlowInner {
  @override
  final String? destinationNumber;
  @override
  final String? startStamp;
  @override
  final String? answerStamp;
  @override
  final String? endStamp;
  @override
  final String? duration;
  @override
  final String? ipAddress;
  @override
  final String? sipUserAgent;
  @override
  final String? writeCodec;
  @override
  final String? readCodec;
  @override
  final String? result;

  factory _$GetCdr200ResponseCallFlowInner(
          [void Function(GetCdr200ResponseCallFlowInnerBuilder)? updates]) =>
      (GetCdr200ResponseCallFlowInnerBuilder()..update(updates))._build();

  _$GetCdr200ResponseCallFlowInner._(
      {this.destinationNumber,
      this.startStamp,
      this.answerStamp,
      this.endStamp,
      this.duration,
      this.ipAddress,
      this.sipUserAgent,
      this.writeCodec,
      this.readCodec,
      this.result})
      : super._();
  @override
  GetCdr200ResponseCallFlowInner rebuild(
          void Function(GetCdr200ResponseCallFlowInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCdr200ResponseCallFlowInnerBuilder toBuilder() =>
      GetCdr200ResponseCallFlowInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCdr200ResponseCallFlowInner &&
        destinationNumber == other.destinationNumber &&
        startStamp == other.startStamp &&
        answerStamp == other.answerStamp &&
        endStamp == other.endStamp &&
        duration == other.duration &&
        ipAddress == other.ipAddress &&
        sipUserAgent == other.sipUserAgent &&
        writeCodec == other.writeCodec &&
        readCodec == other.readCodec &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationNumber.hashCode);
    _$hash = $jc(_$hash, startStamp.hashCode);
    _$hash = $jc(_$hash, answerStamp.hashCode);
    _$hash = $jc(_$hash, endStamp.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, sipUserAgent.hashCode);
    _$hash = $jc(_$hash, writeCodec.hashCode);
    _$hash = $jc(_$hash, readCodec.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCdr200ResponseCallFlowInner')
          ..add('destinationNumber', destinationNumber)
          ..add('startStamp', startStamp)
          ..add('answerStamp', answerStamp)
          ..add('endStamp', endStamp)
          ..add('duration', duration)
          ..add('ipAddress', ipAddress)
          ..add('sipUserAgent', sipUserAgent)
          ..add('writeCodec', writeCodec)
          ..add('readCodec', readCodec)
          ..add('result', result))
        .toString();
  }
}

class GetCdr200ResponseCallFlowInnerBuilder
    implements
        Builder<GetCdr200ResponseCallFlowInner,
            GetCdr200ResponseCallFlowInnerBuilder> {
  _$GetCdr200ResponseCallFlowInner? _$v;

  String? _destinationNumber;
  String? get destinationNumber => _$this._destinationNumber;
  set destinationNumber(String? destinationNumber) =>
      _$this._destinationNumber = destinationNumber;

  String? _startStamp;
  String? get startStamp => _$this._startStamp;
  set startStamp(String? startStamp) => _$this._startStamp = startStamp;

  String? _answerStamp;
  String? get answerStamp => _$this._answerStamp;
  set answerStamp(String? answerStamp) => _$this._answerStamp = answerStamp;

  String? _endStamp;
  String? get endStamp => _$this._endStamp;
  set endStamp(String? endStamp) => _$this._endStamp = endStamp;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  String? _sipUserAgent;
  String? get sipUserAgent => _$this._sipUserAgent;
  set sipUserAgent(String? sipUserAgent) => _$this._sipUserAgent = sipUserAgent;

  String? _writeCodec;
  String? get writeCodec => _$this._writeCodec;
  set writeCodec(String? writeCodec) => _$this._writeCodec = writeCodec;

  String? _readCodec;
  String? get readCodec => _$this._readCodec;
  set readCodec(String? readCodec) => _$this._readCodec = readCodec;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  GetCdr200ResponseCallFlowInnerBuilder() {
    GetCdr200ResponseCallFlowInner._defaults(this);
  }

  GetCdr200ResponseCallFlowInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationNumber = $v.destinationNumber;
      _startStamp = $v.startStamp;
      _answerStamp = $v.answerStamp;
      _endStamp = $v.endStamp;
      _duration = $v.duration;
      _ipAddress = $v.ipAddress;
      _sipUserAgent = $v.sipUserAgent;
      _writeCodec = $v.writeCodec;
      _readCodec = $v.readCodec;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCdr200ResponseCallFlowInner other) {
    _$v = other as _$GetCdr200ResponseCallFlowInner;
  }

  @override
  void update(void Function(GetCdr200ResponseCallFlowInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCdr200ResponseCallFlowInner build() => _build();

  _$GetCdr200ResponseCallFlowInner _build() {
    final _$result = _$v ??
        _$GetCdr200ResponseCallFlowInner._(
          destinationNumber: destinationNumber,
          startStamp: startStamp,
          answerStamp: answerStamp,
          endStamp: endStamp,
          duration: duration,
          ipAddress: ipAddress,
          sipUserAgent: sipUserAgent,
          writeCodec: writeCodec,
          readCodec: readCodec,
          result: result,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
