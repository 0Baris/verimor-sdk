// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_fdrs200_response_fdrs_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListFdrs200ResponseFdrsInner extends ListFdrs200ResponseFdrsInner {
  @override
  final String callUuid;
  @override
  final String direction;
  @override
  final String callerIdNumber;
  @override
  final String? localStationHeader;
  @override
  final String originalDestination;
  @override
  final String pagesCount;
  @override
  final int? transferRate;
  @override
  final DateTime startStamp;
  @override
  final DateTime? answerStamp;
  @override
  final DateTime? endStamp;
  @override
  final int? duration;
  @override
  final bool success;
  @override
  final String result;

  factory _$ListFdrs200ResponseFdrsInner(
          [void Function(ListFdrs200ResponseFdrsInnerBuilder)? updates]) =>
      (ListFdrs200ResponseFdrsInnerBuilder()..update(updates))._build();

  _$ListFdrs200ResponseFdrsInner._(
      {required this.callUuid,
      required this.direction,
      required this.callerIdNumber,
      this.localStationHeader,
      required this.originalDestination,
      required this.pagesCount,
      this.transferRate,
      required this.startStamp,
      this.answerStamp,
      this.endStamp,
      this.duration,
      required this.success,
      required this.result})
      : super._();
  @override
  ListFdrs200ResponseFdrsInner rebuild(
          void Function(ListFdrs200ResponseFdrsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListFdrs200ResponseFdrsInnerBuilder toBuilder() =>
      ListFdrs200ResponseFdrsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListFdrs200ResponseFdrsInner &&
        callUuid == other.callUuid &&
        direction == other.direction &&
        callerIdNumber == other.callerIdNumber &&
        localStationHeader == other.localStationHeader &&
        originalDestination == other.originalDestination &&
        pagesCount == other.pagesCount &&
        transferRate == other.transferRate &&
        startStamp == other.startStamp &&
        answerStamp == other.answerStamp &&
        endStamp == other.endStamp &&
        duration == other.duration &&
        success == other.success &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, callUuid.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, callerIdNumber.hashCode);
    _$hash = $jc(_$hash, localStationHeader.hashCode);
    _$hash = $jc(_$hash, originalDestination.hashCode);
    _$hash = $jc(_$hash, pagesCount.hashCode);
    _$hash = $jc(_$hash, transferRate.hashCode);
    _$hash = $jc(_$hash, startStamp.hashCode);
    _$hash = $jc(_$hash, answerStamp.hashCode);
    _$hash = $jc(_$hash, endStamp.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListFdrs200ResponseFdrsInner')
          ..add('callUuid', callUuid)
          ..add('direction', direction)
          ..add('callerIdNumber', callerIdNumber)
          ..add('localStationHeader', localStationHeader)
          ..add('originalDestination', originalDestination)
          ..add('pagesCount', pagesCount)
          ..add('transferRate', transferRate)
          ..add('startStamp', startStamp)
          ..add('answerStamp', answerStamp)
          ..add('endStamp', endStamp)
          ..add('duration', duration)
          ..add('success', success)
          ..add('result', result))
        .toString();
  }
}

class ListFdrs200ResponseFdrsInnerBuilder
    implements
        Builder<ListFdrs200ResponseFdrsInner,
            ListFdrs200ResponseFdrsInnerBuilder> {
  _$ListFdrs200ResponseFdrsInner? _$v;

  String? _callUuid;
  String? get callUuid => _$this._callUuid;
  set callUuid(String? callUuid) => _$this._callUuid = callUuid;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _callerIdNumber;
  String? get callerIdNumber => _$this._callerIdNumber;
  set callerIdNumber(String? callerIdNumber) =>
      _$this._callerIdNumber = callerIdNumber;

  String? _localStationHeader;
  String? get localStationHeader => _$this._localStationHeader;
  set localStationHeader(String? localStationHeader) =>
      _$this._localStationHeader = localStationHeader;

  String? _originalDestination;
  String? get originalDestination => _$this._originalDestination;
  set originalDestination(String? originalDestination) =>
      _$this._originalDestination = originalDestination;

  String? _pagesCount;
  String? get pagesCount => _$this._pagesCount;
  set pagesCount(String? pagesCount) => _$this._pagesCount = pagesCount;

  int? _transferRate;
  int? get transferRate => _$this._transferRate;
  set transferRate(int? transferRate) => _$this._transferRate = transferRate;

  DateTime? _startStamp;
  DateTime? get startStamp => _$this._startStamp;
  set startStamp(DateTime? startStamp) => _$this._startStamp = startStamp;

  DateTime? _answerStamp;
  DateTime? get answerStamp => _$this._answerStamp;
  set answerStamp(DateTime? answerStamp) => _$this._answerStamp = answerStamp;

  DateTime? _endStamp;
  DateTime? get endStamp => _$this._endStamp;
  set endStamp(DateTime? endStamp) => _$this._endStamp = endStamp;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  ListFdrs200ResponseFdrsInnerBuilder() {
    ListFdrs200ResponseFdrsInner._defaults(this);
  }

  ListFdrs200ResponseFdrsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _callUuid = $v.callUuid;
      _direction = $v.direction;
      _callerIdNumber = $v.callerIdNumber;
      _localStationHeader = $v.localStationHeader;
      _originalDestination = $v.originalDestination;
      _pagesCount = $v.pagesCount;
      _transferRate = $v.transferRate;
      _startStamp = $v.startStamp;
      _answerStamp = $v.answerStamp;
      _endStamp = $v.endStamp;
      _duration = $v.duration;
      _success = $v.success;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListFdrs200ResponseFdrsInner other) {
    _$v = other as _$ListFdrs200ResponseFdrsInner;
  }

  @override
  void update(void Function(ListFdrs200ResponseFdrsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListFdrs200ResponseFdrsInner build() => _build();

  _$ListFdrs200ResponseFdrsInner _build() {
    final _$result = _$v ??
        _$ListFdrs200ResponseFdrsInner._(
          callUuid: BuiltValueNullFieldError.checkNotNull(
              callUuid, r'ListFdrs200ResponseFdrsInner', 'callUuid'),
          direction: BuiltValueNullFieldError.checkNotNull(
              direction, r'ListFdrs200ResponseFdrsInner', 'direction'),
          callerIdNumber: BuiltValueNullFieldError.checkNotNull(callerIdNumber,
              r'ListFdrs200ResponseFdrsInner', 'callerIdNumber'),
          localStationHeader: localStationHeader,
          originalDestination: BuiltValueNullFieldError.checkNotNull(
              originalDestination,
              r'ListFdrs200ResponseFdrsInner',
              'originalDestination'),
          pagesCount: BuiltValueNullFieldError.checkNotNull(
              pagesCount, r'ListFdrs200ResponseFdrsInner', 'pagesCount'),
          transferRate: transferRate,
          startStamp: BuiltValueNullFieldError.checkNotNull(
              startStamp, r'ListFdrs200ResponseFdrsInner', 'startStamp'),
          answerStamp: answerStamp,
          endStamp: endStamp,
          duration: duration,
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ListFdrs200ResponseFdrsInner', 'success'),
          result: BuiltValueNullFieldError.checkNotNull(
              result, r'ListFdrs200ResponseFdrsInner', 'result'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
