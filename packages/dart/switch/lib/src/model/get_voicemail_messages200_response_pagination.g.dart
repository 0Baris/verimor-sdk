// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_voicemail_messages200_response_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVoicemailMessages200ResponsePagination
    extends GetVoicemailMessages200ResponsePagination {
  @override
  final int page;
  @override
  final int totalCount;
  @override
  final int totalPages;
  @override
  final int limit;

  factory _$GetVoicemailMessages200ResponsePagination(
          [void Function(GetVoicemailMessages200ResponsePaginationBuilder)?
              updates]) =>
      (GetVoicemailMessages200ResponsePaginationBuilder()..update(updates))
          ._build();

  _$GetVoicemailMessages200ResponsePagination._(
      {required this.page,
      required this.totalCount,
      required this.totalPages,
      required this.limit})
      : super._();
  @override
  GetVoicemailMessages200ResponsePagination rebuild(
          void Function(GetVoicemailMessages200ResponsePaginationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVoicemailMessages200ResponsePaginationBuilder toBuilder() =>
      GetVoicemailMessages200ResponsePaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVoicemailMessages200ResponsePagination &&
        page == other.page &&
        totalCount == other.totalCount &&
        totalPages == other.totalPages &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetVoicemailMessages200ResponsePagination')
          ..add('page', page)
          ..add('totalCount', totalCount)
          ..add('totalPages', totalPages)
          ..add('limit', limit))
        .toString();
  }
}

class GetVoicemailMessages200ResponsePaginationBuilder
    implements
        Builder<GetVoicemailMessages200ResponsePagination,
            GetVoicemailMessages200ResponsePaginationBuilder> {
  _$GetVoicemailMessages200ResponsePagination? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetVoicemailMessages200ResponsePaginationBuilder() {
    GetVoicemailMessages200ResponsePagination._defaults(this);
  }

  GetVoicemailMessages200ResponsePaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _totalCount = $v.totalCount;
      _totalPages = $v.totalPages;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVoicemailMessages200ResponsePagination other) {
    _$v = other as _$GetVoicemailMessages200ResponsePagination;
  }

  @override
  void update(
      void Function(GetVoicemailMessages200ResponsePaginationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVoicemailMessages200ResponsePagination build() => _build();

  _$GetVoicemailMessages200ResponsePagination _build() {
    final _$result = _$v ??
        _$GetVoicemailMessages200ResponsePagination._(
          page: BuiltValueNullFieldError.checkNotNull(
              page, r'GetVoicemailMessages200ResponsePagination', 'page'),
          totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
              r'GetVoicemailMessages200ResponsePagination', 'totalCount'),
          totalPages: BuiltValueNullFieldError.checkNotNull(totalPages,
              r'GetVoicemailMessages200ResponsePagination', 'totalPages'),
          limit: BuiltValueNullFieldError.checkNotNull(
              limit, r'GetVoicemailMessages200ResponsePagination', 'limit'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
