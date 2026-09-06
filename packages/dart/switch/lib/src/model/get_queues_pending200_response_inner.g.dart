// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_queues_pending200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetQueuesPending200ResponseInner
    extends GetQueuesPending200ResponseInner {
  @override
  final String? queueNumber;
  @override
  final String? uuid;
  @override
  final String? callUuid;
  @override
  final String? callerId;
  @override
  final String? joinedAt;
  @override
  final int? waitTime;

  factory _$GetQueuesPending200ResponseInner(
          [void Function(GetQueuesPending200ResponseInnerBuilder)? updates]) =>
      (GetQueuesPending200ResponseInnerBuilder()..update(updates))._build();

  _$GetQueuesPending200ResponseInner._(
      {this.queueNumber,
      this.uuid,
      this.callUuid,
      this.callerId,
      this.joinedAt,
      this.waitTime})
      : super._();
  @override
  GetQueuesPending200ResponseInner rebuild(
          void Function(GetQueuesPending200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetQueuesPending200ResponseInnerBuilder toBuilder() =>
      GetQueuesPending200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetQueuesPending200ResponseInner &&
        queueNumber == other.queueNumber &&
        uuid == other.uuid &&
        callUuid == other.callUuid &&
        callerId == other.callerId &&
        joinedAt == other.joinedAt &&
        waitTime == other.waitTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queueNumber.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, callUuid.hashCode);
    _$hash = $jc(_$hash, callerId.hashCode);
    _$hash = $jc(_$hash, joinedAt.hashCode);
    _$hash = $jc(_$hash, waitTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetQueuesPending200ResponseInner')
          ..add('queueNumber', queueNumber)
          ..add('uuid', uuid)
          ..add('callUuid', callUuid)
          ..add('callerId', callerId)
          ..add('joinedAt', joinedAt)
          ..add('waitTime', waitTime))
        .toString();
  }
}

class GetQueuesPending200ResponseInnerBuilder
    implements
        Builder<GetQueuesPending200ResponseInner,
            GetQueuesPending200ResponseInnerBuilder> {
  _$GetQueuesPending200ResponseInner? _$v;

  String? _queueNumber;
  String? get queueNumber => _$this._queueNumber;
  set queueNumber(String? queueNumber) => _$this._queueNumber = queueNumber;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _callUuid;
  String? get callUuid => _$this._callUuid;
  set callUuid(String? callUuid) => _$this._callUuid = callUuid;

  String? _callerId;
  String? get callerId => _$this._callerId;
  set callerId(String? callerId) => _$this._callerId = callerId;

  String? _joinedAt;
  String? get joinedAt => _$this._joinedAt;
  set joinedAt(String? joinedAt) => _$this._joinedAt = joinedAt;

  int? _waitTime;
  int? get waitTime => _$this._waitTime;
  set waitTime(int? waitTime) => _$this._waitTime = waitTime;

  GetQueuesPending200ResponseInnerBuilder() {
    GetQueuesPending200ResponseInner._defaults(this);
  }

  GetQueuesPending200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queueNumber = $v.queueNumber;
      _uuid = $v.uuid;
      _callUuid = $v.callUuid;
      _callerId = $v.callerId;
      _joinedAt = $v.joinedAt;
      _waitTime = $v.waitTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetQueuesPending200ResponseInner other) {
    _$v = other as _$GetQueuesPending200ResponseInner;
  }

  @override
  void update(void Function(GetQueuesPending200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetQueuesPending200ResponseInner build() => _build();

  _$GetQueuesPending200ResponseInner _build() {
    final _$result = _$v ??
        _$GetQueuesPending200ResponseInner._(
          queueNumber: queueNumber,
          uuid: uuid,
          callUuid: callUuid,
          callerId: callerId,
          joinedAt: joinedAt,
          waitTime: waitTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
