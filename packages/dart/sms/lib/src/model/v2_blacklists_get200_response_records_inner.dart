//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_blacklists_get200_response_records_inner.g.dart';

/// V2BlacklistsGet200ResponseRecordsInner
///
/// Properties:
/// * [phone] - Kara listeye alınmış numara
/// * [source_] - Kaynak
/// * [createdAt] - Kara listeye eklenme tarih saati
@BuiltValue()
abstract class V2BlacklistsGet200ResponseRecordsInner implements Built<V2BlacklistsGet200ResponseRecordsInner, V2BlacklistsGet200ResponseRecordsInnerBuilder> {
  /// Kara listeye alınmış numara
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Kaynak
  @BuiltValueField(wireName: r'source')
  String? get source_;

  /// Kara listeye eklenme tarih saati
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  V2BlacklistsGet200ResponseRecordsInner._();

  factory V2BlacklistsGet200ResponseRecordsInner([void updates(V2BlacklistsGet200ResponseRecordsInnerBuilder b)]) = _$V2BlacklistsGet200ResponseRecordsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2BlacklistsGet200ResponseRecordsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2BlacklistsGet200ResponseRecordsInner> get serializer => _$V2BlacklistsGet200ResponseRecordsInnerSerializer();
}

class _$V2BlacklistsGet200ResponseRecordsInnerSerializer implements PrimitiveSerializer<V2BlacklistsGet200ResponseRecordsInner> {
  @override
  final Iterable<Type> types = const [V2BlacklistsGet200ResponseRecordsInner, _$V2BlacklistsGet200ResponseRecordsInner];

  @override
  final String wireName = r'V2BlacklistsGet200ResponseRecordsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2BlacklistsGet200ResponseRecordsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2BlacklistsGet200ResponseRecordsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2BlacklistsGet200ResponseRecordsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2BlacklistsGet200ResponseRecordsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2BlacklistsGet200ResponseRecordsInnerBuilder();
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

