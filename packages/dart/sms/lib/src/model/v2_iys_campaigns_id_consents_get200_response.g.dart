// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_iys_campaigns_id_consents_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2IysCampaignsIdConsentsGet200Response
    extends V2IysCampaignsIdConsentsGet200Response {
  @override
  final int total;
  @override
  final String sourceAddr;
  @override
  final String status;
  @override
  final BuiltList<V2IysCampaignsIdConsentsGet200ResponseRecordsInner> records;

  factory _$V2IysCampaignsIdConsentsGet200Response(
          [void Function(V2IysCampaignsIdConsentsGet200ResponseBuilder)?
              updates]) =>
      (V2IysCampaignsIdConsentsGet200ResponseBuilder()..update(updates))
          ._build();

  _$V2IysCampaignsIdConsentsGet200Response._(
      {required this.total,
      required this.sourceAddr,
      required this.status,
      required this.records})
      : super._();
  @override
  V2IysCampaignsIdConsentsGet200Response rebuild(
          void Function(V2IysCampaignsIdConsentsGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2IysCampaignsIdConsentsGet200ResponseBuilder toBuilder() =>
      V2IysCampaignsIdConsentsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2IysCampaignsIdConsentsGet200Response &&
        total == other.total &&
        sourceAddr == other.sourceAddr &&
        status == other.status &&
        records == other.records;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, sourceAddr.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2IysCampaignsIdConsentsGet200Response')
          ..add('total', total)
          ..add('sourceAddr', sourceAddr)
          ..add('status', status)
          ..add('records', records))
        .toString();
  }
}

class V2IysCampaignsIdConsentsGet200ResponseBuilder
    implements
        Builder<V2IysCampaignsIdConsentsGet200Response,
            V2IysCampaignsIdConsentsGet200ResponseBuilder> {
  _$V2IysCampaignsIdConsentsGet200Response? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  String? _sourceAddr;
  String? get sourceAddr => _$this._sourceAddr;
  set sourceAddr(String? sourceAddr) => _$this._sourceAddr = sourceAddr;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<V2IysCampaignsIdConsentsGet200ResponseRecordsInner>? _records;
  ListBuilder<V2IysCampaignsIdConsentsGet200ResponseRecordsInner> get records =>
      _$this._records ??=
          ListBuilder<V2IysCampaignsIdConsentsGet200ResponseRecordsInner>();
  set records(
          ListBuilder<V2IysCampaignsIdConsentsGet200ResponseRecordsInner>?
              records) =>
      _$this._records = records;

  V2IysCampaignsIdConsentsGet200ResponseBuilder() {
    V2IysCampaignsIdConsentsGet200Response._defaults(this);
  }

  V2IysCampaignsIdConsentsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _sourceAddr = $v.sourceAddr;
      _status = $v.status;
      _records = $v.records.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2IysCampaignsIdConsentsGet200Response other) {
    _$v = other as _$V2IysCampaignsIdConsentsGet200Response;
  }

  @override
  void update(
      void Function(V2IysCampaignsIdConsentsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2IysCampaignsIdConsentsGet200Response build() => _build();

  _$V2IysCampaignsIdConsentsGet200Response _build() {
    _$V2IysCampaignsIdConsentsGet200Response _$result;
    try {
      _$result = _$v ??
          _$V2IysCampaignsIdConsentsGet200Response._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'V2IysCampaignsIdConsentsGet200Response', 'total'),
            sourceAddr: BuiltValueNullFieldError.checkNotNull(sourceAddr,
                r'V2IysCampaignsIdConsentsGet200Response', 'sourceAddr'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'V2IysCampaignsIdConsentsGet200Response', 'status'),
            records: records.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'V2IysCampaignsIdConsentsGet200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
