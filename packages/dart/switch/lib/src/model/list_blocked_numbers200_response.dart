//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:verimor_switch/src/model/list_blocked_numbers200_response_blocked_numbers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/list_blocked_numbers200_response_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_blocked_numbers200_response.g.dart';

/// ListBlockedNumbers200Response
///
/// Properties:
/// * [blockedNumbers] 
/// * [pagination] 
@BuiltValue()
abstract class ListBlockedNumbers200Response implements Built<ListBlockedNumbers200Response, ListBlockedNumbers200ResponseBuilder> {
  @BuiltValueField(wireName: r'blocked_numbers')
  BuiltList<ListBlockedNumbers200ResponseBlockedNumbersInner> get blockedNumbers;

  @BuiltValueField(wireName: r'pagination')
  ListBlockedNumbers200ResponsePagination get pagination;

  ListBlockedNumbers200Response._();

  factory ListBlockedNumbers200Response([void updates(ListBlockedNumbers200ResponseBuilder b)]) = _$ListBlockedNumbers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListBlockedNumbers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListBlockedNumbers200Response> get serializer => _$ListBlockedNumbers200ResponseSerializer();
}

class _$ListBlockedNumbers200ResponseSerializer implements PrimitiveSerializer<ListBlockedNumbers200Response> {
  @override
  final Iterable<Type> types = const [ListBlockedNumbers200Response, _$ListBlockedNumbers200Response];

  @override
  final String wireName = r'ListBlockedNumbers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListBlockedNumbers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'blocked_numbers';
    yield serializers.serialize(
      object.blockedNumbers,
      specifiedType: const FullType(BuiltList, [FullType(ListBlockedNumbers200ResponseBlockedNumbersInner)]),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(ListBlockedNumbers200ResponsePagination),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListBlockedNumbers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListBlockedNumbers200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'blocked_numbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ListBlockedNumbers200ResponseBlockedNumbersInner)]),
          ) as BuiltList<ListBlockedNumbers200ResponseBlockedNumbersInner>;
          result.blockedNumbers.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListBlockedNumbers200ResponsePagination),
          ) as ListBlockedNumbers200ResponsePagination;
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
  ListBlockedNumbers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBlockedNumbers200ResponseBuilder();
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

