//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gelen_sms_alimi_post_request_inner.g.dart';

/// GelenSMSAlimiPostRequestInner
///
/// Properties:
/// * [messageId] - Mesaja API tarafından verilmiş ID.
/// * [type] - Mesajın yönüdür. Gelen SMS olduğu için inbound.
/// * [createdAt] - Mesajın kayıt edildiği tarih saat. Tarih ve saat aralığına göre API isteklerinde filtre yapılacak alan.
/// * [network] - Mesajı gönderen operatör. TURKCELL, TTMOBIL, VODAFONE değerleri olabilir.
/// * [sourceAddr] - Mesajı gönderen numara.
/// * [destinationAddr] - Mesajın gönderildiği numara (Verimor abone numarası veya 4 haneli Verimor ücretsiz kısa numarası).
/// * [keyword] - Ortak kullanımlı kısa numaralardaki ayırt edici anahtar kelime. Kısa numaraya değil doğrudan sizin numaranıza gelen sms'lerde boş olur.
/// * [content] - Gelen mesajın tam içeriği.
/// * [receivedAt] - Mesajın alındığı tarih saat.
@BuiltValue()
abstract class GelenSMSAlimiPostRequestInner implements Built<GelenSMSAlimiPostRequestInner, GelenSMSAlimiPostRequestInnerBuilder> {
  /// Mesaja API tarafından verilmiş ID.
  @BuiltValueField(wireName: r'message_id')
  int? get messageId;

  /// Mesajın yönüdür. Gelen SMS olduğu için inbound.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Mesajın kayıt edildiği tarih saat. Tarih ve saat aralığına göre API isteklerinde filtre yapılacak alan.
  @BuiltValueField(wireName: r'created_at')
  String? get createdAt;

  /// Mesajı gönderen operatör. TURKCELL, TTMOBIL, VODAFONE değerleri olabilir.
  @BuiltValueField(wireName: r'network')
  String? get network;

  /// Mesajı gönderen numara.
  @BuiltValueField(wireName: r'source_addr')
  String? get sourceAddr;

  /// Mesajın gönderildiği numara (Verimor abone numarası veya 4 haneli Verimor ücretsiz kısa numarası).
  @BuiltValueField(wireName: r'destination_addr')
  String? get destinationAddr;

  /// Ortak kullanımlı kısa numaralardaki ayırt edici anahtar kelime. Kısa numaraya değil doğrudan sizin numaranıza gelen sms'lerde boş olur.
  @BuiltValueField(wireName: r'keyword')
  String? get keyword;

  /// Gelen mesajın tam içeriği.
  @BuiltValueField(wireName: r'content')
  String? get content;

  /// Mesajın alındığı tarih saat.
  @BuiltValueField(wireName: r'received_at')
  String? get receivedAt;

  GelenSMSAlimiPostRequestInner._();

  factory GelenSMSAlimiPostRequestInner([void updates(GelenSMSAlimiPostRequestInnerBuilder b)]) = _$GelenSMSAlimiPostRequestInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GelenSMSAlimiPostRequestInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GelenSMSAlimiPostRequestInner> get serializer => _$GelenSMSAlimiPostRequestInnerSerializer();
}

class _$GelenSMSAlimiPostRequestInnerSerializer implements PrimitiveSerializer<GelenSMSAlimiPostRequestInner> {
  @override
  final Iterable<Type> types = const [GelenSMSAlimiPostRequestInner, _$GelenSMSAlimiPostRequestInner];

  @override
  final String wireName = r'GelenSMSAlimiPostRequestInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GelenSMSAlimiPostRequestInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
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
    if (object.destinationAddr != null) {
      yield r'destination_addr';
      yield serializers.serialize(
        object.destinationAddr,
        specifiedType: const FullType(String),
      );
    }
    if (object.keyword != null) {
      yield r'keyword';
      yield serializers.serialize(
        object.keyword,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
    if (object.receivedAt != null) {
      yield r'received_at';
      yield serializers.serialize(
        object.receivedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GelenSMSAlimiPostRequestInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GelenSMSAlimiPostRequestInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.messageId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.network = valueDes;
          break;
        case r'source_addr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAddr = valueDes;
          break;
        case r'destination_addr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationAddr = valueDes;
          break;
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'received_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.receivedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GelenSMSAlimiPostRequestInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GelenSMSAlimiPostRequestInnerBuilder();
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

