//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_extensions200_response_inner.g.dart';

/// ListExtensions200ResponseInner
///
/// Properties:
/// * [number] - Dahili numarası
/// * [name] - Dahili sahibinin adı
/// * [dnd] - Rahatsız Etme (DND) modu açık mı
/// * [isAgent] - Bu dahili bir Müşteri Temsilcisi (MT) mi
/// * [domain] - Dahilinin bağlı olduğu santral (domain) adı
@BuiltValue()
abstract class ListExtensions200ResponseInner implements Built<ListExtensions200ResponseInner, ListExtensions200ResponseInnerBuilder> {
  /// Dahili numarası
  @BuiltValueField(wireName: r'number')
  String? get number;

  /// Dahili sahibinin adı
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Rahatsız Etme (DND) modu açık mı
  @BuiltValueField(wireName: r'dnd')
  bool? get dnd;

  /// Bu dahili bir Müşteri Temsilcisi (MT) mi
  @BuiltValueField(wireName: r'is_agent')
  bool? get isAgent;

  /// Dahilinin bağlı olduğu santral (domain) adı
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  ListExtensions200ResponseInner._();

  factory ListExtensions200ResponseInner([void updates(ListExtensions200ResponseInnerBuilder b)]) = _$ListExtensions200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListExtensions200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListExtensions200ResponseInner> get serializer => _$ListExtensions200ResponseInnerSerializer();
}

class _$ListExtensions200ResponseInnerSerializer implements PrimitiveSerializer<ListExtensions200ResponseInner> {
  @override
  final Iterable<Type> types = const [ListExtensions200ResponseInner, _$ListExtensions200ResponseInner];

  @override
  final String wireName = r'ListExtensions200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListExtensions200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.dnd != null) {
      yield r'dnd';
      yield serializers.serialize(
        object.dnd,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAgent != null) {
      yield r'is_agent';
      yield serializers.serialize(
        object.isAgent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListExtensions200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListExtensions200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'dnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dnd = valueDes;
          break;
        case r'is_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAgent = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListExtensions200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListExtensions200ResponseInnerBuilder();
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

