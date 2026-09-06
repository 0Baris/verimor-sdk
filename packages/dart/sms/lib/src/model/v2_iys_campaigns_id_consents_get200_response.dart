//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:verimor_sms/src/model/v2_iys_campaigns_id_consents_get200_response_records_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_iys_campaigns_id_consents_get200_response.g.dart';

/// V2IysCampaignsIdConsentsGet200Response
///
/// Properties:
/// * [total] 
/// * [sourceAddr] 
/// * [status] 
/// * [records] 
@BuiltValue()
abstract class V2IysCampaignsIdConsentsGet200Response implements Built<V2IysCampaignsIdConsentsGet200Response, V2IysCampaignsIdConsentsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'source_addr')
  String get sourceAddr;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'records')
  BuiltList<V2IysCampaignsIdConsentsGet200ResponseRecordsInner> get records;

  V2IysCampaignsIdConsentsGet200Response._();

  factory V2IysCampaignsIdConsentsGet200Response([void updates(V2IysCampaignsIdConsentsGet200ResponseBuilder b)]) = _$V2IysCampaignsIdConsentsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2IysCampaignsIdConsentsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2IysCampaignsIdConsentsGet200Response> get serializer => _$V2IysCampaignsIdConsentsGet200ResponseSerializer();
}

class _$V2IysCampaignsIdConsentsGet200ResponseSerializer implements PrimitiveSerializer<V2IysCampaignsIdConsentsGet200Response> {
  @override
  final Iterable<Type> types = const [V2IysCampaignsIdConsentsGet200Response, _$V2IysCampaignsIdConsentsGet200Response];

  @override
  final String wireName = r'V2IysCampaignsIdConsentsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2IysCampaignsIdConsentsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'source_addr';
    yield serializers.serialize(
      object.sourceAddr,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType: const FullType(BuiltList, [FullType(V2IysCampaignsIdConsentsGet200ResponseRecordsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V2IysCampaignsIdConsentsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2IysCampaignsIdConsentsGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'source_addr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAddr = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V2IysCampaignsIdConsentsGet200ResponseRecordsInner)]),
          ) as BuiltList<V2IysCampaignsIdConsentsGet200ResponseRecordsInner>;
          result.records.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2IysCampaignsIdConsentsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2IysCampaignsIdConsentsGet200ResponseBuilder();
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

