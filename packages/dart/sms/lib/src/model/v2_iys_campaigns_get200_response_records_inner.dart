//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_iys_campaigns_get200_response_records_inner.g.dart';

/// V2IysCampaignsGet200ResponseRecordsInner
///
/// Properties:
/// * [id] 
/// * [headerName] 
/// * [iysCode] 
/// * [iysBrandCode] 
/// * [source_] 
/// * [createdAt] 
@BuiltValue()
abstract class V2IysCampaignsGet200ResponseRecordsInner implements Built<V2IysCampaignsGet200ResponseRecordsInner, V2IysCampaignsGet200ResponseRecordsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'header_name')
  String? get headerName;

  @BuiltValueField(wireName: r'iys_code')
  int? get iysCode;

  @BuiltValueField(wireName: r'iys_brand_code')
  int? get iysBrandCode;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  V2IysCampaignsGet200ResponseRecordsInner._();

  factory V2IysCampaignsGet200ResponseRecordsInner([void updates(V2IysCampaignsGet200ResponseRecordsInnerBuilder b)]) = _$V2IysCampaignsGet200ResponseRecordsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2IysCampaignsGet200ResponseRecordsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2IysCampaignsGet200ResponseRecordsInner> get serializer => _$V2IysCampaignsGet200ResponseRecordsInnerSerializer();
}

class _$V2IysCampaignsGet200ResponseRecordsInnerSerializer implements PrimitiveSerializer<V2IysCampaignsGet200ResponseRecordsInner> {
  @override
  final Iterable<Type> types = const [V2IysCampaignsGet200ResponseRecordsInner, _$V2IysCampaignsGet200ResponseRecordsInner];

  @override
  final String wireName = r'V2IysCampaignsGet200ResponseRecordsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2IysCampaignsGet200ResponseRecordsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.headerName != null) {
      yield r'header_name';
      yield serializers.serialize(
        object.headerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.iysCode != null) {
      yield r'iys_code';
      yield serializers.serialize(
        object.iysCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.iysBrandCode != null) {
      yield r'iys_brand_code';
      yield serializers.serialize(
        object.iysBrandCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2IysCampaignsGet200ResponseRecordsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2IysCampaignsGet200ResponseRecordsInnerBuilder result,
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
        case r'header_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.headerName = valueDes;
          break;
        case r'iys_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.iysCode = valueDes;
          break;
        case r'iys_brand_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.iysBrandCode = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2IysCampaignsGet200ResponseRecordsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2IysCampaignsGet200ResponseRecordsInnerBuilder();
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

