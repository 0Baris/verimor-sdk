//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:verimor_switch/src/model/get_cdrs200_response_cdrs_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/get_cdrs200_response_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cdrs200_response.g.dart';

/// GetCdrs200Response
///
/// Properties:
/// * [cdrs] 
/// * [pagination] 
@BuiltValue()
abstract class GetCdrs200Response implements Built<GetCdrs200Response, GetCdrs200ResponseBuilder> {
  @BuiltValueField(wireName: r'cdrs')
  BuiltList<GetCdrs200ResponseCdrsInner>? get cdrs;

  @BuiltValueField(wireName: r'pagination')
  GetCdrs200ResponsePagination? get pagination;

  GetCdrs200Response._();

  factory GetCdrs200Response([void updates(GetCdrs200ResponseBuilder b)]) = _$GetCdrs200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCdrs200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCdrs200Response> get serializer => _$GetCdrs200ResponseSerializer();
}

class _$GetCdrs200ResponseSerializer implements PrimitiveSerializer<GetCdrs200Response> {
  @override
  final Iterable<Type> types = const [GetCdrs200Response, _$GetCdrs200Response];

  @override
  final String wireName = r'GetCdrs200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCdrs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cdrs != null) {
      yield r'cdrs';
      yield serializers.serialize(
        object.cdrs,
        specifiedType: const FullType(BuiltList, [FullType(GetCdrs200ResponseCdrsInner)]),
      );
    }
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(GetCdrs200ResponsePagination),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCdrs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCdrs200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cdrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCdrs200ResponseCdrsInner)]),
          ) as BuiltList<GetCdrs200ResponseCdrsInner>;
          result.cdrs.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCdrs200ResponsePagination),
          ) as GetCdrs200ResponsePagination;
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
  GetCdrs200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCdrs200ResponseBuilder();
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

