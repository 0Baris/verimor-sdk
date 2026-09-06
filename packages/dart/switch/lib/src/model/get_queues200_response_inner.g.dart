// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_queues200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetQueues200ResponseInner extends GetQueues200ResponseInner {
  @override
  final int? number;
  @override
  final String? name;

  factory _$GetQueues200ResponseInner(
          [void Function(GetQueues200ResponseInnerBuilder)? updates]) =>
      (GetQueues200ResponseInnerBuilder()..update(updates))._build();

  _$GetQueues200ResponseInner._({this.number, this.name}) : super._();
  @override
  GetQueues200ResponseInner rebuild(
          void Function(GetQueues200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetQueues200ResponseInnerBuilder toBuilder() =>
      GetQueues200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetQueues200ResponseInner &&
        number == other.number &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetQueues200ResponseInner')
          ..add('number', number)
          ..add('name', name))
        .toString();
  }
}

class GetQueues200ResponseInnerBuilder
    implements
        Builder<GetQueues200ResponseInner, GetQueues200ResponseInnerBuilder> {
  _$GetQueues200ResponseInner? _$v;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetQueues200ResponseInnerBuilder() {
    GetQueues200ResponseInner._defaults(this);
  }

  GetQueues200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetQueues200ResponseInner other) {
    _$v = other as _$GetQueues200ResponseInner;
  }

  @override
  void update(void Function(GetQueues200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetQueues200ResponseInner build() => _build();

  _$GetQueues200ResponseInner _build() {
    final _$result = _$v ??
        _$GetQueues200ResponseInner._(
          number: number,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
