//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_extension200_response.g.dart';

/// GetExtension200Response
///
/// Properties:
/// * [number] - Dahili numarası
/// * [password] - Dahilinin SIP şifresi
/// * [domain] - Dahilinin bağlı olduğu santral (domain) adı
/// * [name] - Dahili sahibinin adı
/// * [dnd] - Rahatsız Etme (DND) modu açık mı
/// * [isAgent] - Bu dahili bir Müşteri Temsilcisi (MT) mi
/// * [maxCalls] - Dahilinin eş zamanlı kabul edebileceği maksimum çağrı sayısı
/// * [useWebrtc] - WebRTC (web telefon) kullanımı açık mı
/// * [timeRangeBegin] - Dahilinin çalışma saati başlangıcı
/// * [timeRangeEnd] - Dahilinin çalışma saati bitişi
/// * [outboundCallerIdNumber] - Giden aramalarda kullanılan dış numara
@BuiltValue()
abstract class GetExtension200Response implements Built<GetExtension200Response, GetExtension200ResponseBuilder> {
  /// Dahili numarası
  @BuiltValueField(wireName: r'number')
  String? get number;

  /// Dahilinin SIP şifresi
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// Dahilinin bağlı olduğu santral (domain) adı
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  /// Dahili sahibinin adı
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Rahatsız Etme (DND) modu açık mı
  @BuiltValueField(wireName: r'dnd')
  bool? get dnd;

  /// Bu dahili bir Müşteri Temsilcisi (MT) mi
  @BuiltValueField(wireName: r'is_agent')
  bool? get isAgent;

  /// Dahilinin eş zamanlı kabul edebileceği maksimum çağrı sayısı
  @BuiltValueField(wireName: r'max_calls')
  int? get maxCalls;

  /// WebRTC (web telefon) kullanımı açık mı
  @BuiltValueField(wireName: r'use_webrtc')
  bool? get useWebrtc;

  /// Dahilinin çalışma saati başlangıcı
  @BuiltValueField(wireName: r'time_range_begin')
  String? get timeRangeBegin;

  /// Dahilinin çalışma saati bitişi
  @BuiltValueField(wireName: r'time_range_end')
  String? get timeRangeEnd;

  /// Giden aramalarda kullanılan dış numara
  @BuiltValueField(wireName: r'outbound_caller_id_number')
  String? get outboundCallerIdNumber;

  GetExtension200Response._();

  factory GetExtension200Response([void updates(GetExtension200ResponseBuilder b)]) = _$GetExtension200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetExtension200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetExtension200Response> get serializer => _$GetExtension200ResponseSerializer();
}

class _$GetExtension200ResponseSerializer implements PrimitiveSerializer<GetExtension200Response> {
  @override
  final Iterable<Type> types = const [GetExtension200Response, _$GetExtension200Response];

  @override
  final String wireName = r'GetExtension200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetExtension200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
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
    if (object.maxCalls != null) {
      yield r'max_calls';
      yield serializers.serialize(
        object.maxCalls,
        specifiedType: const FullType(int),
      );
    }
    if (object.useWebrtc != null) {
      yield r'use_webrtc';
      yield serializers.serialize(
        object.useWebrtc,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timeRangeBegin != null) {
      yield r'time_range_begin';
      yield serializers.serialize(
        object.timeRangeBegin,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeRangeEnd != null) {
      yield r'time_range_end';
      yield serializers.serialize(
        object.timeRangeEnd,
        specifiedType: const FullType(String),
      );
    }
    if (object.outboundCallerIdNumber != null) {
      yield r'outbound_caller_id_number';
      yield serializers.serialize(
        object.outboundCallerIdNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetExtension200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetExtension200ResponseBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.domain = valueDes;
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
        case r'max_calls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxCalls = valueDes;
          break;
        case r'use_webrtc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useWebrtc = valueDes;
          break;
        case r'time_range_begin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeRangeBegin = valueDes;
          break;
        case r'time_range_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeRangeEnd = valueDes;
          break;
        case r'outbound_caller_id_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outboundCallerIdNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetExtension200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetExtension200ResponseBuilder();
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

