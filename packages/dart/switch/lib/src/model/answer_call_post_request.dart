//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_call_post_request.g.dart';

/// AnswerCallPostRequest
///
/// Properties:
/// * [id] - Cevaplanacak çağrının UUID'si
@BuiltValue()
abstract class AnswerCallPostRequest implements Built<AnswerCallPostRequest, AnswerCallPostRequestBuilder> {
  /// Cevaplanacak çağrının UUID'si
  @BuiltValueField(wireName: r'id')
  String get id;

  AnswerCallPostRequest._();

  factory AnswerCallPostRequest([void updates(AnswerCallPostRequestBuilder b)]) = _$AnswerCallPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnswerCallPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnswerCallPostRequest> get serializer => _$AnswerCallPostRequestSerializer();
}

class _$AnswerCallPostRequestSerializer implements PrimitiveSerializer<AnswerCallPostRequest> {
  @override
  final Iterable<Type> types = const [AnswerCallPostRequest, _$AnswerCallPostRequest];

  @override
  final String wireName = r'AnswerCallPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnswerCallPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnswerCallPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnswerCallPostRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnswerCallPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnswerCallPostRequestBuilder();
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

