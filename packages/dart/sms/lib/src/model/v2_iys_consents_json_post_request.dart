//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_sms/src/model/v2_iys_consents_json_post_request_consents_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_iys_consents_json_post_request.g.dart';

/// V2IysConsentsJsonPostRequest
///
/// Properties:
/// * [username] - Kullanıcı Adı
/// * [password] - Şifre
/// * [sourceAddr] - Başlık
/// * [consents] 
@BuiltValue()
abstract class V2IysConsentsJsonPostRequest implements Built<V2IysConsentsJsonPostRequest, V2IysConsentsJsonPostRequestBuilder> {
  /// Kullanıcı Adı
  @BuiltValueField(wireName: r'username')
  String get username;

  /// Şifre
  @BuiltValueField(wireName: r'password')
  String get password;

  /// Başlık
  @BuiltValueField(wireName: r'source_addr')
  String get sourceAddr;

  @BuiltValueField(wireName: r'consents')
  BuiltList<V2IysConsentsJsonPostRequestConsentsInner> get consents;

  V2IysConsentsJsonPostRequest._();

  factory V2IysConsentsJsonPostRequest([void updates(V2IysConsentsJsonPostRequestBuilder b)]) = _$V2IysConsentsJsonPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2IysConsentsJsonPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2IysConsentsJsonPostRequest> get serializer => _$V2IysConsentsJsonPostRequestSerializer();
}

class _$V2IysConsentsJsonPostRequestSerializer implements PrimitiveSerializer<V2IysConsentsJsonPostRequest> {
  @override
  final Iterable<Type> types = const [V2IysConsentsJsonPostRequest, _$V2IysConsentsJsonPostRequest];

  @override
  final String wireName = r'V2IysConsentsJsonPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2IysConsentsJsonPostRequest object, {
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
    yield r'source_addr';
    yield serializers.serialize(
      object.sourceAddr,
      specifiedType: const FullType(String),
    );
    yield r'consents';
    yield serializers.serialize(
      object.consents,
      specifiedType: const FullType(BuiltList, [FullType(V2IysConsentsJsonPostRequestConsentsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V2IysConsentsJsonPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2IysConsentsJsonPostRequestBuilder result,
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
        case r'source_addr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceAddr = valueDes;
          break;
        case r'consents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(V2IysConsentsJsonPostRequestConsentsInner)]),
          ) as BuiltList<V2IysConsentsJsonPostRequestConsentsInner>;
          result.consents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2IysConsentsJsonPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2IysConsentsJsonPostRequestBuilder();
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

