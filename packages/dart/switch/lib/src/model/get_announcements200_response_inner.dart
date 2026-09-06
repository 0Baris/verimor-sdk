//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_announcements200_response_inner.g.dart';

/// GetAnnouncements200ResponseInner
///
/// Properties:
/// * [id] - Ses dosyası ID
/// * [name] - Ses dosyası adı
@BuiltValue()
abstract class GetAnnouncements200ResponseInner implements Built<GetAnnouncements200ResponseInner, GetAnnouncements200ResponseInnerBuilder> {
  /// Ses dosyası ID
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Ses dosyası adı
  @BuiltValueField(wireName: r'name')
  String? get name;

  GetAnnouncements200ResponseInner._();

  factory GetAnnouncements200ResponseInner([void updates(GetAnnouncements200ResponseInnerBuilder b)]) = _$GetAnnouncements200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAnnouncements200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAnnouncements200ResponseInner> get serializer => _$GetAnnouncements200ResponseInnerSerializer();
}

class _$GetAnnouncements200ResponseInnerSerializer implements PrimitiveSerializer<GetAnnouncements200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetAnnouncements200ResponseInner, _$GetAnnouncements200ResponseInner];

  @override
  final String wireName = r'GetAnnouncements200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAnnouncements200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    GetAnnouncements200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAnnouncements200ResponseInnerBuilder result,
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
  GetAnnouncements200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAnnouncements200ResponseInnerBuilder();
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

