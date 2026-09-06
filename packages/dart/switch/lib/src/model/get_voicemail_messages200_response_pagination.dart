//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_voicemail_messages200_response_pagination.g.dart';

/// GetVoicemailMessages200ResponsePagination
///
/// Properties:
/// * [page] - Listenin hangi sayfasında olduğunuz
/// * [totalCount] - Listede dönen çağrı sayısı
/// * [totalPages] - Listenin kaç sayfadan oluştuğu (total_pages=total_count/limit)
/// * [limit] - Listeye verilen sınır
@BuiltValue()
abstract class GetVoicemailMessages200ResponsePagination implements Built<GetVoicemailMessages200ResponsePagination, GetVoicemailMessages200ResponsePaginationBuilder> {
  /// Listenin hangi sayfasında olduğunuz
  @BuiltValueField(wireName: r'page')
  int get page;

  /// Listede dönen çağrı sayısı
  @BuiltValueField(wireName: r'total_count')
  int get totalCount;

  /// Listenin kaç sayfadan oluştuğu (total_pages=total_count/limit)
  @BuiltValueField(wireName: r'total_pages')
  int get totalPages;

  /// Listeye verilen sınır
  @BuiltValueField(wireName: r'limit')
  int get limit;

  GetVoicemailMessages200ResponsePagination._();

  factory GetVoicemailMessages200ResponsePagination([void updates(GetVoicemailMessages200ResponsePaginationBuilder b)]) = _$GetVoicemailMessages200ResponsePagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetVoicemailMessages200ResponsePaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetVoicemailMessages200ResponsePagination> get serializer => _$GetVoicemailMessages200ResponsePaginationSerializer();
}

class _$GetVoicemailMessages200ResponsePaginationSerializer implements PrimitiveSerializer<GetVoicemailMessages200ResponsePagination> {
  @override
  final Iterable<Type> types = const [GetVoicemailMessages200ResponsePagination, _$GetVoicemailMessages200ResponsePagination];

  @override
  final String wireName = r'GetVoicemailMessages200ResponsePagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetVoicemailMessages200ResponsePagination object, {
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
    GetVoicemailMessages200ResponsePagination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetVoicemailMessages200ResponsePaginationBuilder result,
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
  GetVoicemailMessages200ResponsePagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVoicemailMessages200ResponsePaginationBuilder();
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

