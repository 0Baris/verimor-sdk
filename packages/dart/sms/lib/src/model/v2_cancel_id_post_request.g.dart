// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_cancel_id_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2CancelIdPostRequest extends V2CancelIdPostRequest {
  @override
  final String username;
  @override
  final String password;

  factory _$V2CancelIdPostRequest(
          [void Function(V2CancelIdPostRequestBuilder)? updates]) =>
      (V2CancelIdPostRequestBuilder()..update(updates))._build();

  _$V2CancelIdPostRequest._({required this.username, required this.password})
      : super._();
  @override
  V2CancelIdPostRequest rebuild(
          void Function(V2CancelIdPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2CancelIdPostRequestBuilder toBuilder() =>
      V2CancelIdPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2CancelIdPostRequest &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2CancelIdPostRequest')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class V2CancelIdPostRequestBuilder
    implements Builder<V2CancelIdPostRequest, V2CancelIdPostRequestBuilder> {
  _$V2CancelIdPostRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  V2CancelIdPostRequestBuilder() {
    V2CancelIdPostRequest._defaults(this);
  }

  V2CancelIdPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2CancelIdPostRequest other) {
    _$v = other as _$V2CancelIdPostRequest;
  }

  @override
  void update(void Function(V2CancelIdPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2CancelIdPostRequest build() => _build();

  _$V2CancelIdPostRequest _build() {
    final _$result = _$v ??
        _$V2CancelIdPostRequest._(
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'V2CancelIdPostRequest', 'username'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'V2CancelIdPostRequest', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
