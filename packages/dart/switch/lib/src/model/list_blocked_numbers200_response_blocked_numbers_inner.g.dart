// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_blocked_numbers200_response_blocked_numbers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBlockedNumbers200ResponseBlockedNumbersInner
    extends ListBlockedNumbers200ResponseBlockedNumbersInner {
  @override
  final int id;
  @override
  final String number;
  @override
  final String? direction;

  factory _$ListBlockedNumbers200ResponseBlockedNumbersInner(
          [void Function(
                  ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder)?
              updates]) =>
      (ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder()
            ..update(updates))
          ._build();

  _$ListBlockedNumbers200ResponseBlockedNumbersInner._(
      {required this.id, required this.number, this.direction})
      : super._();
  @override
  ListBlockedNumbers200ResponseBlockedNumbersInner rebuild(
          void Function(ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder toBuilder() =>
      ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBlockedNumbers200ResponseBlockedNumbersInner &&
        id == other.id &&
        number == other.number &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ListBlockedNumbers200ResponseBlockedNumbersInner')
          ..add('id', id)
          ..add('number', number)
          ..add('direction', direction))
        .toString();
  }
}

class ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder
    implements
        Builder<ListBlockedNumbers200ResponseBlockedNumbersInner,
            ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder> {
  _$ListBlockedNumbers200ResponseBlockedNumbersInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder() {
    ListBlockedNumbers200ResponseBlockedNumbersInner._defaults(this);
  }

  ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _number = $v.number;
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBlockedNumbers200ResponseBlockedNumbersInner other) {
    _$v = other as _$ListBlockedNumbers200ResponseBlockedNumbersInner;
  }

  @override
  void update(
      void Function(ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBlockedNumbers200ResponseBlockedNumbersInner build() => _build();

  _$ListBlockedNumbers200ResponseBlockedNumbersInner _build() {
    final _$result = _$v ??
        _$ListBlockedNumbers200ResponseBlockedNumbersInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ListBlockedNumbers200ResponseBlockedNumbersInner', 'id'),
          number: BuiltValueNullFieldError.checkNotNull(number,
              r'ListBlockedNumbers200ResponseBlockedNumbersInner', 'number'),
          direction: direction,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
