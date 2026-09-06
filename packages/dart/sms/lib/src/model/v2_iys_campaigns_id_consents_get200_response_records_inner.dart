//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_iys_campaigns_id_consents_get200_response_records_inner.g.dart';

/// V2IysCampaignsIdConsentsGet200ResponseRecordsInner
///
/// Properties:
/// * [type] 
/// * [source_] 
/// * [recipient] 
/// * [status] 
/// * [consentDate] 
/// * [recipientType] 
/// * [requestStatus] 
/// * [requestError] 
@BuiltValue()
abstract class V2IysCampaignsIdConsentsGet200ResponseRecordsInner implements Built<V2IysCampaignsIdConsentsGet200ResponseRecordsInner, V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'recipient')
  String? get recipient;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'consent_date')
  DateTime? get consentDate;

  @BuiltValueField(wireName: r'recipient_type')
  String? get recipientType;

  @BuiltValueField(wireName: r'request_status')
  String? get requestStatus;

  @BuiltValueField(wireName: r'request_error')
  String? get requestError;

  V2IysCampaignsIdConsentsGet200ResponseRecordsInner._();

  factory V2IysCampaignsIdConsentsGet200ResponseRecordsInner([void updates(V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder b)]) = _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2IysCampaignsIdConsentsGet200ResponseRecordsInner> get serializer => _$V2IysCampaignsIdConsentsGet200ResponseRecordsInnerSerializer();
}

class _$V2IysCampaignsIdConsentsGet200ResponseRecordsInnerSerializer implements PrimitiveSerializer<V2IysCampaignsIdConsentsGet200ResponseRecordsInner> {
  @override
  final Iterable<Type> types = const [V2IysCampaignsIdConsentsGet200ResponseRecordsInner, _$V2IysCampaignsIdConsentsGet200ResponseRecordsInner];

  @override
  final String wireName = r'V2IysCampaignsIdConsentsGet200ResponseRecordsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2IysCampaignsIdConsentsGet200ResponseRecordsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.recipient != null) {
      yield r'recipient';
      yield serializers.serialize(
        object.recipient,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.consentDate != null) {
      yield r'consent_date';
      yield serializers.serialize(
        object.consentDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.recipientType != null) {
      yield r'recipient_type';
      yield serializers.serialize(
        object.recipientType,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestStatus != null) {
      yield r'request_status';
      yield serializers.serialize(
        object.requestStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestError != null) {
      yield r'request_error';
      yield serializers.serialize(
        object.requestError,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2IysCampaignsIdConsentsGet200ResponseRecordsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipient = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'consent_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.consentDate = valueDes;
          break;
        case r'recipient_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientType = valueDes;
          break;
        case r'request_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestStatus = valueDes;
          break;
        case r'request_error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2IysCampaignsIdConsentsGet200ResponseRecordsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2IysCampaignsIdConsentsGet200ResponseRecordsInnerBuilder();
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

