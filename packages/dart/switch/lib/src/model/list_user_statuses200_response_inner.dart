//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_user_statuses200_response_inner.g.dart';

/// ListUserStatuses200ResponseInner
///
/// Properties:
/// * [user] - Dahili numarası
/// * [status] - Dahili durumu (AVAILABLE=Müsait, TALKING=Çağrıda, UNREGISTERED=Çevrimdışı, SS_DND=Bulutsantral server side DND ayarı aktif)
@BuiltValue()
abstract class ListUserStatuses200ResponseInner implements Built<ListUserStatuses200ResponseInner, ListUserStatuses200ResponseInnerBuilder> {
  /// Dahili numarası
  @BuiltValueField(wireName: r'user')
  int get user;

  /// Dahili durumu (AVAILABLE=Müsait, TALKING=Çağrıda, UNREGISTERED=Çevrimdışı, SS_DND=Bulutsantral server side DND ayarı aktif)
  @BuiltValueField(wireName: r'status')
  ListUserStatuses200ResponseInnerStatusEnum get status;
  // enum statusEnum {  AVAILABLE,  TALKING,  UNREGISTERED,  SS_DND,  };

  ListUserStatuses200ResponseInner._();

  factory ListUserStatuses200ResponseInner([void updates(ListUserStatuses200ResponseInnerBuilder b)]) = _$ListUserStatuses200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListUserStatuses200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListUserStatuses200ResponseInner> get serializer => _$ListUserStatuses200ResponseInnerSerializer();
}

class _$ListUserStatuses200ResponseInnerSerializer implements PrimitiveSerializer<ListUserStatuses200ResponseInner> {
  @override
  final Iterable<Type> types = const [ListUserStatuses200ResponseInner, _$ListUserStatuses200ResponseInner];

  @override
  final String wireName = r'ListUserStatuses200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListUserStatuses200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ListUserStatuses200ResponseInnerStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListUserStatuses200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListUserStatuses200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.user = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListUserStatuses200ResponseInnerStatusEnum),
          ) as ListUserStatuses200ResponseInnerStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListUserStatuses200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListUserStatuses200ResponseInnerBuilder();
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

class ListUserStatuses200ResponseInnerStatusEnum extends EnumClass {

  /// Dahili durumu (AVAILABLE=Müsait, TALKING=Çağrıda, UNREGISTERED=Çevrimdışı, SS_DND=Bulutsantral server side DND ayarı aktif)
  @BuiltValueEnumConst(wireName: r'AVAILABLE')
  static const ListUserStatuses200ResponseInnerStatusEnum AVAILABLE = _$listUserStatuses200ResponseInnerStatusEnum_AVAILABLE;
  /// Dahili durumu (AVAILABLE=Müsait, TALKING=Çağrıda, UNREGISTERED=Çevrimdışı, SS_DND=Bulutsantral server side DND ayarı aktif)
  @BuiltValueEnumConst(wireName: r'TALKING')
  static const ListUserStatuses200ResponseInnerStatusEnum TALKING = _$listUserStatuses200ResponseInnerStatusEnum_TALKING;
  /// Dahili durumu (AVAILABLE=Müsait, TALKING=Çağrıda, UNREGISTERED=Çevrimdışı, SS_DND=Bulutsantral server side DND ayarı aktif)
  @BuiltValueEnumConst(wireName: r'UNREGISTERED')
  static const ListUserStatuses200ResponseInnerStatusEnum UNREGISTERED = _$listUserStatuses200ResponseInnerStatusEnum_UNREGISTERED;
  /// Dahili durumu (AVAILABLE=Müsait, TALKING=Çağrıda, UNREGISTERED=Çevrimdışı, SS_DND=Bulutsantral server side DND ayarı aktif)
  @BuiltValueEnumConst(wireName: r'SS_DND')
  static const ListUserStatuses200ResponseInnerStatusEnum SS_DND = _$listUserStatuses200ResponseInnerStatusEnum_SS_DND;

  static Serializer<ListUserStatuses200ResponseInnerStatusEnum> get serializer => _$listUserStatuses200ResponseInnerStatusEnumSerializer;

  const ListUserStatuses200ResponseInnerStatusEnum._(String name): super(name);

  static BuiltSet<ListUserStatuses200ResponseInnerStatusEnum> get values => _$listUserStatuses200ResponseInnerStatusEnumValues;
  static ListUserStatuses200ResponseInnerStatusEnum valueOf(String name) => _$listUserStatuses200ResponseInnerStatusEnumValueOf(name);
}

