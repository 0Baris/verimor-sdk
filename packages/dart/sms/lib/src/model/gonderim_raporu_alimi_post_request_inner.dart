//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gonderim_raporu_alimi_post_request_inner.g.dart';

/// GonderimRaporuAlimiPostRequestInner
///
/// Properties:
/// * [type] - Mesajın yönüdür. Gönderilen SMS olduğu için outbound.
/// * [campaignId] - Mesajın kampanya ID'si.
/// * [campaignCustomId] - Mesajın kampanyasına sizin tarafınızdan verilmiş özel ID.
/// * [messageId] - Mesaja API tarafından verilmiş ID.
/// * [messageCustomId] - Mesaja sizin tarafınızdan verilmiş özel ID.
/// * [dest] - Mesajın gönderildiği telefon numarası. Yurt dışı numaralarının başına 00 eklenmelidir. Örnek: 0049xxxxxxxx.
/// * [size] - Mesajın boyu.
/// * [internationalMultiplier] - Mesajın kredi çarpanı (bir boyunun kaç krediye denk geldiği). Uluslararası mesajlarda 1'den büyük olur. Ulusal mesajlarda daima 1 olur.
/// * [credits] - Bu mesaj için hesabınızdan kaç kredi düşüldüğü.
/// * [status] - Mesajın durumu (olabilecek durumlar ve anlamları için dokümanın sonundaki durum listesine bakınız).
/// * [gsmError] - Mesaj iletilemediyse operatörden dönen hata kodu.
/// * [sentAt] - Mesajın iletildiği tarih (mesaj iletilemediyse null olur).
/// * [doneAt] - Mesajın son durumuna ulaştığı tarih (mesaj iletilemediyse de dolu olur).
@BuiltValue()
abstract class GonderimRaporuAlimiPostRequestInner implements Built<GonderimRaporuAlimiPostRequestInner, GonderimRaporuAlimiPostRequestInnerBuilder> {
  /// Mesajın yönüdür. Gönderilen SMS olduğu için outbound.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Mesajın kampanya ID'si.
  @BuiltValueField(wireName: r'campaign_id')
  int? get campaignId;

  /// Mesajın kampanyasına sizin tarafınızdan verilmiş özel ID.
  @BuiltValueField(wireName: r'campaign_custom_id')
  String? get campaignCustomId;

  /// Mesaja API tarafından verilmiş ID.
  @BuiltValueField(wireName: r'message_id')
  String? get messageId;

  /// Mesaja sizin tarafınızdan verilmiş özel ID.
  @BuiltValueField(wireName: r'message_custom_id')
  String? get messageCustomId;

  /// Mesajın gönderildiği telefon numarası. Yurt dışı numaralarının başına 00 eklenmelidir. Örnek: 0049xxxxxxxx.
  @BuiltValueField(wireName: r'dest')
  String? get dest;

  /// Mesajın boyu.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Mesajın kredi çarpanı (bir boyunun kaç krediye denk geldiği). Uluslararası mesajlarda 1'den büyük olur. Ulusal mesajlarda daima 1 olur.
  @BuiltValueField(wireName: r'international_multiplier')
  int? get internationalMultiplier;

  /// Bu mesaj için hesabınızdan kaç kredi düşüldüğü.
  @BuiltValueField(wireName: r'credits')
  int? get credits;

  /// Mesajın durumu (olabilecek durumlar ve anlamları için dokümanın sonundaki durum listesine bakınız).
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Mesaj iletilemediyse operatörden dönen hata kodu.
  @BuiltValueField(wireName: r'gsm_error')
  String? get gsmError;

  /// Mesajın iletildiği tarih (mesaj iletilemediyse null olur).
  @BuiltValueField(wireName: r'sent_at')
  String? get sentAt;

  /// Mesajın son durumuna ulaştığı tarih (mesaj iletilemediyse de dolu olur).
  @BuiltValueField(wireName: r'done_at')
  String? get doneAt;

  GonderimRaporuAlimiPostRequestInner._();

  factory GonderimRaporuAlimiPostRequestInner([void updates(GonderimRaporuAlimiPostRequestInnerBuilder b)]) = _$GonderimRaporuAlimiPostRequestInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GonderimRaporuAlimiPostRequestInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GonderimRaporuAlimiPostRequestInner> get serializer => _$GonderimRaporuAlimiPostRequestInnerSerializer();
}

class _$GonderimRaporuAlimiPostRequestInnerSerializer implements PrimitiveSerializer<GonderimRaporuAlimiPostRequestInner> {
  @override
  final Iterable<Type> types = const [GonderimRaporuAlimiPostRequestInner, _$GonderimRaporuAlimiPostRequestInner];

  @override
  final String wireName = r'GonderimRaporuAlimiPostRequestInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GonderimRaporuAlimiPostRequestInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
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
        specifiedType: const FullType(String),
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
        specifiedType: const FullType(String),
      );
    }
    if (object.doneAt != null) {
      yield r'done_at';
      yield serializers.serialize(
        object.doneAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GonderimRaporuAlimiPostRequestInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GonderimRaporuAlimiPostRequestInnerBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(String),
          ) as String;
          result.sentAt = valueDes;
          break;
        case r'done_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  GonderimRaporuAlimiPostRequestInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GonderimRaporuAlimiPostRequestInnerBuilder();
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

