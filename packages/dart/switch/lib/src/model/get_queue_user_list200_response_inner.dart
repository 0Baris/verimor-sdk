//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_queue_user_list200_response_inner.g.dart';

/// GetQueueUserList200ResponseInner
///
/// Properties:
/// * [user] - Dahili numarası
/// * [name] - Dahili adı
@BuiltValue()
abstract class GetQueueUserList200ResponseInner implements Built<GetQueueUserList200ResponseInner, GetQueueUserList200ResponseInnerBuilder> {
  /// Dahili numarası
  @BuiltValueField(wireName: r'user')
  int? get user;

  /// Dahili adı
  @BuiltValueField(wireName: r'name')
  String? get name;

  GetQueueUserList200ResponseInner._();

  factory GetQueueUserList200ResponseInner([void updates(GetQueueUserList200ResponseInnerBuilder b)]) = _$GetQueueUserList200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetQueueUserList200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetQueueUserList200ResponseInner> get serializer => _$GetQueueUserList200ResponseInnerSerializer();
}

class _$GetQueueUserList200ResponseInnerSerializer implements PrimitiveSerializer<GetQueueUserList200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetQueueUserList200ResponseInner, _$GetQueueUserList200ResponseInner];

  @override
  final String wireName = r'GetQueueUserList200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetQueueUserList200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetQueueUserList200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetQueueUserList200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.user = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetQueueUserList200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetQueueUserList200ResponseInnerBuilder();
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

