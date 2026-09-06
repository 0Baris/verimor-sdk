// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_iys_consents_json_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2IysConsentsJsonPostRequest extends V2IysConsentsJsonPostRequest {
  @override
  final String username;
  @override
  final String password;
  @override
  final String sourceAddr;
  @override
  final BuiltList<V2IysConsentsJsonPostRequestConsentsInner> consents;

  factory _$V2IysConsentsJsonPostRequest(
          [void Function(V2IysConsentsJsonPostRequestBuilder)? updates]) =>
      (V2IysConsentsJsonPostRequestBuilder()..update(updates))._build();

  _$V2IysConsentsJsonPostRequest._(
      {required this.username,
      required this.password,
      required this.sourceAddr,
      required this.consents})
      : super._();
  @override
  V2IysConsentsJsonPostRequest rebuild(
          void Function(V2IysConsentsJsonPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2IysConsentsJsonPostRequestBuilder toBuilder() =>
      V2IysConsentsJsonPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2IysConsentsJsonPostRequest &&
        username == other.username &&
        password == other.password &&
        sourceAddr == other.sourceAddr &&
        consents == other.consents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, sourceAddr.hashCode);
    _$hash = $jc(_$hash, consents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2IysConsentsJsonPostRequest')
          ..add('username', username)
          ..add('password', password)
          ..add('sourceAddr', sourceAddr)
          ..add('consents', consents))
        .toString();
  }
}

class V2IysConsentsJsonPostRequestBuilder
    implements
        Builder<V2IysConsentsJsonPostRequest,
            V2IysConsentsJsonPostRequestBuilder> {
  _$V2IysConsentsJsonPostRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _sourceAddr;
  String? get sourceAddr => _$this._sourceAddr;
  set sourceAddr(String? sourceAddr) => _$this._sourceAddr = sourceAddr;

  ListBuilder<V2IysConsentsJsonPostRequestConsentsInner>? _consents;
  ListBuilder<V2IysConsentsJsonPostRequestConsentsInner> get consents =>
      _$this._consents ??=
          ListBuilder<V2IysConsentsJsonPostRequestConsentsInner>();
  set consents(
          ListBuilder<V2IysConsentsJsonPostRequestConsentsInner>? consents) =>
      _$this._consents = consents;

  V2IysConsentsJsonPostRequestBuilder() {
    V2IysConsentsJsonPostRequest._defaults(this);
  }

  V2IysConsentsJsonPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _sourceAddr = $v.sourceAddr;
      _consents = $v.consents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2IysConsentsJsonPostRequest other) {
    _$v = other as _$V2IysConsentsJsonPostRequest;
  }

  @override
  void update(void Function(V2IysConsentsJsonPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2IysConsentsJsonPostRequest build() => _build();

  _$V2IysConsentsJsonPostRequest _build() {
    _$V2IysConsentsJsonPostRequest _$result;
    try {
      _$result = _$v ??
          _$V2IysConsentsJsonPostRequest._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'V2IysConsentsJsonPostRequest', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'V2IysConsentsJsonPostRequest', 'password'),
            sourceAddr: BuiltValueNullFieldError.checkNotNull(
                sourceAddr, r'V2IysConsentsJsonPostRequest', 'sourceAddr'),
            consents: consents.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consents';
        consents.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V2IysConsentsJsonPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
