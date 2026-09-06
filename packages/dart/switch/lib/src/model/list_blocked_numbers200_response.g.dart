// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_blocked_numbers200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBlockedNumbers200Response extends ListBlockedNumbers200Response {
  @override
  final BuiltList<ListBlockedNumbers200ResponseBlockedNumbersInner>
      blockedNumbers;
  @override
  final ListBlockedNumbers200ResponsePagination pagination;

  factory _$ListBlockedNumbers200Response(
          [void Function(ListBlockedNumbers200ResponseBuilder)? updates]) =>
      (ListBlockedNumbers200ResponseBuilder()..update(updates))._build();

  _$ListBlockedNumbers200Response._(
      {required this.blockedNumbers, required this.pagination})
      : super._();
  @override
  ListBlockedNumbers200Response rebuild(
          void Function(ListBlockedNumbers200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBlockedNumbers200ResponseBuilder toBuilder() =>
      ListBlockedNumbers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBlockedNumbers200Response &&
        blockedNumbers == other.blockedNumbers &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockedNumbers.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListBlockedNumbers200Response')
          ..add('blockedNumbers', blockedNumbers)
          ..add('pagination', pagination))
        .toString();
  }
}

class ListBlockedNumbers200ResponseBuilder
    implements
        Builder<ListBlockedNumbers200Response,
            ListBlockedNumbers200ResponseBuilder> {
  _$ListBlockedNumbers200Response? _$v;

  ListBuilder<ListBlockedNumbers200ResponseBlockedNumbersInner>?
      _blockedNumbers;
  ListBuilder<ListBlockedNumbers200ResponseBlockedNumbersInner>
      get blockedNumbers => _$this._blockedNumbers ??=
          ListBuilder<ListBlockedNumbers200ResponseBlockedNumbersInner>();
  set blockedNumbers(
          ListBuilder<ListBlockedNumbers200ResponseBlockedNumbersInner>?
              blockedNumbers) =>
      _$this._blockedNumbers = blockedNumbers;

  ListBlockedNumbers200ResponsePaginationBuilder? _pagination;
  ListBlockedNumbers200ResponsePaginationBuilder get pagination =>
      _$this._pagination ??= ListBlockedNumbers200ResponsePaginationBuilder();
  set pagination(ListBlockedNumbers200ResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListBlockedNumbers200ResponseBuilder() {
    ListBlockedNumbers200Response._defaults(this);
  }

  ListBlockedNumbers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockedNumbers = $v.blockedNumbers.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBlockedNumbers200Response other) {
    _$v = other as _$ListBlockedNumbers200Response;
  }

  @override
  void update(void Function(ListBlockedNumbers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBlockedNumbers200Response build() => _build();

  _$ListBlockedNumbers200Response _build() {
    _$ListBlockedNumbers200Response _$result;
    try {
      _$result = _$v ??
          _$ListBlockedNumbers200Response._(
            blockedNumbers: blockedNumbers.build(),
            pagination: pagination.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockedNumbers';
        blockedNumbers.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListBlockedNumbers200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
