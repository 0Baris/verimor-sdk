// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_fax_orders200_response_fax_orders_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListFaxOrders200ResponseFaxOrdersInner
    extends ListFaxOrders200ResponseFaxOrdersInner {
  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String localStationId;
  @override
  final String remoteStationId;
  @override
  final String status;

  factory _$ListFaxOrders200ResponseFaxOrdersInner(
          [void Function(ListFaxOrders200ResponseFaxOrdersInnerBuilder)?
              updates]) =>
      (ListFaxOrders200ResponseFaxOrdersInnerBuilder()..update(updates))
          ._build();

  _$ListFaxOrders200ResponseFaxOrdersInner._(
      {required this.id,
      required this.createdAt,
      required this.localStationId,
      required this.remoteStationId,
      required this.status})
      : super._();
  @override
  ListFaxOrders200ResponseFaxOrdersInner rebuild(
          void Function(ListFaxOrders200ResponseFaxOrdersInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListFaxOrders200ResponseFaxOrdersInnerBuilder toBuilder() =>
      ListFaxOrders200ResponseFaxOrdersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListFaxOrders200ResponseFaxOrdersInner &&
        id == other.id &&
        createdAt == other.createdAt &&
        localStationId == other.localStationId &&
        remoteStationId == other.remoteStationId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, localStationId.hashCode);
    _$hash = $jc(_$hash, remoteStationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ListFaxOrders200ResponseFaxOrdersInner')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('localStationId', localStationId)
          ..add('remoteStationId', remoteStationId)
          ..add('status', status))
        .toString();
  }
}

class ListFaxOrders200ResponseFaxOrdersInnerBuilder
    implements
        Builder<ListFaxOrders200ResponseFaxOrdersInner,
            ListFaxOrders200ResponseFaxOrdersInnerBuilder> {
  _$ListFaxOrders200ResponseFaxOrdersInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _localStationId;
  String? get localStationId => _$this._localStationId;
  set localStationId(String? localStationId) =>
      _$this._localStationId = localStationId;

  String? _remoteStationId;
  String? get remoteStationId => _$this._remoteStationId;
  set remoteStationId(String? remoteStationId) =>
      _$this._remoteStationId = remoteStationId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListFaxOrders200ResponseFaxOrdersInnerBuilder() {
    ListFaxOrders200ResponseFaxOrdersInner._defaults(this);
  }

  ListFaxOrders200ResponseFaxOrdersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAt = $v.createdAt;
      _localStationId = $v.localStationId;
      _remoteStationId = $v.remoteStationId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListFaxOrders200ResponseFaxOrdersInner other) {
    _$v = other as _$ListFaxOrders200ResponseFaxOrdersInner;
  }

  @override
  void update(
      void Function(ListFaxOrders200ResponseFaxOrdersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListFaxOrders200ResponseFaxOrdersInner build() => _build();

  _$ListFaxOrders200ResponseFaxOrdersInner _build() {
    final _$result = _$v ??
        _$ListFaxOrders200ResponseFaxOrdersInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ListFaxOrders200ResponseFaxOrdersInner', 'id'),
          createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
              r'ListFaxOrders200ResponseFaxOrdersInner', 'createdAt'),
          localStationId: BuiltValueNullFieldError.checkNotNull(localStationId,
              r'ListFaxOrders200ResponseFaxOrdersInner', 'localStationId'),
          remoteStationId: BuiltValueNullFieldError.checkNotNull(
              remoteStationId,
              r'ListFaxOrders200ResponseFaxOrdersInner',
              'remoteStationId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ListFaxOrders200ResponseFaxOrdersInner', 'status'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
