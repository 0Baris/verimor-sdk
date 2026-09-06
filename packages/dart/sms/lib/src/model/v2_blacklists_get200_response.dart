//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_sms/src/model/v2_blacklists_get200_response_records_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_blacklists_get200_response.g.dart';

/// V2BlacklistsGet200Response
///
/// Properties:
/// * [total] - Kara listedeki toplam numara sayısı
/// * [records] 
@BuiltValue()
abstract class V2BlacklistsGet200Response implements Built<V2BlacklistsGet200Response, V2BlacklistsGet200ResponseBuilder> {
  /// Kara listedeki toplam numara sayısı
  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'records')
  BuiltList<V2BlacklistsGet200ResponseRecordsInner>? get records;

  V2BlacklistsGet200Response._();

  factory V2BlacklistsGet200Response([void updates(V2BlacklistsGet200ResponseBuilder b)]) = _$V2BlacklistsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2BlacklistsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2BlacklistsGet200Response> get serializer => _$V2BlacklistsGet200ResponseSerializer();
}

class _$V2BlacklistsGet200ResponseSerializer implements PrimitiveSerializer<V2BlacklistsGet200Response> {
  @override
  final Iterable<Type> types = const [V2BlacklistsGet200Response, _$V2BlacklistsGet200Response];

  @override
  final String wireName = r'V2BlacklistsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2BlacklistsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType(BuiltList, [FullType(V2BlacklistsGet200ResponseRecordsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2BlacklistsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2BlacklistsGet200ResponseBuilder result,
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
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V2BlacklistsGet200ResponseRecordsInner)]),
          ) as BuiltList<V2BlacklistsGet200ResponseRecordsInner>;
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
  V2BlacklistsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2BlacklistsGet200ResponseBuilder();
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

