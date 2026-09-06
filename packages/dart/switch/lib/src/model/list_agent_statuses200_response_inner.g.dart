// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_agent_statuses200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListAgentStatuses200ResponseInnerStatusEnum
    _$listAgentStatuses200ResponseInnerStatusEnum_AVAILABLE =
    const ListAgentStatuses200ResponseInnerStatusEnum._('AVAILABLE');
const ListAgentStatuses200ResponseInnerStatusEnum
    _$listAgentStatuses200ResponseInnerStatusEnum_TALKING =
    const ListAgentStatuses200ResponseInnerStatusEnum._('TALKING');
const ListAgentStatuses200ResponseInnerStatusEnum
    _$listAgentStatuses200ResponseInnerStatusEnum_LOGGED_OUT =
    const ListAgentStatuses200ResponseInnerStatusEnum._('LOGGED_OUT');
const ListAgentStatuses200ResponseInnerStatusEnum
    _$listAgentStatuses200ResponseInnerStatusEnum_ON_BREAK =
    const ListAgentStatuses200ResponseInnerStatusEnum._('ON_BREAK');

ListAgentStatuses200ResponseInnerStatusEnum
    _$listAgentStatuses200ResponseInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'AVAILABLE':
      return _$listAgentStatuses200ResponseInnerStatusEnum_AVAILABLE;
    case 'TALKING':
      return _$listAgentStatuses200ResponseInnerStatusEnum_TALKING;
    case 'LOGGED_OUT':
      return _$listAgentStatuses200ResponseInnerStatusEnum_LOGGED_OUT;
    case 'ON_BREAK':
      return _$listAgentStatuses200ResponseInnerStatusEnum_ON_BREAK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListAgentStatuses200ResponseInnerStatusEnum>
    _$listAgentStatuses200ResponseInnerStatusEnumValues = BuiltSet<
        ListAgentStatuses200ResponseInnerStatusEnum>(const <ListAgentStatuses200ResponseInnerStatusEnum>[
  _$listAgentStatuses200ResponseInnerStatusEnum_AVAILABLE,
  _$listAgentStatuses200ResponseInnerStatusEnum_TALKING,
  _$listAgentStatuses200ResponseInnerStatusEnum_LOGGED_OUT,
  _$listAgentStatuses200ResponseInnerStatusEnum_ON_BREAK,
]);

Serializer<ListAgentStatuses200ResponseInnerStatusEnum>
    _$listAgentStatuses200ResponseInnerStatusEnumSerializer =
    _$ListAgentStatuses200ResponseInnerStatusEnumSerializer();

class _$ListAgentStatuses200ResponseInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<ListAgentStatuses200ResponseInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'AVAILABLE': 'AVAILABLE',
    'TALKING': 'TALKING',
    'LOGGED_OUT': 'LOGGED_OUT',
    'ON_BREAK': 'ON_BREAK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'AVAILABLE': 'AVAILABLE',
    'TALKING': 'TALKING',
    'LOGGED_OUT': 'LOGGED_OUT',
    'ON_BREAK': 'ON_BREAK',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ListAgentStatuses200ResponseInnerStatusEnum
  ];
  @override
  final String wireName = 'ListAgentStatuses200ResponseInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          ListAgentStatuses200ResponseInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListAgentStatuses200ResponseInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListAgentStatuses200ResponseInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListAgentStatuses200ResponseInner
    extends ListAgentStatuses200ResponseInner {
  @override
  final String agent;
  @override
  final BuiltList<String> queues;
  @override
  final ListAgentStatuses200ResponseInnerStatusEnum status;
  @override
  final String? breakDescription;

  factory _$ListAgentStatuses200ResponseInner(
          [void Function(ListAgentStatuses200ResponseInnerBuilder)? updates]) =>
      (ListAgentStatuses200ResponseInnerBuilder()..update(updates))._build();

  _$ListAgentStatuses200ResponseInner._(
      {required this.agent,
      required this.queues,
      required this.status,
      this.breakDescription})
      : super._();
  @override
  ListAgentStatuses200ResponseInner rebuild(
          void Function(ListAgentStatuses200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAgentStatuses200ResponseInnerBuilder toBuilder() =>
      ListAgentStatuses200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAgentStatuses200ResponseInner &&
        agent == other.agent &&
        queues == other.queues &&
        status == other.status &&
        breakDescription == other.breakDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, agent.hashCode);
    _$hash = $jc(_$hash, queues.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, breakDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListAgentStatuses200ResponseInner')
          ..add('agent', agent)
          ..add('queues', queues)
          ..add('status', status)
          ..add('breakDescription', breakDescription))
        .toString();
  }
}

class ListAgentStatuses200ResponseInnerBuilder
    implements
        Builder<ListAgentStatuses200ResponseInner,
            ListAgentStatuses200ResponseInnerBuilder> {
  _$ListAgentStatuses200ResponseInner? _$v;

  String? _agent;
  String? get agent => _$this._agent;
  set agent(String? agent) => _$this._agent = agent;

  ListBuilder<String>? _queues;
  ListBuilder<String> get queues => _$this._queues ??= ListBuilder<String>();
  set queues(ListBuilder<String>? queues) => _$this._queues = queues;

  ListAgentStatuses200ResponseInnerStatusEnum? _status;
  ListAgentStatuses200ResponseInnerStatusEnum? get status => _$this._status;
  set status(ListAgentStatuses200ResponseInnerStatusEnum? status) =>
      _$this._status = status;

  String? _breakDescription;
  String? get breakDescription => _$this._breakDescription;
  set breakDescription(String? breakDescription) =>
      _$this._breakDescription = breakDescription;

  ListAgentStatuses200ResponseInnerBuilder() {
    ListAgentStatuses200ResponseInner._defaults(this);
  }

  ListAgentStatuses200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agent = $v.agent;
      _queues = $v.queues.toBuilder();
      _status = $v.status;
      _breakDescription = $v.breakDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAgentStatuses200ResponseInner other) {
    _$v = other as _$ListAgentStatuses200ResponseInner;
  }

  @override
  void update(
      void Function(ListAgentStatuses200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAgentStatuses200ResponseInner build() => _build();

  _$ListAgentStatuses200ResponseInner _build() {
    _$ListAgentStatuses200ResponseInner _$result;
    try {
      _$result = _$v ??
          _$ListAgentStatuses200ResponseInner._(
            agent: BuiltValueNullFieldError.checkNotNull(
                agent, r'ListAgentStatuses200ResponseInner', 'agent'),
            queues: queues.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ListAgentStatuses200ResponseInner', 'status'),
            breakDescription: breakDescription,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queues';
        queues.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListAgentStatuses200ResponseInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
