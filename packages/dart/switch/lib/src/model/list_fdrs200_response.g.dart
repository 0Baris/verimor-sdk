// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_fdrs200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListFdrs200Response extends ListFdrs200Response {
  @override
  final BuiltList<ListFdrs200ResponseFdrsInner> fdrs;
  @override
  final ListFdrs200ResponsePagination pagination;

  factory _$ListFdrs200Response(
          [void Function(ListFdrs200ResponseBuilder)? updates]) =>
      (ListFdrs200ResponseBuilder()..update(updates))._build();

  _$ListFdrs200Response._({required this.fdrs, required this.pagination})
      : super._();
  @override
  ListFdrs200Response rebuild(
          void Function(ListFdrs200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListFdrs200ResponseBuilder toBuilder() =>
      ListFdrs200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListFdrs200Response &&
        fdrs == other.fdrs &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fdrs.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListFdrs200Response')
          ..add('fdrs', fdrs)
          ..add('pagination', pagination))
        .toString();
  }
}

class ListFdrs200ResponseBuilder
    implements Builder<ListFdrs200Response, ListFdrs200ResponseBuilder> {
  _$ListFdrs200Response? _$v;

  ListBuilder<ListFdrs200ResponseFdrsInner>? _fdrs;
  ListBuilder<ListFdrs200ResponseFdrsInner> get fdrs =>
      _$this._fdrs ??= ListBuilder<ListFdrs200ResponseFdrsInner>();
  set fdrs(ListBuilder<ListFdrs200ResponseFdrsInner>? fdrs) =>
      _$this._fdrs = fdrs;

  ListFdrs200ResponsePaginationBuilder? _pagination;
  ListFdrs200ResponsePaginationBuilder get pagination =>
      _$this._pagination ??= ListFdrs200ResponsePaginationBuilder();
  set pagination(ListFdrs200ResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListFdrs200ResponseBuilder() {
    ListFdrs200Response._defaults(this);
  }

  ListFdrs200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fdrs = $v.fdrs.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListFdrs200Response other) {
    _$v = other as _$ListFdrs200Response;
  }

  @override
  void update(void Function(ListFdrs200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListFdrs200Response build() => _build();

  _$ListFdrs200Response _build() {
    _$ListFdrs200Response _$result;
    try {
      _$result = _$v ??
          _$ListFdrs200Response._(
            fdrs: fdrs.build(),
            pagination: pagination.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fdrs';
        fdrs.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListFdrs200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
