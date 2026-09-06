//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sms_status200_response_inner.g.dart';

/// GetSmsStatus200ResponseInner
///
/// Properties:
/// * [campaignId] 
/// * [campaignCustomId] 
/// * [messageId] 
/// * [messageCustomId] 
/// * [dest] 
/// * [size] 
/// * [internationalMultiplier] 
/// * [credits] 
/// * [status] 
/// * [gsmError] 
/// * [sentAt] 
/// * [doneAt] 
@BuiltValue()
abstract class GetSmsStatus200ResponseInner implements Built<GetSmsStatus200ResponseInner, GetSmsStatus200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'campaign_id')
  int? get campaignId;

  @BuiltValueField(wireName: r'campaign_custom_id')
  String? get campaignCustomId;

  @BuiltValueField(wireName: r'message_id')
  int? get messageId;

  @BuiltValueField(wireName: r'message_custom_id')
  String? get messageCustomId;

  @BuiltValueField(wireName: r'dest')
  String? get dest;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'international_multiplier')
  int? get internationalMultiplier;

  @BuiltValueField(wireName: r'credits')
  int? get credits;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'gsm_error')
  String? get gsmError;

  @BuiltValueField(wireName: r'sent_at')
  DateTime? get sentAt;

  @BuiltValueField(wireName: r'done_at')
  DateTime? get doneAt;

  GetSmsStatus200ResponseInner._();

  factory GetSmsStatus200ResponseInner([void updates(GetSmsStatus200ResponseInnerBuilder b)]) = _$GetSmsStatus200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSmsStatus200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSmsStatus200ResponseInner> get serializer => _$GetSmsStatus200ResponseInnerSerializer();
}

class _$GetSmsStatus200ResponseInnerSerializer implements PrimitiveSerializer<GetSmsStatus200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetSmsStatus200ResponseInner, _$GetSmsStatus200ResponseInner];

  @override
  final String wireName = r'GetSmsStatus200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSmsStatus200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.campaignId != null) {
      yield r'campaign_id';
      yield serializers.serialize(
        object.campaignId,
        specifiedType: const FullType(int),
      );
    }
    if (object.campaignCustomId != null) {
      yield r'campaign_custom_id';
      yield serializers.serialize(
        object.campaignCustomId,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(int),
      );
    }
    if (object.messageCustomId != null) {
      yield r'message_custom_id';
      yield serializers.serialize(
        object.messageCustomId,
        specifiedType: const FullType(String),
      );
    }
    if (object.dest != null) {
      yield r'dest';
      yield serializers.serialize(
        object.dest,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.internationalMultiplier != null) {
      yield r'international_multiplier';
      yield serializers.serialize(
        object.internationalMultiplier,
        specifiedType: const FullType(int),
      );
    }
    if (object.credits != null) {
      yield r'credits';
      yield serializers.serialize(
        object.credits,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.gsmError != null) {
      yield r'gsm_error';
      yield serializers.serialize(
        object.gsmError,
        specifiedType: const FullType(String),
      );
    }
    if (object.sentAt != null) {
      yield r'sent_at';
      yield serializers.serialize(
        object.sentAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.doneAt != null) {
      yield r'done_at';
      yield serializers.serialize(
        object.doneAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSmsStatus200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSmsStatus200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'campaign_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.campaignId = valueDes;
          break;
        case r'campaign_custom_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.campaignCustomId = valueDes;
          break;
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.messageId = valueDes;
          break;
        case r'message_custom_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageCustomId = valueDes;
          break;
        case r'dest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dest = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'international_multiplier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.internationalMultiplier = valueDes;
          break;
        case r'credits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.credits = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'gsm_error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gsmError = valueDes;
          break;
        case r'sent_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.sentAt = valueDes;
          break;
        case r'done_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.doneAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSmsStatus200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSmsStatus200ResponseInnerBuilder();
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

