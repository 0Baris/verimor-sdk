//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'originate_call_post_request.g.dart';

/// OriginateCallPostRequest
///
/// Properties:
/// * [extension_] - Aramanın bağlanacağı dahili numaradır.
/// * [destination] - Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında olmalı).
/// * [callerId] - Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide seçili olan dış no kullanılacaktır).
/// * [manualAnswer] - Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır ve karşı numara aranır).
/// * [timeout] - Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur.
/// * [announcementToCaller] - Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
/// * [announcementToCallee] - Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
/// * [customCallType] - Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak gönderebilirsiniz.
@BuiltValue()
abstract class OriginateCallPostRequest implements Built<OriginateCallPostRequest, OriginateCallPostRequestBuilder> {
  /// Aramanın bağlanacağı dahili numaradır.
  @BuiltValueField(wireName: r'extension')
  String get extension_;

  /// Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında olmalı).
  @BuiltValueField(wireName: r'destination')
  String get destination;

  /// Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide seçili olan dış no kullanılacaktır).
  @BuiltValueField(wireName: r'caller_id')
  String? get callerId;

  /// Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır ve karşı numara aranır).
  @BuiltValueField(wireName: r'manual_answer')
  bool? get manualAnswer;

  /// Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur.
  @BuiltValueField(wireName: r'timeout')
  int? get timeout;

  /// Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
  @BuiltValueField(wireName: r'announcement_to_caller')
  int? get announcementToCaller;

  /// Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
  @BuiltValueField(wireName: r'announcement_to_callee')
  int? get announcementToCallee;

  /// Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak gönderebilirsiniz.
  @BuiltValueField(wireName: r'custom_call_type')
  String? get customCallType;

  OriginateCallPostRequest._();

  factory OriginateCallPostRequest([void updates(OriginateCallPostRequestBuilder b)]) = _$OriginateCallPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OriginateCallPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OriginateCallPostRequest> get serializer => _$OriginateCallPostRequestSerializer();
}

class _$OriginateCallPostRequestSerializer implements PrimitiveSerializer<OriginateCallPostRequest> {
  @override
  final Iterable<Type> types = const [OriginateCallPostRequest, _$OriginateCallPostRequest];

  @override
  final String wireName = r'OriginateCallPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OriginateCallPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'extension';
    yield serializers.serialize(
      object.extension_,
      specifiedType: const FullType(String),
    );
    yield r'destination';
    yield serializers.serialize(
      object.destination,
      specifiedType: const FullType(String),
    );
    if (object.callerId != null) {
      yield r'caller_id';
      yield serializers.serialize(
        object.callerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.manualAnswer != null) {
      yield r'manual_answer';
      yield serializers.serialize(
        object.manualAnswer,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timeout != null) {
      yield r'timeout';
      yield serializers.serialize(
        object.timeout,
        specifiedType: const FullType(int),
      );
    }
    if (object.announcementToCaller != null) {
      yield r'announcement_to_caller';
      yield serializers.serialize(
        object.announcementToCaller,
        specifiedType: const FullType(int),
      );
    }
    if (object.announcementToCallee != null) {
      yield r'announcement_to_callee';
      yield serializers.serialize(
        object.announcementToCallee,
        specifiedType: const FullType(int),
      );
    }
    if (object.customCallType != null) {
      yield r'custom_call_type';
      yield serializers.serialize(
        object.customCallType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OriginateCallPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OriginateCallPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'extension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.extension_ = valueDes;
          break;
        case r'destination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destination = valueDes;
          break;
        case r'caller_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.callerId = valueDes;
          break;
        case r'manual_answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.manualAnswer = valueDes;
          break;
        case r'timeout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeout = valueDes;
          break;
        case r'announcement_to_caller':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.announcementToCaller = valueDes;
          break;
        case r'announcement_to_callee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.announcementToCallee = valueDes;
          break;
        case r'custom_call_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customCallType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OriginateCallPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OriginateCallPostRequestBuilder();
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

