// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_extensions200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListExtensions200ResponseInner extends ListExtensions200ResponseInner {
  @override
  final String? number;
  @override
  final String? name;
  @override
  final bool? dnd;
  @override
  final bool? isAgent;
  @override
  final String? domain;

  factory _$ListExtensions200ResponseInner(
          [void Function(ListExtensions200ResponseInnerBuilder)? updates]) =>
      (ListExtensions200ResponseInnerBuilder()..update(updates))._build();

  _$ListExtensions200ResponseInner._(
      {this.number, this.name, this.dnd, this.isAgent, this.domain})
      : super._();
  @override
  ListExtensions200ResponseInner rebuild(
          void Function(ListExtensions200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListExtensions200ResponseInnerBuilder toBuilder() =>
      ListExtensions200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListExtensions200ResponseInner &&
        number == other.number &&
        name == other.name &&
        dnd == other.dnd &&
        isAgent == other.isAgent &&
        domain == other.domain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dnd.hashCode);
    _$hash = $jc(_$hash, isAgent.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListExtensions200ResponseInner')
          ..add('number', number)
          ..add('name', name)
          ..add('dnd', dnd)
          ..add('isAgent', isAgent)
          ..add('domain', domain))
        .toString();
  }
}

class ListExtensions200ResponseInnerBuilder
    implements
        Builder<ListExtensions200ResponseInner,
            ListExtensions200ResponseInnerBuilder> {
  _$ListExtensions200ResponseInner? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _dnd;
  bool? get dnd => _$this._dnd;
  set dnd(bool? dnd) => _$this._dnd = dnd;

  bool? _isAgent;
  bool? get isAgent => _$this._isAgent;
  set isAgent(bool? isAgent) => _$this._isAgent = isAgent;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  ListExtensions200ResponseInnerBuilder() {
    ListExtensions200ResponseInner._defaults(this);
  }

  ListExtensions200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _name = $v.name;
      _dnd = $v.dnd;
      _isAgent = $v.isAgent;
      _domain = $v.domain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListExtensions200ResponseInner other) {
    _$v = other as _$ListExtensions200ResponseInner;
  }

  @override
  void update(void Function(ListExtensions200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListExtensions200ResponseInner build() => _build();

  _$ListExtensions200ResponseInner _build() {
    final _$result = _$v ??
        _$ListExtensions200ResponseInner._(
          number: number,
          name: name,
          dnd: dnd,
          isAgent: isAgent,
          domain: domain,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
