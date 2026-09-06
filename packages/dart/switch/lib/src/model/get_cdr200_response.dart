//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/get_cdr200_response_call_flow_inner.dart';
import 'package:verimor_switch/src/model/get_cdr200_response_cdr.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cdr200_response.g.dart';

/// GetCdr200Response
///
/// Properties:
/// * [cdr] 
/// * [callFlow] 
@BuiltValue()
abstract class GetCdr200Response implements Built<GetCdr200Response, GetCdr200ResponseBuilder> {
  @BuiltValueField(wireName: r'cdr')
  GetCdr200ResponseCdr? get cdr;

  @BuiltValueField(wireName: r'call_flow')
  BuiltList<GetCdr200ResponseCallFlowInner>? get callFlow;

  GetCdr200Response._();

  factory GetCdr200Response([void updates(GetCdr200ResponseBuilder b)]) = _$GetCdr200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCdr200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCdr200Response> get serializer => _$GetCdr200ResponseSerializer();
}

class _$GetCdr200ResponseSerializer implements PrimitiveSerializer<GetCdr200Response> {
  @override
  final Iterable<Type> types = const [GetCdr200Response, _$GetCdr200Response];

  @override
  final String wireName = r'GetCdr200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCdr200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cdr != null) {
      yield r'cdr';
      yield serializers.serialize(
        object.cdr,
        specifiedType: const FullType(GetCdr200ResponseCdr),
      );
    }
    if (object.callFlow != null) {
      yield r'call_flow';
      yield serializers.serialize(
        object.callFlow,
        specifiedType: const FullType(BuiltList, [FullType(GetCdr200ResponseCallFlowInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCdr200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCdr200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cdr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCdr200ResponseCdr),
          ) as GetCdr200ResponseCdr;
          result.cdr.replace(valueDes);
          break;
        case r'call_flow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCdr200ResponseCallFlowInner)]),
          ) as BuiltList<GetCdr200ResponseCallFlowInner>;
          result.callFlow.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCdr200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCdr200ResponseBuilder();
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

