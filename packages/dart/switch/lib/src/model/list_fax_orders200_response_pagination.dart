//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_fax_orders200_response_pagination.g.dart';

/// ListFaxOrders200ResponsePagination
///
/// Properties:
/// * [page] - Mevcut sayfa numarası
/// * [totalCount] - Toplam faks gönderim kayıt sayısı
/// * [totalPages] - Toplam sayfa sayısı
/// * [limit] - Sayfa başına kayıt sayısı
@BuiltValue()
abstract class ListFaxOrders200ResponsePagination implements Built<ListFaxOrders200ResponsePagination, ListFaxOrders200ResponsePaginationBuilder> {
  /// Mevcut sayfa numarası
  @BuiltValueField(wireName: r'page')
  int get page;

  /// Toplam faks gönderim kayıt sayısı
  @BuiltValueField(wireName: r'total_count')
  int get totalCount;

  /// Toplam sayfa sayısı
  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  /// Sayfa başına kayıt sayısı
  @BuiltValueField(wireName: r'limit')
  int get limit;

  ListFaxOrders200ResponsePagination._();

  factory ListFaxOrders200ResponsePagination([void updates(ListFaxOrders200ResponsePaginationBuilder b)]) = _$ListFaxOrders200ResponsePagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListFaxOrders200ResponsePaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListFaxOrders200ResponsePagination> get serializer => _$ListFaxOrders200ResponsePaginationSerializer();
}

class _$ListFaxOrders200ResponsePaginationSerializer implements PrimitiveSerializer<ListFaxOrders200ResponsePagination> {
  @override
  final Iterable<Type> types = const [ListFaxOrders200ResponsePagination, _$ListFaxOrders200ResponsePagination];

  @override
  final String wireName = r'ListFaxOrders200ResponsePagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListFaxOrders200ResponsePagination object, {
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
    ListFaxOrders200ResponsePagination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListFaxOrders200ResponsePaginationBuilder result,
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
  ListFaxOrders200ResponsePagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListFaxOrders200ResponsePaginationBuilder();
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

