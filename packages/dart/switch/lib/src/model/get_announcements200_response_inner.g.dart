// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_announcements200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAnnouncements200ResponseInner
    extends GetAnnouncements200ResponseInner {
  @override
  final int? id;
  @override
  final String? name;

  factory _$GetAnnouncements200ResponseInner(
          [void Function(GetAnnouncements200ResponseInnerBuilder)? updates]) =>
      (GetAnnouncements200ResponseInnerBuilder()..update(updates))._build();

  _$GetAnnouncements200ResponseInner._({this.id, this.name}) : super._();
  @override
  GetAnnouncements200ResponseInner rebuild(
          void Function(GetAnnouncements200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAnnouncements200ResponseInnerBuilder toBuilder() =>
      GetAnnouncements200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAnnouncements200ResponseInner &&
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
    return (newBuiltValueToStringHelper(r'GetAnnouncements200ResponseInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GetAnnouncements200ResponseInnerBuilder
    implements
        Builder<GetAnnouncements200ResponseInner,
            GetAnnouncements200ResponseInnerBuilder> {
  _$GetAnnouncements200ResponseInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetAnnouncements200ResponseInnerBuilder() {
    GetAnnouncements200ResponseInner._defaults(this);
  }

  GetAnnouncements200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAnnouncements200ResponseInner other) {
    _$v = other as _$GetAnnouncements200ResponseInner;
  }

  @override
  void update(void Function(GetAnnouncements200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAnnouncements200ResponseInner build() => _build();

  _$GetAnnouncements200ResponseInner _build() {
    final _$result = _$v ??
        _$GetAnnouncements200ResponseInner._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
