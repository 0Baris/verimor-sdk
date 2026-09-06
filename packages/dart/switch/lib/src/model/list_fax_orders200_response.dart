//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:verimor_switch/src/model/list_fax_orders200_response_fax_orders_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/list_fax_orders200_response_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_fax_orders200_response.g.dart';

/// ListFaxOrders200Response
///
/// Properties:
/// * [faxOrders] 
/// * [pagination] 
@BuiltValue()
abstract class ListFaxOrders200Response implements Built<ListFaxOrders200Response, ListFaxOrders200ResponseBuilder> {
  @BuiltValueField(wireName: r'fax_orders')
  BuiltList<ListFaxOrders200ResponseFaxOrdersInner> get faxOrders;

  @BuiltValueField(wireName: r'pagination')
  ListFaxOrders200ResponsePagination get pagination;

  ListFaxOrders200Response._();

  factory ListFaxOrders200Response([void updates(ListFaxOrders200ResponseBuilder b)]) = _$ListFaxOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListFaxOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListFaxOrders200Response> get serializer => _$ListFaxOrders200ResponseSerializer();
}

class _$ListFaxOrders200ResponseSerializer implements PrimitiveSerializer<ListFaxOrders200Response> {
  @override
  final Iterable<Type> types = const [ListFaxOrders200Response, _$ListFaxOrders200Response];

  @override
  final String wireName = r'ListFaxOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListFaxOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fax_orders';
    yield serializers.serialize(
      object.faxOrders,
      specifiedType: const FullType(BuiltList, [FullType(ListFaxOrders200ResponseFaxOrdersInner)]),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(ListFaxOrders200ResponsePagination),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListFaxOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListFaxOrders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fax_orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ListFaxOrders200ResponseFaxOrdersInner)]),
          ) as BuiltList<ListFaxOrders200ResponseFaxOrdersInner>;
          result.faxOrders.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListFaxOrders200ResponsePagination),
          ) as ListFaxOrders200ResponsePagination;
          result.pagination.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListFaxOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListFaxOrders200ResponseBuilder();
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

