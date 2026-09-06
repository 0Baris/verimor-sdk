// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_contacts200_response_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContacts200ResponsePagination
    extends ListContacts200ResponsePagination {
  @override
  final int page;
  @override
  final int totalCount;
  @override
  final int totalPages;
  @override
  final int limit;

  factory _$ListContacts200ResponsePagination(
          [void Function(ListContacts200ResponsePaginationBuilder)? updates]) =>
      (ListContacts200ResponsePaginationBuilder()..update(updates))._build();

  _$ListContacts200ResponsePagination._(
      {required this.page,
      required this.totalCount,
      required this.totalPages,
      required this.limit})
      : super._();
  @override
  ListContacts200ResponsePagination rebuild(
          void Function(ListContacts200ResponsePaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListContacts200ResponsePaginationBuilder toBuilder() =>
      ListContacts200ResponsePaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListContacts200ResponsePagination &&
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
    return (newBuiltValueToStringHelper(r'ListContacts200ResponsePagination')
          ..add('page', page)
          ..add('totalCount', totalCount)
          ..add('totalPages', totalPages)
          ..add('limit', limit))
        .toString();
  }
}

class ListContacts200ResponsePaginationBuilder
    implements
        Builder<ListContacts200ResponsePagination,
            ListContacts200ResponsePaginationBuilder> {
  _$ListContacts200ResponsePagination? _$v;

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

  ListContacts200ResponsePaginationBuilder() {
    ListContacts200ResponsePagination._defaults(this);
  }

  ListContacts200ResponsePaginationBuilder get _$this {
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
  void replace(ListContacts200ResponsePagination other) {
    _$v = other as _$ListContacts200ResponsePagination;
  }

  @override
  void update(
      void Function(ListContacts200ResponsePaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListContacts200ResponsePagination build() => _build();

  _$ListContacts200ResponsePagination _build() {
    final _$result = _$v ??
        _$ListContacts200ResponsePagination._(
          page: BuiltValueNullFieldError.checkNotNull(
              page, r'ListContacts200ResponsePagination', 'page'),
          totalCount: BuiltValueNullFieldError.checkNotNull(
              totalCount, r'ListContacts200ResponsePagination', 'totalCount'),
          totalPages: BuiltValueNullFieldError.checkNotNull(
              totalPages, r'ListContacts200ResponsePagination', 'totalPages'),
          limit: BuiltValueNullFieldError.checkNotNull(
              limit, r'ListContacts200ResponsePagination', 'limit'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
