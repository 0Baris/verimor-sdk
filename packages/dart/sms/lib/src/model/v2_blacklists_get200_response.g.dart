// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_blacklists_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2BlacklistsGet200Response extends V2BlacklistsGet200Response {
  @override
  final int? total;
  @override
  final BuiltList<V2BlacklistsGet200ResponseRecordsInner>? records;

  factory _$V2BlacklistsGet200Response(
          [void Function(V2BlacklistsGet200ResponseBuilder)? updates]) =>
      (V2BlacklistsGet200ResponseBuilder()..update(updates))._build();

  _$V2BlacklistsGet200Response._({this.total, this.records}) : super._();
  @override
  V2BlacklistsGet200Response rebuild(
          void Function(V2BlacklistsGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2BlacklistsGet200ResponseBuilder toBuilder() =>
      V2BlacklistsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2BlacklistsGet200Response &&
        total == other.total &&
        records == other.records;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2BlacklistsGet200Response')
          ..add('total', total)
          ..add('records', records))
        .toString();
  }
}

class V2BlacklistsGet200ResponseBuilder
    implements
        Builder<V2BlacklistsGet200Response, V2BlacklistsGet200ResponseBuilder> {
  _$V2BlacklistsGet200Response? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<V2BlacklistsGet200ResponseRecordsInner>? _records;
  ListBuilder<V2BlacklistsGet200ResponseRecordsInner> get records =>
      _$this._records ??= ListBuilder<V2BlacklistsGet200ResponseRecordsInner>();
  set records(ListBuilder<V2BlacklistsGet200ResponseRecordsInner>? records) =>
      _$this._records = records;

  V2BlacklistsGet200ResponseBuilder() {
    V2BlacklistsGet200Response._defaults(this);
  }

  V2BlacklistsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _records = $v.records?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2BlacklistsGet200Response other) {
    _$v = other as _$V2BlacklistsGet200Response;
  }

  @override
  void update(void Function(V2BlacklistsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2BlacklistsGet200Response build() => _build();

  _$V2BlacklistsGet200Response _build() {
    _$V2BlacklistsGet200Response _$result;
    try {
      _$result = _$v ??
          _$V2BlacklistsGet200Response._(
            total: total,
            records: _records?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        _records?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V2BlacklistsGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
