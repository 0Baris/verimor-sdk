// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MessageResponse extends MessageResponse {
  @override
  final String id;
  @override
  final String status;
  @override
  final String? waMessageId;
  @override
  final String? taskId;
  @override
  final String? message;

  factory _$MessageResponse([void Function(MessageResponseBuilder)? updates]) =>
      (MessageResponseBuilder()..update(updates))._build();

  _$MessageResponse._(
      {required this.id,
      required this.status,
      this.waMessageId,
      this.taskId,
      this.message})
      : super._();
  @override
  MessageResponse rebuild(void Function(MessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageResponseBuilder toBuilder() => MessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageResponse &&
        id == other.id &&
        status == other.status &&
        waMessageId == other.waMessageId &&
        taskId == other.taskId &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, waMessageId.hashCode);
    _$hash = $jc(_$hash, taskId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessageResponse')
          ..add('id', id)
          ..add('status', status)
          ..add('waMessageId', waMessageId)
          ..add('taskId', taskId)
          ..add('message', message))
        .toString();
  }
}

class MessageResponseBuilder
    implements Builder<MessageResponse, MessageResponseBuilder> {
  _$MessageResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _waMessageId;
  String? get waMessageId => _$this._waMessageId;
  set waMessageId(String? waMessageId) => _$this._waMessageId = waMessageId;

  String? _taskId;
  String? get taskId => _$this._taskId;
  set taskId(String? taskId) => _$this._taskId = taskId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MessageResponseBuilder() {
    MessageResponse._defaults(this);
  }

  MessageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _waMessageId = $v.waMessageId;
      _taskId = $v.taskId;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageResponse other) {
    _$v = other as _$MessageResponse;
  }

  @override
  void update(void Function(MessageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessageResponse build() => _build();

  _$MessageResponse _build() {
    final _$result = _$v ??
        _$MessageResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'MessageResponse', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'MessageResponse', 'status'),
          waMessageId: waMessageId,
          taskId: taskId,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
