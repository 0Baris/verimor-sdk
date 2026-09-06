// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iys_gunluk_vatandas_raporu_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IYSGunlukVatandasRaporuPostRequest
    extends IYSGunlukVatandasRaporuPostRequest {
  @override
  final int? iysCampaignId;
  @override
  final String? reportDate;
  @override
  final String? sourceAddr;

  factory _$IYSGunlukVatandasRaporuPostRequest(
          [void Function(IYSGunlukVatandasRaporuPostRequestBuilder)?
              updates]) =>
      (IYSGunlukVatandasRaporuPostRequestBuilder()..update(updates))._build();

  _$IYSGunlukVatandasRaporuPostRequest._(
      {this.iysCampaignId, this.reportDate, this.sourceAddr})
      : super._();
  @override
  IYSGunlukVatandasRaporuPostRequest rebuild(
          void Function(IYSGunlukVatandasRaporuPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IYSGunlukVatandasRaporuPostRequestBuilder toBuilder() =>
      IYSGunlukVatandasRaporuPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IYSGunlukVatandasRaporuPostRequest &&
        iysCampaignId == other.iysCampaignId &&
        reportDate == other.reportDate &&
        sourceAddr == other.sourceAddr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iysCampaignId.hashCode);
    _$hash = $jc(_$hash, reportDate.hashCode);
    _$hash = $jc(_$hash, sourceAddr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IYSGunlukVatandasRaporuPostRequest')
          ..add('iysCampaignId', iysCampaignId)
          ..add('reportDate', reportDate)
          ..add('sourceAddr', sourceAddr))
        .toString();
  }
}

class IYSGunlukVatandasRaporuPostRequestBuilder
    implements
        Builder<IYSGunlukVatandasRaporuPostRequest,
            IYSGunlukVatandasRaporuPostRequestBuilder> {
  _$IYSGunlukVatandasRaporuPostRequest? _$v;

  int? _iysCampaignId;
  int? get iysCampaignId => _$this._iysCampaignId;
  set iysCampaignId(int? iysCampaignId) =>
      _$this._iysCampaignId = iysCampaignId;

  String? _reportDate;
  String? get reportDate => _$this._reportDate;
  set reportDate(String? reportDate) => _$this._reportDate = reportDate;

  String? _sourceAddr;
  String? get sourceAddr => _$this._sourceAddr;
  set sourceAddr(String? sourceAddr) => _$this._sourceAddr = sourceAddr;

  IYSGunlukVatandasRaporuPostRequestBuilder() {
    IYSGunlukVatandasRaporuPostRequest._defaults(this);
  }

  IYSGunlukVatandasRaporuPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iysCampaignId = $v.iysCampaignId;
      _reportDate = $v.reportDate;
      _sourceAddr = $v.sourceAddr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IYSGunlukVatandasRaporuPostRequest other) {
    _$v = other as _$IYSGunlukVatandasRaporuPostRequest;
  }

  @override
  void update(
      void Function(IYSGunlukVatandasRaporuPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IYSGunlukVatandasRaporuPostRequest build() => _build();

  _$IYSGunlukVatandasRaporuPostRequest _build() {
    final _$result = _$v ??
        _$IYSGunlukVatandasRaporuPostRequest._(
          iysCampaignId: iysCampaignId,
          reportDate: reportDate,
          sourceAddr: sourceAddr,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
