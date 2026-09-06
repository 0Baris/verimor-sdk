//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_response.g.dart';

/// MessageResponse
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [waMessageId] 
/// * [taskId] 
/// * [message] 
@BuiltValue()
abstract class MessageResponse implements Built<MessageResponse, MessageResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'wa_message_id')
  String? get waMessageId;

  @BuiltValueField(wireName: r'task_id')
  String? get taskId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  MessageResponse._();

  factory MessageResponse([void updates(MessageResponseBuilder b)]) = _$MessageResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessageResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessageResponse> get serializer => _$MessageResponseSerializer();
}

class _$MessageResponseSerializer implements PrimitiveSerializer<MessageResponse> {
  @override
  final Iterable<Type> types = const [MessageResponse, _$MessageResponse];

  @override
  final String wireName = r'MessageResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessageResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.waMessageId != null) {
      yield r'wa_message_id';
      yield serializers.serialize(
        object.waMessageId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.taskId != null) {
      yield r'task_id';
      yield serializers.serialize(
        object.taskId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessageResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'wa_message_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.waMessageId = valueDes;
          break;
        case r'task_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.taskId = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MessageResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessageResponseBuilder();
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

