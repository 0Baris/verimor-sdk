//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_contact_groups200_response_inner.g.dart';

/// ListContactGroups200ResponseInner
///
/// Properties:
/// * [id] - Grubun benzersiz kimlik numarası
/// * [name] - Grup adı
@BuiltValue()
abstract class ListContactGroups200ResponseInner implements Built<ListContactGroups200ResponseInner, ListContactGroups200ResponseInnerBuilder> {
  /// Grubun benzersiz kimlik numarası
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Grup adı
  @BuiltValueField(wireName: r'name')
  String get name;

  ListContactGroups200ResponseInner._();

  factory ListContactGroups200ResponseInner([void updates(ListContactGroups200ResponseInnerBuilder b)]) = _$ListContactGroups200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListContactGroups200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListContactGroups200ResponseInner> get serializer => _$ListContactGroups200ResponseInnerSerializer();
}

class _$ListContactGroups200ResponseInnerSerializer implements PrimitiveSerializer<ListContactGroups200ResponseInner> {
  @override
  final Iterable<Type> types = const [ListContactGroups200ResponseInner, _$ListContactGroups200ResponseInner];

  @override
  final String wireName = r'ListContactGroups200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListContactGroups200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListContactGroups200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListContactGroups200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
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
  ListContactGroups200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContactGroups200ResponseInnerBuilder();
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

