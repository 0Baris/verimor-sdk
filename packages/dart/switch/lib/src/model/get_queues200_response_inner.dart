//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_queues200_response_inner.g.dart';

/// GetQueues200ResponseInner
///
/// Properties:
/// * [number] - Kuyruk numarası
/// * [name] - Kuyruk adı
@BuiltValue()
abstract class GetQueues200ResponseInner implements Built<GetQueues200ResponseInner, GetQueues200ResponseInnerBuilder> {
  /// Kuyruk numarası
  @BuiltValueField(wireName: r'number')
  int? get number;

  /// Kuyruk adı
  @BuiltValueField(wireName: r'name')
  String? get name;

  GetQueues200ResponseInner._();

  factory GetQueues200ResponseInner([void updates(GetQueues200ResponseInnerBuilder b)]) = _$GetQueues200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetQueues200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetQueues200ResponseInner> get serializer => _$GetQueues200ResponseInnerSerializer();
}

class _$GetQueues200ResponseInnerSerializer implements PrimitiveSerializer<GetQueues200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetQueues200ResponseInner, _$GetQueues200ResponseInner];

  @override
  final String wireName = r'GetQueues200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetQueues200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
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
    GetQueues200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetQueues200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
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
  GetQueues200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetQueues200ResponseInnerBuilder();
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

