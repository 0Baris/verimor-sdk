// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_fax_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListFaxOrders200Response extends ListFaxOrders200Response {
  @override
  final BuiltList<ListFaxOrders200ResponseFaxOrdersInner> faxOrders;
  @override
  final ListFaxOrders200ResponsePagination pagination;

  factory _$ListFaxOrders200Response(
          [void Function(ListFaxOrders200ResponseBuilder)? updates]) =>
      (ListFaxOrders200ResponseBuilder()..update(updates))._build();

  _$ListFaxOrders200Response._(
      {required this.faxOrders, required this.pagination})
      : super._();
  @override
  ListFaxOrders200Response rebuild(
          void Function(ListFaxOrders200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListFaxOrders200ResponseBuilder toBuilder() =>
      ListFaxOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListFaxOrders200Response &&
        faxOrders == other.faxOrders &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, faxOrders.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListFaxOrders200Response')
          ..add('faxOrders', faxOrders)
          ..add('pagination', pagination))
        .toString();
  }
}

class ListFaxOrders200ResponseBuilder
    implements
        Builder<ListFaxOrders200Response, ListFaxOrders200ResponseBuilder> {
  _$ListFaxOrders200Response? _$v;

  ListBuilder<ListFaxOrders200ResponseFaxOrdersInner>? _faxOrders;
  ListBuilder<ListFaxOrders200ResponseFaxOrdersInner> get faxOrders =>
      _$this._faxOrders ??=
          ListBuilder<ListFaxOrders200ResponseFaxOrdersInner>();
  set faxOrders(
          ListBuilder<ListFaxOrders200ResponseFaxOrdersInner>? faxOrders) =>
      _$this._faxOrders = faxOrders;

  ListFaxOrders200ResponsePaginationBuilder? _pagination;
  ListFaxOrders200ResponsePaginationBuilder get pagination =>
      _$this._pagination ??= ListFaxOrders200ResponsePaginationBuilder();
  set pagination(ListFaxOrders200ResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListFaxOrders200ResponseBuilder() {
    ListFaxOrders200Response._defaults(this);
  }

  ListFaxOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _faxOrders = $v.faxOrders.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListFaxOrders200Response other) {
    _$v = other as _$ListFaxOrders200Response;
  }

  @override
  void update(void Function(ListFaxOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListFaxOrders200Response build() => _build();

  _$ListFaxOrders200Response _build() {
    _$ListFaxOrders200Response _$result;
    try {
      _$result = _$v ??
          _$ListFaxOrders200Response._(
            faxOrders: faxOrders.build(),
            pagination: pagination.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'faxOrders';
        faxOrders.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListFaxOrders200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
