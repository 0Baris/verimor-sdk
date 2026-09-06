//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_fdrs200_response_fdrs_inner.g.dart';

/// ListFdrs200ResponseFdrsInner
///
/// Properties:
/// * [callUuid] - Faksın uuid'si
/// * [direction] - Çağrının yönü. \"Gelen\", \"Giden\" ve \"Santral içi\" olarak değişebilir
/// * [callerIdNumber] - Faks gönderen numara
/// * [localStationHeader] - Gönderen başlığı
/// * [originalDestination] - Faks alan numara
/// * [pagesCount] - Sayfa adedi
/// * [transferRate] - Gönderim hızı
/// * [startStamp] - Arama Zamanı
/// * [answerStamp] - Cevaplama Zamanı
/// * [endStamp] - Kapatma Zamanı
/// * [duration] - Süre
/// * [success] - Durum
/// * [result] - Sonuç
@BuiltValue()
abstract class ListFdrs200ResponseFdrsInner implements Built<ListFdrs200ResponseFdrsInner, ListFdrs200ResponseFdrsInnerBuilder> {
  /// Faksın uuid'si
  @BuiltValueField(wireName: r'call_uuid')
  String get callUuid;

  /// Çağrının yönü. \"Gelen\", \"Giden\" ve \"Santral içi\" olarak değişebilir
  @BuiltValueField(wireName: r'direction')
  String get direction;

  /// Faks gönderen numara
  @BuiltValueField(wireName: r'caller_id_number')
  String get callerIdNumber;

  /// Gönderen başlığı
  @BuiltValueField(wireName: r'local_station_header')
  String? get localStationHeader;

  /// Faks alan numara
  @BuiltValueField(wireName: r'original_destination')
  String get originalDestination;

  /// Sayfa adedi
  @BuiltValueField(wireName: r'pages_count')
  String get pagesCount;

  /// Gönderim hızı
  @BuiltValueField(wireName: r'transfer_rate')
  int? get transferRate;

  /// Arama Zamanı
  @BuiltValueField(wireName: r'start_stamp')
  DateTime get startStamp;

  /// Cevaplama Zamanı
  @BuiltValueField(wireName: r'answer_stamp')
  DateTime? get answerStamp;

  /// Kapatma Zamanı
  @BuiltValueField(wireName: r'end_stamp')
  DateTime? get endStamp;

  /// Süre
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  /// Durum
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Sonuç
  @BuiltValueField(wireName: r'result')
  String get result;

  ListFdrs200ResponseFdrsInner._();

  factory ListFdrs200ResponseFdrsInner([void updates(ListFdrs200ResponseFdrsInnerBuilder b)]) = _$ListFdrs200ResponseFdrsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListFdrs200ResponseFdrsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListFdrs200ResponseFdrsInner> get serializer => _$ListFdrs200ResponseFdrsInnerSerializer();
}

class _$ListFdrs200ResponseFdrsInnerSerializer implements PrimitiveSerializer<ListFdrs200ResponseFdrsInner> {
  @override
  final Iterable<Type> types = const [ListFdrs200ResponseFdrsInner, _$ListFdrs200ResponseFdrsInner];

  @override
  final String wireName = r'ListFdrs200ResponseFdrsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListFdrs200ResponseFdrsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'call_uuid';
    yield serializers.serialize(
      object.callUuid,
      specifiedType: const FullType(String),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(String),
    );
    yield r'caller_id_number';
    yield serializers.serialize(
      object.callerIdNumber,
      specifiedType: const FullType(String),
    );
    if (object.localStationHeader != null) {
      yield r'local_station_header';
      yield serializers.serialize(
        object.localStationHeader,
        specifiedType: const FullType(String),
      );
    }
    yield r'original_destination';
    yield serializers.serialize(
      object.originalDestination,
      specifiedType: const FullType(String),
    );
    yield r'pages_count';
    yield serializers.serialize(
      object.pagesCount,
      specifiedType: const FullType(String),
    );
    if (object.transferRate != null) {
      yield r'transfer_rate';
      yield serializers.serialize(
        object.transferRate,
        specifiedType: const FullType(int),
      );
    }
    yield r'start_stamp';
    yield serializers.serialize(
      object.startStamp,
      specifiedType: const FullType(DateTime),
    );
    if (object.answerStamp != null) {
      yield r'answer_stamp';
      yield serializers.serialize(
        object.answerStamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endStamp != null) {
      yield r'end_stamp';
      yield serializers.serialize(
        object.endStamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListFdrs200ResponseFdrsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListFdrs200ResponseFdrsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'call_uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callUuid = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.direction = valueDes;
          break;
        case r'caller_id_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerIdNumber = valueDes;
          break;
        case r'local_station_header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.localStationHeader = valueDes;
          break;
        case r'original_destination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originalDestination = valueDes;
          break;
        case r'pages_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pagesCount = valueDes;
          break;
        case r'transfer_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.transferRate = valueDes;
          break;
        case r'start_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startStamp = valueDes;
          break;
        case r'answer_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.answerStamp = valueDes;
          break;
        case r'end_stamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endStamp = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListFdrs200ResponseFdrsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListFdrs200ResponseFdrsInnerBuilder();
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

