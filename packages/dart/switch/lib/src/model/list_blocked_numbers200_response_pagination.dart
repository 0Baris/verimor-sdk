//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_blocked_numbers200_response_pagination.g.dart';

/// ListBlockedNumbers200ResponsePagination
///
/// Properties:
/// * [page] - Mevcut sayfa numarası
/// * [totalCount] - Toplam engelli numara sayısı
/// * [totalPages] - Toplam sayfa sayısı
/// * [limit] - Sayfa başına kayıt sayısı
@BuiltValue()
abstract class ListBlockedNumbers200ResponsePagination implements Built<ListBlockedNumbers200ResponsePagination, ListBlockedNumbers200ResponsePaginationBuilder> {
  /// Mevcut sayfa numarası
  @BuiltValueField(wireName: r'page')
  int get page;

  /// Toplam engelli numara sayısı
  @BuiltValueField(wireName: r'total_count')
  int get totalCount;

  /// Toplam sayfa sayısı
  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  /// Sayfa başına kayıt sayısı
  @BuiltValueField(wireName: r'limit')
  int get limit;

  ListBlockedNumbers200ResponsePagination._();

  factory ListBlockedNumbers200ResponsePagination([void updates(ListBlockedNumbers200ResponsePaginationBuilder b)]) = _$ListBlockedNumbers200ResponsePagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListBlockedNumbers200ResponsePaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListBlockedNumbers200ResponsePagination> get serializer => _$ListBlockedNumbers200ResponsePaginationSerializer();
}

class _$ListBlockedNumbers200ResponsePaginationSerializer implements PrimitiveSerializer<ListBlockedNumbers200ResponsePagination> {
  @override
  final Iterable<Type> types = const [ListBlockedNumbers200ResponsePagination, _$ListBlockedNumbers200ResponsePagination];

  @override
  final String wireName = r'ListBlockedNumbers200ResponsePagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListBlockedNumbers200ResponsePagination object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'total_count';
    yield serializers.serialize(
      object.totalCount,
      specifiedType: const FullType(int),
    );
    yield r'total_pages';
    yield serializers.serialize(
      object.totalPages,
      specifiedType: const FullType(int),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListBlockedNumbers200ResponsePagination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListBlockedNumbers200ResponsePaginationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'total_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'total_pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListBlockedNumbers200ResponsePagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBlockedNumbers200ResponsePaginationBuilder();
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

