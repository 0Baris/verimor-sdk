// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_statuses200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListUserStatuses200ResponseInnerStatusEnum
    _$listUserStatuses200ResponseInnerStatusEnum_AVAILABLE =
    const ListUserStatuses200ResponseInnerStatusEnum._('AVAILABLE');
const ListUserStatuses200ResponseInnerStatusEnum
    _$listUserStatuses200ResponseInnerStatusEnum_TALKING =
    const ListUserStatuses200ResponseInnerStatusEnum._('TALKING');
const ListUserStatuses200ResponseInnerStatusEnum
    _$listUserStatuses200ResponseInnerStatusEnum_UNREGISTERED =
    const ListUserStatuses200ResponseInnerStatusEnum._('UNREGISTERED');
const ListUserStatuses200ResponseInnerStatusEnum
    _$listUserStatuses200ResponseInnerStatusEnum_SS_DND =
    const ListUserStatuses200ResponseInnerStatusEnum._('SS_DND');

ListUserStatuses200ResponseInnerStatusEnum
    _$listUserStatuses200ResponseInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'AVAILABLE':
      return _$listUserStatuses200ResponseInnerStatusEnum_AVAILABLE;
    case 'TALKING':
      return _$listUserStatuses200ResponseInnerStatusEnum_TALKING;
    case 'UNREGISTERED':
      return _$listUserStatuses200ResponseInnerStatusEnum_UNREGISTERED;
    case 'SS_DND':
      return _$listUserStatuses200ResponseInnerStatusEnum_SS_DND;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListUserStatuses200ResponseInnerStatusEnum>
    _$listUserStatuses200ResponseInnerStatusEnumValues = BuiltSet<
        ListUserStatuses200ResponseInnerStatusEnum>(const <ListUserStatuses200ResponseInnerStatusEnum>[
  _$listUserStatuses200ResponseInnerStatusEnum_AVAILABLE,
  _$listUserStatuses200ResponseInnerStatusEnum_TALKING,
  _$listUserStatuses200ResponseInnerStatusEnum_UNREGISTERED,
  _$listUserStatuses200ResponseInnerStatusEnum_SS_DND,
]);

Serializer<ListUserStatuses200ResponseInnerStatusEnum>
    _$listUserStatuses200ResponseInnerStatusEnumSerializer =
    _$ListUserStatuses200ResponseInnerStatusEnumSerializer();

class _$ListUserStatuses200ResponseInnerStatusEnumSerializer
    implements PrimitiveSerializer<ListUserStatuses200ResponseInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'AVAILABLE': 'AVAILABLE',
    'TALKING': 'TALKING',
    'UNREGISTERED': 'UNREGISTERED',
    'SS_DND': 'SS_DND',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'AVAILABLE': 'AVAILABLE',
    'TALKING': 'TALKING',
    'UNREGISTERED': 'UNREGISTERED',
    'SS_DND': 'SS_DND',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListUserStatuses200ResponseInnerStatusEnum
  ];
  @override
  final String wireName = 'ListUserStatuses200ResponseInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          ListUserStatuses200ResponseInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListUserStatuses200ResponseInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListUserStatuses200ResponseInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListUserStatuses200ResponseInner
    extends ListUserStatuses200ResponseInner {
  @override
  final int user;
  @override
  final ListUserStatuses200ResponseInnerStatusEnum status;

  factory _$ListUserStatuses200ResponseInner(
          [void Function(ListUserStatuses200ResponseInnerBuilder)? updates]) =>
      (ListUserStatuses200ResponseInnerBuilder()..update(updates))._build();

  _$ListUserStatuses200ResponseInner._(
      {required this.user, required this.status})
      : super._();
  @override
  ListUserStatuses200ResponseInner rebuild(
          void Function(ListUserStatuses200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUserStatuses200ResponseInnerBuilder toBuilder() =>
      ListUserStatuses200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListUserStatuses200ResponseInner &&
        user == other.user &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListUserStatuses200ResponseInner')
          ..add('user', user)
          ..add('status', status))
        .toString();
  }
}

class ListUserStatuses200ResponseInnerBuilder
    implements
        Builder<ListUserStatuses200ResponseInner,
            ListUserStatuses200ResponseInnerBuilder> {
  _$ListUserStatuses200ResponseInner? _$v;

  int? _user;
  int? get user => _$this._user;
  set user(int? user) => _$this._user = user;

  ListUserStatuses200ResponseInnerStatusEnum? _status;
  ListUserStatuses200ResponseInnerStatusEnum? get status => _$this._status;
  set status(ListUserStatuses200ResponseInnerStatusEnum? status) =>
      _$this._status = status;

  ListUserStatuses200ResponseInnerBuilder() {
    ListUserStatuses200ResponseInner._defaults(this);
  }

  ListUserStatuses200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListUserStatuses200ResponseInner other) {
    _$v = other as _$ListUserStatuses200ResponseInner;
  }

  @override
  void update(void Function(ListUserStatuses200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListUserStatuses200ResponseInner build() => _build();

  _$ListUserStatuses200ResponseInner _build() {
    final _$result = _$v ??
        _$ListUserStatuses200ResponseInner._(
          user: BuiltValueNullFieldError.checkNotNull(
              user, r'ListUserStatuses200ResponseInner', 'user'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ListUserStatuses200ResponseInner', 'status'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
