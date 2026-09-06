// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_blacklists_get200_response_records_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2BlacklistsGet200ResponseRecordsInner
    extends V2BlacklistsGet200ResponseRecordsInner {
  @override
  final String? phone;
  @override
  final String? source_;
  @override
  final DateTime? createdAt;

  factory _$V2BlacklistsGet200ResponseRecordsInner(
          [void Function(V2BlacklistsGet200ResponseRecordsInnerBuilder)?
              updates]) =>
      (V2BlacklistsGet200ResponseRecordsInnerBuilder()..update(updates))
          ._build();

  _$V2BlacklistsGet200ResponseRecordsInner._(
      {this.phone, this.source_, this.createdAt})
      : super._();
  @override
  V2BlacklistsGet200ResponseRecordsInner rebuild(
          void Function(V2BlacklistsGet200ResponseRecordsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2BlacklistsGet200ResponseRecordsInnerBuilder toBuilder() =>
      V2BlacklistsGet200ResponseRecordsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2BlacklistsGet200ResponseRecordsInner &&
        phone == other.phone &&
        source_ == other.source_ &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2BlacklistsGet200ResponseRecordsInner')
          ..add('phone', phone)
          ..add('source_', source_)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class V2BlacklistsGet200ResponseRecordsInnerBuilder
    implements
        Builder<V2BlacklistsGet200ResponseRecordsInner,
            V2BlacklistsGet200ResponseRecordsInnerBuilder> {
  _$V2BlacklistsGet200ResponseRecordsInner? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  V2BlacklistsGet200ResponseRecordsInnerBuilder() {
    V2BlacklistsGet200ResponseRecordsInner._defaults(this);
  }

  V2BlacklistsGet200ResponseRecordsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _source_ = $v.source_;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2BlacklistsGet200ResponseRecordsInner other) {
    _$v = other as _$V2BlacklistsGet200ResponseRecordsInner;
  }

  @override
  void update(
      void Function(V2BlacklistsGet200ResponseRecordsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2BlacklistsGet200ResponseRecordsInner build() => _build();

  _$V2BlacklistsGet200ResponseRecordsInner _build() {
    final _$result = _$v ??
        _$V2BlacklistsGet200ResponseRecordsInner._(
          phone: phone,
          source_: source_,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
