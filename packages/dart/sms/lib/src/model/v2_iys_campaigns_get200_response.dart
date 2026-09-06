//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_get200_response_records_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_iys_campaigns_get200_response.g.dart';

/// V2IysCampaignsGet200Response
///
/// Properties:
/// * [records] 
/// * [total] 
@BuiltValue()
abstract class V2IysCampaignsGet200Response implements Built<V2IysCampaignsGet200Response, V2IysCampaignsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'records')
  BuiltList<V2IysCampaignsGet200ResponseRecordsInner> get records;

  @BuiltValueField(wireName: r'total')
  int get total;

  V2IysCampaignsGet200Response._();

  factory V2IysCampaignsGet200Response([void updates(V2IysCampaignsGet200ResponseBuilder b)]) = _$V2IysCampaignsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2IysCampaignsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2IysCampaignsGet200Response> get serializer => _$V2IysCampaignsGet200ResponseSerializer();
}

class _$V2IysCampaignsGet200ResponseSerializer implements PrimitiveSerializer<V2IysCampaignsGet200Response> {
  @override
  final Iterable<Type> types = const [V2IysCampaignsGet200Response, _$V2IysCampaignsGet200Response];

  @override
  final String wireName = r'V2IysCampaignsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2IysCampaignsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType: const FullType(BuiltList, [FullType(V2IysCampaignsGet200ResponseRecordsInner)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V2IysCampaignsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2IysCampaignsGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V2IysCampaignsGet200ResponseRecordsInner)]),
          ) as BuiltList<V2IysCampaignsGet200ResponseRecordsInner>;
          result.records.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2IysCampaignsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2IysCampaignsGet200ResponseBuilder();
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

