// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_iys_campaigns_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2IysCampaignsGet200Response extends V2IysCampaignsGet200Response {
  @override
  final BuiltList<V2IysCampaignsGet200ResponseRecordsInner> records;
  @override
  final int total;

  factory _$V2IysCampaignsGet200Response(
          [void Function(V2IysCampaignsGet200ResponseBuilder)? updates]) =>
      (V2IysCampaignsGet200ResponseBuilder()..update(updates))._build();

  _$V2IysCampaignsGet200Response._({required this.records, required this.total})
      : super._();
  @override
  V2IysCampaignsGet200Response rebuild(
          void Function(V2IysCampaignsGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2IysCampaignsGet200ResponseBuilder toBuilder() =>
      V2IysCampaignsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2IysCampaignsGet200Response &&
        records == other.records &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2IysCampaignsGet200Response')
          ..add('records', records)
          ..add('total', total))
        .toString();
  }
}

class V2IysCampaignsGet200ResponseBuilder
    implements
        Builder<V2IysCampaignsGet200Response,
            V2IysCampaignsGet200ResponseBuilder> {
  _$V2IysCampaignsGet200Response? _$v;

  ListBuilder<V2IysCampaignsGet200ResponseRecordsInner>? _records;
  ListBuilder<V2IysCampaignsGet200ResponseRecordsInner> get records =>
      _$this._records ??=
          ListBuilder<V2IysCampaignsGet200ResponseRecordsInner>();
  set records(ListBuilder<V2IysCampaignsGet200ResponseRecordsInner>? records) =>
      _$this._records = records;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  V2IysCampaignsGet200ResponseBuilder() {
    V2IysCampaignsGet200Response._defaults(this);
  }

  V2IysCampaignsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2IysCampaignsGet200Response other) {
    _$v = other as _$V2IysCampaignsGet200Response;
  }

  @override
  void update(void Function(V2IysCampaignsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2IysCampaignsGet200Response build() => _build();

  _$V2IysCampaignsGet200Response _build() {
    _$V2IysCampaignsGet200Response _$result;
    try {
      _$result = _$v ??
          _$V2IysCampaignsGet200Response._(
            records: records.build(),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'V2IysCampaignsGet200Response', 'total'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V2IysCampaignsGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
