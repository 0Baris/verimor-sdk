// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_contacts200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContacts200Response extends ListContacts200Response {
  @override
  final BuiltList<ListContacts200ResponseContactsInner> contacts;
  @override
  final ListContacts200ResponsePagination pagination;

  factory _$ListContacts200Response(
          [void Function(ListContacts200ResponseBuilder)? updates]) =>
      (ListContacts200ResponseBuilder()..update(updates))._build();

  _$ListContacts200Response._(
      {required this.contacts, required this.pagination})
      : super._();
  @override
  ListContacts200Response rebuild(
          void Function(ListContacts200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListContacts200ResponseBuilder toBuilder() =>
      ListContacts200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListContacts200Response &&
        contacts == other.contacts &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contacts.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListContacts200Response')
          ..add('contacts', contacts)
          ..add('pagination', pagination))
        .toString();
  }
}

class ListContacts200ResponseBuilder
    implements
        Builder<ListContacts200Response, ListContacts200ResponseBuilder> {
  _$ListContacts200Response? _$v;

  ListBuilder<ListContacts200ResponseContactsInner>? _contacts;
  ListBuilder<ListContacts200ResponseContactsInner> get contacts =>
      _$this._contacts ??= ListBuilder<ListContacts200ResponseContactsInner>();
  set contacts(ListBuilder<ListContacts200ResponseContactsInner>? contacts) =>
      _$this._contacts = contacts;

  ListContacts200ResponsePaginationBuilder? _pagination;
  ListContacts200ResponsePaginationBuilder get pagination =>
      _$this._pagination ??= ListContacts200ResponsePaginationBuilder();
  set pagination(ListContacts200ResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListContacts200ResponseBuilder() {
    ListContacts200Response._defaults(this);
  }

  ListContacts200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contacts = $v.contacts.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListContacts200Response other) {
    _$v = other as _$ListContacts200Response;
  }

  @override
  void update(void Function(ListContacts200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListContacts200Response build() => _build();

  _$ListContacts200Response _build() {
    _$ListContacts200Response _$result;
    try {
      _$result = _$v ??
          _$ListContacts200Response._(
            contacts: contacts.build(),
            pagination: pagination.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contacts';
        contacts.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListContacts200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
