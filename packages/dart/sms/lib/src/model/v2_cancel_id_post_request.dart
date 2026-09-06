//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_cancel_id_post_request.g.dart';

/// V2CancelIdPostRequest
///
/// Properties:
/// * [username] - API kullanıcı adı
/// * [password] - API şifresi
@BuiltValue()
abstract class V2CancelIdPostRequest implements Built<V2CancelIdPostRequest, V2CancelIdPostRequestBuilder> {
  /// API kullanıcı adı
  @BuiltValueField(wireName: r'username')
  String get username;

  /// API şifresi
  @BuiltValueField(wireName: r'password')
  String get password;

  V2CancelIdPostRequest._();

  factory V2CancelIdPostRequest([void updates(V2CancelIdPostRequestBuilder b)]) = _$V2CancelIdPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2CancelIdPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2CancelIdPostRequest> get serializer => _$V2CancelIdPostRequestSerializer();
}

class _$V2CancelIdPostRequestSerializer implements PrimitiveSerializer<V2CancelIdPostRequest> {
  @override
  final Iterable<Type> types = const [V2CancelIdPostRequest, _$V2CancelIdPostRequest];

  @override
  final String wireName = r'V2CancelIdPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2CancelIdPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V2CancelIdPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2CancelIdPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2CancelIdPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2CancelIdPostRequestBuilder();
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

