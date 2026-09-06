// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_queue_user_list200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetQueueUserList200ResponseInner
    extends GetQueueUserList200ResponseInner {
  @override
  final int? user;
  @override
  final String? name;

  factory _$GetQueueUserList200ResponseInner(
          [void Function(GetQueueUserList200ResponseInnerBuilder)? updates]) =>
      (GetQueueUserList200ResponseInnerBuilder()..update(updates))._build();

  _$GetQueueUserList200ResponseInner._({this.user, this.name}) : super._();
  @override
  GetQueueUserList200ResponseInner rebuild(
          void Function(GetQueueUserList200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetQueueUserList200ResponseInnerBuilder toBuilder() =>
      GetQueueUserList200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetQueueUserList200ResponseInner &&
        user == other.user &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetQueueUserList200ResponseInner')
          ..add('user', user)
          ..add('name', name))
        .toString();
  }
}

class GetQueueUserList200ResponseInnerBuilder
    implements
        Builder<GetQueueUserList200ResponseInner,
            GetQueueUserList200ResponseInnerBuilder> {
  _$GetQueueUserList200ResponseInner? _$v;

  int? _user;
  int? get user => _$this._user;
  set user(int? user) => _$this._user = user;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetQueueUserList200ResponseInnerBuilder() {
    GetQueueUserList200ResponseInner._defaults(this);
  }

  GetQueueUserList200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetQueueUserList200ResponseInner other) {
    _$v = other as _$GetQueueUserList200ResponseInner;
  }

  @override
  void update(void Function(GetQueueUserList200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetQueueUserList200ResponseInner build() => _build();

  _$GetQueueUserList200ResponseInner _build() {
    final _$result = _$v ??
        _$GetQueueUserList200ResponseInner._(
          user: user,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
