// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_contact_groups200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListContactGroups200ResponseInner
    extends ListContactGroups200ResponseInner {
  @override
  final int id;
  @override
  final String name;

  factory _$ListContactGroups200ResponseInner(
          [void Function(ListContactGroups200ResponseInnerBuilder)? updates]) =>
      (ListContactGroups200ResponseInnerBuilder()..update(updates))._build();

  _$ListContactGroups200ResponseInner._({required this.id, required this.name})
      : super._();
  @override
  ListContactGroups200ResponseInner rebuild(
          void Function(ListContactGroups200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListContactGroups200ResponseInnerBuilder toBuilder() =>
      ListContactGroups200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListContactGroups200ResponseInner &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListContactGroups200ResponseInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ListContactGroups200ResponseInnerBuilder
    implements
        Builder<ListContactGroups200ResponseInner,
            ListContactGroups200ResponseInnerBuilder> {
  _$ListContactGroups200ResponseInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListContactGroups200ResponseInnerBuilder() {
    ListContactGroups200ResponseInner._defaults(this);
  }

  ListContactGroups200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListContactGroups200ResponseInner other) {
    _$v = other as _$ListContactGroups200ResponseInner;
  }

  @override
  void update(
      void Function(ListContactGroups200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListContactGroups200ResponseInner build() => _build();

  _$ListContactGroups200ResponseInner _build() {
    final _$result = _$v ??
        _$ListContactGroups200ResponseInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ListContactGroups200ResponseInner', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ListContactGroups200ResponseInner', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
