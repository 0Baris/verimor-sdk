//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_agent_statuses200_response_inner.g.dart';

/// ListAgentStatuses200ResponseInner
///
/// Properties:
/// * [agent] - MT numarası
/// * [queues] - MT'nin üye olduğu kuyruklar
/// * [status] - MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada)
/// * [breakDescription] - MT molada ise, mola açıklaması (sadece status ON_BREAK olduğunda mevcut)
@BuiltValue()
abstract class ListAgentStatuses200ResponseInner implements Built<ListAgentStatuses200ResponseInner, ListAgentStatuses200ResponseInnerBuilder> {
  /// MT numarası
  @BuiltValueField(wireName: r'agent')
  String get agent;

  /// MT'nin üye olduğu kuyruklar
  @BuiltValueField(wireName: r'queues')
  BuiltList<String> get queues;

  /// MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada)
  @BuiltValueField(wireName: r'status')
  ListAgentStatuses200ResponseInnerStatusEnum get status;
  // enum statusEnum {  AVAILABLE,  TALKING,  LOGGED_OUT,  ON_BREAK,  };

  /// MT molada ise, mola açıklaması (sadece status ON_BREAK olduğunda mevcut)
  @BuiltValueField(wireName: r'break_description')
  String? get breakDescription;

  ListAgentStatuses200ResponseInner._();

  factory ListAgentStatuses200ResponseInner([void updates(ListAgentStatuses200ResponseInnerBuilder b)]) = _$ListAgentStatuses200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListAgentStatuses200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListAgentStatuses200ResponseInner> get serializer => _$ListAgentStatuses200ResponseInnerSerializer();
}

class _$ListAgentStatuses200ResponseInnerSerializer implements PrimitiveSerializer<ListAgentStatuses200ResponseInner> {
  @override
  final Iterable<Type> types = const [ListAgentStatuses200ResponseInner, _$ListAgentStatuses200ResponseInner];

  @override
  final String wireName = r'ListAgentStatuses200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListAgentStatuses200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'agent';
    yield serializers.serialize(
      object.agent,
      specifiedType: const FullType(String),
    );
    yield r'queues';
    yield serializers.serialize(
      object.queues,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ListAgentStatuses200ResponseInnerStatusEnum),
    );
    if (object.breakDescription != null) {
      yield r'break_description';
      yield serializers.serialize(
        object.breakDescription,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListAgentStatuses200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListAgentStatuses200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.agent = valueDes;
          break;
        case r'queues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.queues.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListAgentStatuses200ResponseInnerStatusEnum),
          ) as ListAgentStatuses200ResponseInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'break_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.breakDescription = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListAgentStatuses200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAgentStatuses200ResponseInnerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ListAgentStatuses200ResponseInnerStatusEnum extends EnumClass {

  /// MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada)
  @BuiltValueEnumConst(wireName: r'AVAILABLE')
  static const ListAgentStatuses200ResponseInnerStatusEnum AVAILABLE = _$listAgentStatuses200ResponseInnerStatusEnum_AVAILABLE;
  /// MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada)
  @BuiltValueEnumConst(wireName: r'TALKING')
  static const ListAgentStatuses200ResponseInnerStatusEnum TALKING = _$listAgentStatuses200ResponseInnerStatusEnum_TALKING;
  /// MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada)
  @BuiltValueEnumConst(wireName: r'LOGGED_OUT')
  static const ListAgentStatuses200ResponseInnerStatusEnum LOGGED_OUT = _$listAgentStatuses200ResponseInnerStatusEnum_LOGGED_OUT;
  /// MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada)
  @BuiltValueEnumConst(wireName: r'ON_BREAK')
  static const ListAgentStatuses200ResponseInnerStatusEnum ON_BREAK = _$listAgentStatuses200ResponseInnerStatusEnum_ON_BREAK;

  static Serializer<ListAgentStatuses200ResponseInnerStatusEnum> get serializer => _$listAgentStatuses200ResponseInnerStatusEnumSerializer;

  const ListAgentStatuses200ResponseInnerStatusEnum._(String name): super(name);

  static BuiltSet<ListAgentStatuses200ResponseInnerStatusEnum> get values => _$listAgentStatuses200ResponseInnerStatusEnumValues;
  static ListAgentStatuses200ResponseInnerStatusEnum valueOf(String name) => _$listAgentStatuses200ResponseInnerStatusEnumValueOf(name);
}

