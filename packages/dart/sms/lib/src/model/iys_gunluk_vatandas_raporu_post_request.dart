//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iys_gunluk_vatandas_raporu_post_request.g.dart';

/// IYSGunlukVatandasRaporuPostRequest
///
/// Properties:
/// * [iysCampaignId] - İYS kampanya ID'si.
/// * [reportDate] - Rapor tarihi (YYYY-MM-DD formatında).
/// * [sourceAddr] - Kampanya başlığı veya kaynak adres.
@BuiltValue()
abstract class IYSGunlukVatandasRaporuPostRequest implements Built<IYSGunlukVatandasRaporuPostRequest, IYSGunlukVatandasRaporuPostRequestBuilder> {
  /// İYS kampanya ID'si.
  @BuiltValueField(wireName: r'iys_campaign_id')
  int? get iysCampaignId;

  /// Rapor tarihi (YYYY-MM-DD formatında).
  @BuiltValueField(wireName: r'report_date')
  String? get reportDate;

  /// Kampanya başlığı veya kaynak adres.
  @BuiltValueField(wireName: r'source_addr')
  String? get sourceAddr;

  IYSGunlukVatandasRaporuPostRequest._();

  factory IYSGunlukVatandasRaporuPostRequest([void updates(IYSGunlukVatandasRaporuPostRequestBuilder b)]) = _$IYSGunlukVatandasRaporuPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IYSGunlukVatandasRaporuPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IYSGunlukVatandasRaporuPostRequest> get serializer => _$IYSGunlukVatandasRaporuPostRequestSerializer();
}

class _$IYSGunlukVatandasRaporuPostRequestSerializer implements PrimitiveSerializer<IYSGunlukVatandasRaporuPostRequest> {
  @override
  final Iterable<Type> types = const [IYSGunlukVatandasRaporuPostRequest, _$IYSGunlukVatandasRaporuPostRequest];

  @override
  final String wireName = r'IYSGunlukVatandasRaporuPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IYSGunlukVatandasRaporuPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.iysCampaignId != null) {
      yield r'iys_campaign_id';
      yield serializers.serialize(
        object.iysCampaignId,
        specifiedType: const FullType(int),
      );
    }
    if (object.reportDate != null) {
      yield r'report_date';
      yield serializers.serialize(
        object.reportDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceAddr != null) {
      yield r'source_addr';
      yield serializers.serialize(
        object.sourceAddr,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IYSGunlukVatandasRaporuPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IYSGunlukVatandasRaporuPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'iys_campaign_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.iysCampaignId = valueDes;
          break;
        case r'report_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportDate = valueDes;
          break;
        case r'source_addr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAddr = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IYSGunlukVatandasRaporuPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IYSGunlukVatandasRaporuPostRequestBuilder();
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

