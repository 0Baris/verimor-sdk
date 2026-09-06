//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_contacts200_response_pagination.g.dart';

/// ListContacts200ResponsePagination
///
/// Properties:
/// * [page] - Listenin hangi sayfasında olduğunuz
/// * [totalCount] - Listede dönen kişi sayısı
/// * [totalPages] - Listenin kaç sayfadan oluştuğu (total_pages=total_count/limit)
/// * [limit] - Listeye verilen sınır
@BuiltValue()
abstract class ListContacts200ResponsePagination implements Built<ListContacts200ResponsePagination, ListContacts200ResponsePaginationBuilder> {
  /// Listenin hangi sayfasında olduğunuz
  @BuiltValueField(wireName: r'page')
  int get page;

  /// Listede dönen kişi sayısı
  @BuiltValueField(wireName: r'total_count')
  int get totalCount;

  /// Listenin kaç sayfadan oluştuğu (total_pages=total_count/limit)
  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  /// Listeye verilen sınır
  @BuiltValueField(wireName: r'limit')
  int get limit;

  ListContacts200ResponsePagination._();

  factory ListContacts200ResponsePagination([void updates(ListContacts200ResponsePaginationBuilder b)]) = _$ListContacts200ResponsePagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListContacts200ResponsePaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListContacts200ResponsePagination> get serializer => _$ListContacts200ResponsePaginationSerializer();
}

class _$ListContacts200ResponsePaginationSerializer implements PrimitiveSerializer<ListContacts200ResponsePagination> {
  @override
  final Iterable<Type> types = const [ListContacts200ResponsePagination, _$ListContacts200ResponsePagination];

  @override
  final String wireName = r'ListContacts200ResponsePagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListContacts200ResponsePagination object, {
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
    ListContacts200ResponsePagination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListContacts200ResponsePaginationBuilder result,
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
  ListContacts200ResponsePagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContacts200ResponsePaginationBuilder();
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

