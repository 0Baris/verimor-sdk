// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'originate_call_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OriginateCallPostRequest extends OriginateCallPostRequest {
  @override
  final String extension_;
  @override
  final String destination;
  @override
  final String? callerId;
  @override
  final bool? manualAnswer;
  @override
  final int? timeout;
  @override
  final int? announcementToCaller;
  @override
  final int? announcementToCallee;
  @override
  final String? customCallType;

  factory _$OriginateCallPostRequest(
          [void Function(OriginateCallPostRequestBuilder)? updates]) =>
      (OriginateCallPostRequestBuilder()..update(updates))._build();

  _$OriginateCallPostRequest._(
      {required this.extension_,
      required this.destination,
      this.callerId,
      this.manualAnswer,
      this.timeout,
      this.announcementToCaller,
      this.announcementToCallee,
      this.customCallType})
      : super._();
  @override
  OriginateCallPostRequest rebuild(
          void Function(OriginateCallPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OriginateCallPostRequestBuilder toBuilder() =>
      OriginateCallPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OriginateCallPostRequest &&
        extension_ == other.extension_ &&
        destination == other.destination &&
        callerId == other.callerId &&
        manualAnswer == other.manualAnswer &&
        timeout == other.timeout &&
        announcementToCaller == other.announcementToCaller &&
        announcementToCallee == other.announcementToCallee &&
        customCallType == other.customCallType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extension_.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, callerId.hashCode);
    _$hash = $jc(_$hash, manualAnswer.hashCode);
    _$hash = $jc(_$hash, timeout.hashCode);
    _$hash = $jc(_$hash, announcementToCaller.hashCode);
    _$hash = $jc(_$hash, announcementToCallee.hashCode);
    _$hash = $jc(_$hash, customCallType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OriginateCallPostRequest')
          ..add('extension_', extension_)
          ..add('destination', destination)
          ..add('callerId', callerId)
          ..add('manualAnswer', manualAnswer)
          ..add('timeout', timeout)
          ..add('announcementToCaller', announcementToCaller)
          ..add('announcementToCallee', announcementToCallee)
          ..add('customCallType', customCallType))
        .toString();
  }
}

class OriginateCallPostRequestBuilder
    implements
        Builder<OriginateCallPostRequest, OriginateCallPostRequestBuilder> {
  _$OriginateCallPostRequest? _$v;

  String? _extension_;
  String? get extension_ => _$this._extension_;
  set extension_(String? extension_) => _$this._extension_ = extension_;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  String? _callerId;
  String? get callerId => _$this._callerId;
  set callerId(String? callerId) => _$this._callerId = callerId;

  bool? _manualAnswer;
  bool? get manualAnswer => _$this._manualAnswer;
  set manualAnswer(bool? manualAnswer) => _$this._manualAnswer = manualAnswer;

  int? _timeout;
  int? get timeout => _$this._timeout;
  set timeout(int? timeout) => _$this._timeout = timeout;

  int? _announcementToCaller;
  int? get announcementToCaller => _$this._announcementToCaller;
  set announcementToCaller(int? announcementToCaller) =>
      _$this._announcementToCaller = announcementToCaller;

  int? _announcementToCallee;
  int? get announcementToCallee => _$this._announcementToCallee;
  set announcementToCallee(int? announcementToCallee) =>
      _$this._announcementToCallee = announcementToCallee;

  String? _customCallType;
  String? get customCallType => _$this._customCallType;
  set customCallType(String? customCallType) =>
      _$this._customCallType = customCallType;

  OriginateCallPostRequestBuilder() {
    OriginateCallPostRequest._defaults(this);
  }

  OriginateCallPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extension_ = $v.extension_;
      _destination = $v.destination;
      _callerId = $v.callerId;
      _manualAnswer = $v.manualAnswer;
      _timeout = $v.timeout;
      _announcementToCaller = $v.announcementToCaller;
      _announcementToCallee = $v.announcementToCallee;
      _customCallType = $v.customCallType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OriginateCallPostRequest other) {
    _$v = other as _$OriginateCallPostRequest;
  }

  @override
  void update(void Function(OriginateCallPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OriginateCallPostRequest build() => _build();

  _$OriginateCallPostRequest _build() {
    final _$result = _$v ??
        _$OriginateCallPostRequest._(
          extension_: BuiltValueNullFieldError.checkNotNull(
              extension_, r'OriginateCallPostRequest', 'extension_'),
          destination: BuiltValueNullFieldError.checkNotNull(
              destination, r'OriginateCallPostRequest', 'destination'),
          callerId: callerId,
          manualAnswer: manualAnswer,
          timeout: timeout,
          announcementToCaller: announcementToCaller,
          announcementToCallee: announcementToCallee,
          customCallType: customCallType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
