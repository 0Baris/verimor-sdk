//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_inbound_messages_get200_response_inner.g.dart';

/// V2InboundMessagesGet200ResponseInner
///
/// Properties:
/// * [messageId] 
/// * [createdAt] 
/// * [network] 
/// * [sourceAddr] 
/// * [destinationAddr] 
/// * [keyword] 
/// * [content] 
/// * [receivedAt] 
@BuiltValue()
abstract class V2InboundMessagesGet200ResponseInner implements Built<V2InboundMessagesGet200ResponseInner, V2InboundMessagesGet200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'message_id')
  int? get messageId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'network')
  String? get network;

  @BuiltValueField(wireName: r'source_addr')
  String? get sourceAddr;

  @BuiltValueField(wireName: r'destination_addr')
  String? get destinationAddr;

  @BuiltValueField(wireName: r'keyword')
  String? get keyword;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'received_at')
  DateTime? get receivedAt;

  V2InboundMessagesGet200ResponseInner._();

  factory V2InboundMessagesGet200ResponseInner([void updates(V2InboundMessagesGet200ResponseInnerBuilder b)]) = _$V2InboundMessagesGet200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2InboundMessagesGet200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2InboundMessagesGet200ResponseInner> get serializer => _$V2InboundMessagesGet200ResponseInnerSerializer();
}

class _$V2InboundMessagesGet200ResponseInnerSerializer implements PrimitiveSerializer<V2InboundMessagesGet200ResponseInner> {
  @override
  final Iterable<Type> types = const [V2InboundMessagesGet200ResponseInner, _$V2InboundMessagesGet200ResponseInner];

  @override
  final String wireName = r'V2InboundMessagesGet200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2InboundMessagesGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.messageId != null) {
      yield r'message_id';
      yield serializers.serialize(
        object.messageId,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
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
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2InboundMessagesGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2InboundMessagesGet200ResponseInnerBuilder result,
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
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  V2InboundMessagesGet200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2InboundMessagesGet200ResponseInnerBuilder();
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

