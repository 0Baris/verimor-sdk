//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_fax_orders200_response_fax_orders_inner.g.dart';

/// ListFaxOrders200ResponseFaxOrdersInner
///
/// Properties:
/// * [id] - Kayıt NO
/// * [createdAt] - Kayıt zamanı
/// * [localStationId] - Arayan numara
/// * [remoteStationId] - Aranan numara
/// * [status] - Sonuç
@BuiltValue()
abstract class ListFaxOrders200ResponseFaxOrdersInner implements Built<ListFaxOrders200ResponseFaxOrdersInner, ListFaxOrders200ResponseFaxOrdersInnerBuilder> {
  /// Kayıt NO
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Kayıt zamanı
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Arayan numara
  @BuiltValueField(wireName: r'local_station_id')
  String get localStationId;

  /// Aranan numara
  @BuiltValueField(wireName: r'remote_station_id')
  String get remoteStationId;

  /// Sonuç
  @BuiltValueField(wireName: r'status')
  String get status;

  ListFaxOrders200ResponseFaxOrdersInner._();

  factory ListFaxOrders200ResponseFaxOrdersInner([void updates(ListFaxOrders200ResponseFaxOrdersInnerBuilder b)]) = _$ListFaxOrders200ResponseFaxOrdersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListFaxOrders200ResponseFaxOrdersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListFaxOrders200ResponseFaxOrdersInner> get serializer => _$ListFaxOrders200ResponseFaxOrdersInnerSerializer();
}

class _$ListFaxOrders200ResponseFaxOrdersInnerSerializer implements PrimitiveSerializer<ListFaxOrders200ResponseFaxOrdersInner> {
  @override
  final Iterable<Type> types = const [ListFaxOrders200ResponseFaxOrdersInner, _$ListFaxOrders200ResponseFaxOrdersInner];

  @override
  final String wireName = r'ListFaxOrders200ResponseFaxOrdersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListFaxOrders200ResponseFaxOrdersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'local_station_id';
    yield serializers.serialize(
      object.localStationId,
      specifiedType: const FullType(String),
    );
    yield r'remote_station_id';
    yield serializers.serialize(
      object.remoteStationId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListFaxOrders200ResponseFaxOrdersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListFaxOrders200ResponseFaxOrdersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'local_station_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.localStationId = valueDes;
          break;
        case r'remote_station_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.remoteStationId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  ListFaxOrders200ResponseFaxOrdersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListFaxOrders200ResponseFaxOrdersInnerBuilder();
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

