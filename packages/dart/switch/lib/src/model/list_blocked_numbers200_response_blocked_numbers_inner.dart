//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_blocked_numbers200_response_blocked_numbers_inner.g.dart';

/// ListBlockedNumbers200ResponseBlockedNumbersInner
///
/// Properties:
/// * [id] - Engelli numara kaydının benzersiz kimlik numarası
/// * [number] - Normalize edilmiş engelli telefon numarası
/// * [direction] - Engelleme yönü (inbound veya outbound)
@BuiltValue()
abstract class ListBlockedNumbers200ResponseBlockedNumbersInner implements Built<ListBlockedNumbers200ResponseBlockedNumbersInner, ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder> {
  /// Engelli numara kaydının benzersiz kimlik numarası
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Normalize edilmiş engelli telefon numarası
  @BuiltValueField(wireName: r'number')
  String get number;

  /// Engelleme yönü (inbound veya outbound)
  @BuiltValueField(wireName: r'direction')
  String? get direction;

  ListBlockedNumbers200ResponseBlockedNumbersInner._();

  factory ListBlockedNumbers200ResponseBlockedNumbersInner([void updates(ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder b)]) = _$ListBlockedNumbers200ResponseBlockedNumbersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListBlockedNumbers200ResponseBlockedNumbersInner> get serializer => _$ListBlockedNumbers200ResponseBlockedNumbersInnerSerializer();
}

class _$ListBlockedNumbers200ResponseBlockedNumbersInnerSerializer implements PrimitiveSerializer<ListBlockedNumbers200ResponseBlockedNumbersInner> {
  @override
  final Iterable<Type> types = const [ListBlockedNumbers200ResponseBlockedNumbersInner, _$ListBlockedNumbers200ResponseBlockedNumbersInner];

  @override
  final String wireName = r'ListBlockedNumbers200ResponseBlockedNumbersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListBlockedNumbers200ResponseBlockedNumbersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListBlockedNumbers200ResponseBlockedNumbersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder result,
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
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListBlockedNumbers200ResponseBlockedNumbersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBlockedNumbers200ResponseBlockedNumbersInnerBuilder();
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

