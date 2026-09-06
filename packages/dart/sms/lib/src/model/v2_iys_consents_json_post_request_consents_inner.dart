//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_iys_consents_json_post_request_consents_inner.g.dart';

/// V2IysConsentsJsonPostRequestConsentsInner
///
/// Properties:
/// * [type] - İzin tipi (örn., MESAJ, ARAMA, EPOSTA)
/// * [source_] - İzin Kaynağı (örn., HS_WEB, HS_MESAJ)
/// * [status] - İzin Durumu (örn., ONAY, RET)
/// * [recipientType] - Alıcı Tipi (örn., BIREYSEL)
/// * [consentDate] - İzin Tarihi (örn., 2022-04-14 13:30:30)
/// * [recipient] - Alıcı (Telefon no veya e-posta adresi)
@BuiltValue()
abstract class V2IysConsentsJsonPostRequestConsentsInner implements Built<V2IysConsentsJsonPostRequestConsentsInner, V2IysConsentsJsonPostRequestConsentsInnerBuilder> {
  /// İzin tipi (örn., MESAJ, ARAMA, EPOSTA)
  @BuiltValueField(wireName: r'type')
  String get type;

  /// İzin Kaynağı (örn., HS_WEB, HS_MESAJ)
  @BuiltValueField(wireName: r'source')
  String get source_;

  /// İzin Durumu (örn., ONAY, RET)
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Alıcı Tipi (örn., BIREYSEL)
  @BuiltValueField(wireName: r'recipient_type')
  String get recipientType;

  /// İzin Tarihi (örn., 2022-04-14 13:30:30)
  @BuiltValueField(wireName: r'consent_date')
  DateTime get consentDate;

  /// Alıcı (Telefon no veya e-posta adresi)
  @BuiltValueField(wireName: r'recipient')
  String get recipient;

  V2IysConsentsJsonPostRequestConsentsInner._();

  factory V2IysConsentsJsonPostRequestConsentsInner([void updates(V2IysConsentsJsonPostRequestConsentsInnerBuilder b)]) = _$V2IysConsentsJsonPostRequestConsentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2IysConsentsJsonPostRequestConsentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2IysConsentsJsonPostRequestConsentsInner> get serializer => _$V2IysConsentsJsonPostRequestConsentsInnerSerializer();
}

class _$V2IysConsentsJsonPostRequestConsentsInnerSerializer implements PrimitiveSerializer<V2IysConsentsJsonPostRequestConsentsInner> {
  @override
  final Iterable<Type> types = const [V2IysConsentsJsonPostRequestConsentsInner, _$V2IysConsentsJsonPostRequestConsentsInner];

  @override
  final String wireName = r'V2IysConsentsJsonPostRequestConsentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2IysConsentsJsonPostRequestConsentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'recipient_type';
    yield serializers.serialize(
      object.recipientType,
      specifiedType: const FullType(String),
    );
    yield r'consent_date';
    yield serializers.serialize(
      object.consentDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'recipient';
    yield serializers.serialize(
      object.recipient,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V2IysConsentsJsonPostRequestConsentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2IysConsentsJsonPostRequestConsentsInnerBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'recipient_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientType = valueDes;
          break;
        case r'consent_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.consentDate = valueDes;
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipient = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2IysConsentsJsonPostRequestConsentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2IysConsentsJsonPostRequestConsentsInnerBuilder();
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

