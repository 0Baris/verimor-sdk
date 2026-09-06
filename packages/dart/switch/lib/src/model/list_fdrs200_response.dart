//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:verimor_switch/src/model/list_fdrs200_response_pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/list_fdrs200_response_fdrs_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_fdrs200_response.g.dart';

/// ListFdrs200Response
///
/// Properties:
/// * [fdrs] 
/// * [pagination] 
@BuiltValue()
abstract class ListFdrs200Response implements Built<ListFdrs200Response, ListFdrs200ResponseBuilder> {
  @BuiltValueField(wireName: r'fdrs')
  BuiltList<ListFdrs200ResponseFdrsInner> get fdrs;

  @BuiltValueField(wireName: r'pagination')
  ListFdrs200ResponsePagination get pagination;

  ListFdrs200Response._();

  factory ListFdrs200Response([void updates(ListFdrs200ResponseBuilder b)]) = _$ListFdrs200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListFdrs200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListFdrs200Response> get serializer => _$ListFdrs200ResponseSerializer();
}

class _$ListFdrs200ResponseSerializer implements PrimitiveSerializer<ListFdrs200Response> {
  @override
  final Iterable<Type> types = const [ListFdrs200Response, _$ListFdrs200Response];

  @override
  final String wireName = r'ListFdrs200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListFdrs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fdrs';
    yield serializers.serialize(
      object.fdrs,
      specifiedType: const FullType(BuiltList, [FullType(ListFdrs200ResponseFdrsInner)]),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(ListFdrs200ResponsePagination),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListFdrs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListFdrs200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fdrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ListFdrs200ResponseFdrsInner)]),
          ) as BuiltList<ListFdrs200ResponseFdrsInner>;
          result.fdrs.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListFdrs200ResponsePagination),
          ) as ListFdrs200ResponsePagination;
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
  ListFdrs200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListFdrs200ResponseBuilder();
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

