// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_iys_campaigns_get200_response_records_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2IysCampaignsGet200ResponseRecordsInner
    extends V2IysCampaignsGet200ResponseRecordsInner {
  @override
  final int? id;
  @override
  final String? headerName;
  @override
  final int? iysCode;
  @override
  final int? iysBrandCode;
  @override
  final String? source_;
  @override
  final DateTime? createdAt;

  factory _$V2IysCampaignsGet200ResponseRecordsInner(
          [void Function(V2IysCampaignsGet200ResponseRecordsInnerBuilder)?
              updates]) =>
      (V2IysCampaignsGet200ResponseRecordsInnerBuilder()..update(updates))
          ._build();

  _$V2IysCampaignsGet200ResponseRecordsInner._(
      {this.id,
      this.headerName,
      this.iysCode,
      this.iysBrandCode,
      this.source_,
      this.createdAt})
      : super._();
  @override
  V2IysCampaignsGet200ResponseRecordsInner rebuild(
          void Function(V2IysCampaignsGet200ResponseRecordsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2IysCampaignsGet200ResponseRecordsInnerBuilder toBuilder() =>
      V2IysCampaignsGet200ResponseRecordsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2IysCampaignsGet200ResponseRecordsInner &&
        id == other.id &&
        headerName == other.headerName &&
        iysCode == other.iysCode &&
        iysBrandCode == other.iysBrandCode &&
        source_ == other.source_ &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, headerName.hashCode);
    _$hash = $jc(_$hash, iysCode.hashCode);
    _$hash = $jc(_$hash, iysBrandCode.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2IysCampaignsGet200ResponseRecordsInner')
          ..add('id', id)
          ..add('headerName', headerName)
          ..add('iysCode', iysCode)
          ..add('iysBrandCode', iysBrandCode)
          ..add('source_', source_)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class V2IysCampaignsGet200ResponseRecordsInnerBuilder
    implements
        Builder<V2IysCampaignsGet200ResponseRecordsInner,
            V2IysCampaignsGet200ResponseRecordsInnerBuilder> {
  _$V2IysCampaignsGet200ResponseRecordsInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _headerName;
  String? get headerName => _$this._headerName;
  set headerName(String? headerName) => _$this._headerName = headerName;

  int? _iysCode;
  int? get iysCode => _$this._iysCode;
  set iysCode(int? iysCode) => _$this._iysCode = iysCode;

  int? _iysBrandCode;
  int? get iysBrandCode => _$this._iysBrandCode;
  set iysBrandCode(int? iysBrandCode) => _$this._iysBrandCode = iysBrandCode;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  V2IysCampaignsGet200ResponseRecordsInnerBuilder() {
    V2IysCampaignsGet200ResponseRecordsInner._defaults(this);
  }

  V2IysCampaignsGet200ResponseRecordsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _headerName = $v.headerName;
      _iysCode = $v.iysCode;
      _iysBrandCode = $v.iysBrandCode;
      _source_ = $v.source_;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2IysCampaignsGet200ResponseRecordsInner other) {
    _$v = other as _$V2IysCampaignsGet200ResponseRecordsInner;
  }

  @override
  void update(
      void Function(V2IysCampaignsGet200ResponseRecordsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2IysCampaignsGet200ResponseRecordsInner build() => _build();

  _$V2IysCampaignsGet200ResponseRecordsInner _build() {
    final _$result = _$v ??
        _$V2IysCampaignsGet200ResponseRecordsInner._(
          id: id,
          headerName: headerName,
          iysCode: iysCode,
          iysBrandCode: iysBrandCode,
          source_: source_,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
