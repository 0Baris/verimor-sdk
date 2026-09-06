// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cdrs200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCdrs200Response extends GetCdrs200Response {
  @override
  final BuiltList<GetCdrs200ResponseCdrsInner>? cdrs;
  @override
  final GetCdrs200ResponsePagination? pagination;

  factory _$GetCdrs200Response(
          [void Function(GetCdrs200ResponseBuilder)? updates]) =>
      (GetCdrs200ResponseBuilder()..update(updates))._build();

  _$GetCdrs200Response._({this.cdrs, this.pagination}) : super._();
  @override
  GetCdrs200Response rebuild(
          void Function(GetCdrs200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCdrs200ResponseBuilder toBuilder() =>
      GetCdrs200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCdrs200Response &&
        cdrs == other.cdrs &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cdrs.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCdrs200Response')
          ..add('cdrs', cdrs)
          ..add('pagination', pagination))
        .toString();
  }
}

class GetCdrs200ResponseBuilder
    implements Builder<GetCdrs200Response, GetCdrs200ResponseBuilder> {
  _$GetCdrs200Response? _$v;

  ListBuilder<GetCdrs200ResponseCdrsInner>? _cdrs;
  ListBuilder<GetCdrs200ResponseCdrsInner> get cdrs =>
      _$this._cdrs ??= ListBuilder<GetCdrs200ResponseCdrsInner>();
  set cdrs(ListBuilder<GetCdrs200ResponseCdrsInner>? cdrs) =>
      _$this._cdrs = cdrs;

  GetCdrs200ResponsePaginationBuilder? _pagination;
  GetCdrs200ResponsePaginationBuilder get pagination =>
      _$this._pagination ??= GetCdrs200ResponsePaginationBuilder();
  set pagination(GetCdrs200ResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  GetCdrs200ResponseBuilder() {
    GetCdrs200Response._defaults(this);
  }

  GetCdrs200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cdrs = $v.cdrs?.toBuilder();
      _pagination = $v.pagination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCdrs200Response other) {
    _$v = other as _$GetCdrs200Response;
  }

  @override
  void update(void Function(GetCdrs200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCdrs200Response build() => _build();

  _$GetCdrs200Response _build() {
    _$GetCdrs200Response _$result;
    try {
      _$result = _$v ??
          _$GetCdrs200Response._(
            cdrs: _cdrs?.build(),
            pagination: _pagination?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cdrs';
        _cdrs?.build();
        _$failedField = 'pagination';
        _pagination?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetCdrs200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
