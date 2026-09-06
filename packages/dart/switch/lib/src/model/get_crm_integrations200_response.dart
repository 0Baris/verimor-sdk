//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_crm_integrations200_response.g.dart';

/// GetCrmIntegrations200Response
///
/// Properties:
/// * [ringing] - Çağrı çalma olayları için webhook bildirimi (on: aktif, off: pasif)
/// * [answered] - Çağrı cevaplanma olayları için webhook bildirimi (on: aktif, off: pasif)
/// * [hangup] - Çağrı kapanma olayları için webhook bildirimi (on: aktif, off: pasif)
/// * [notificationUrl] - CRM bildirimlerinin gönderileceği webhook URL adresi
@BuiltValue()
abstract class GetCrmIntegrations200Response implements Built<GetCrmIntegrations200Response, GetCrmIntegrations200ResponseBuilder> {
  /// Çağrı çalma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueField(wireName: r'ringing')
  GetCrmIntegrations200ResponseRingingEnum get ringing;
  // enum ringingEnum {  on,  off,  };

  /// Çağrı cevaplanma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueField(wireName: r'answered')
  GetCrmIntegrations200ResponseAnsweredEnum get answered;
  // enum answeredEnum {  on,  off,  };

  /// Çağrı kapanma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueField(wireName: r'hangup')
  GetCrmIntegrations200ResponseHangupEnum get hangup;
  // enum hangupEnum {  on,  off,  };

  /// CRM bildirimlerinin gönderileceği webhook URL adresi
  @BuiltValueField(wireName: r'notification_url')
  String get notificationUrl;

  GetCrmIntegrations200Response._();

  factory GetCrmIntegrations200Response([void updates(GetCrmIntegrations200ResponseBuilder b)]) = _$GetCrmIntegrations200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCrmIntegrations200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCrmIntegrations200Response> get serializer => _$GetCrmIntegrations200ResponseSerializer();
}

class _$GetCrmIntegrations200ResponseSerializer implements PrimitiveSerializer<GetCrmIntegrations200Response> {
  @override
  final Iterable<Type> types = const [GetCrmIntegrations200Response, _$GetCrmIntegrations200Response];

  @override
  final String wireName = r'GetCrmIntegrations200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCrmIntegrations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ringing';
    yield serializers.serialize(
      object.ringing,
      specifiedType: const FullType(GetCrmIntegrations200ResponseRingingEnum),
    );
    yield r'answered';
    yield serializers.serialize(
      object.answered,
      specifiedType: const FullType(GetCrmIntegrations200ResponseAnsweredEnum),
    );
    yield r'hangup';
    yield serializers.serialize(
      object.hangup,
      specifiedType: const FullType(GetCrmIntegrations200ResponseHangupEnum),
    );
    yield r'notification_url';
    yield serializers.serialize(
      object.notificationUrl,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCrmIntegrations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCrmIntegrations200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ringing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCrmIntegrations200ResponseRingingEnum),
          ) as GetCrmIntegrations200ResponseRingingEnum;
          result.ringing = valueDes;
          break;
        case r'answered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCrmIntegrations200ResponseAnsweredEnum),
          ) as GetCrmIntegrations200ResponseAnsweredEnum;
          result.answered = valueDes;
          break;
        case r'hangup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetCrmIntegrations200ResponseHangupEnum),
          ) as GetCrmIntegrations200ResponseHangupEnum;
          result.hangup = valueDes;
          break;
        case r'notification_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notificationUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCrmIntegrations200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCrmIntegrations200ResponseBuilder();
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

class GetCrmIntegrations200ResponseRingingEnum extends EnumClass {

  /// Çağrı çalma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueEnumConst(wireName: r'on')
  static const GetCrmIntegrations200ResponseRingingEnum on_ = _$getCrmIntegrations200ResponseRingingEnum_on_;
  /// Çağrı çalma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueEnumConst(wireName: r'off')
  static const GetCrmIntegrations200ResponseRingingEnum off = _$getCrmIntegrations200ResponseRingingEnum_off;

  static Serializer<GetCrmIntegrations200ResponseRingingEnum> get serializer => _$getCrmIntegrations200ResponseRingingEnumSerializer;

  const GetCrmIntegrations200ResponseRingingEnum._(String name): super(name);

  static BuiltSet<GetCrmIntegrations200ResponseRingingEnum> get values => _$getCrmIntegrations200ResponseRingingEnumValues;
  static GetCrmIntegrations200ResponseRingingEnum valueOf(String name) => _$getCrmIntegrations200ResponseRingingEnumValueOf(name);
}

class GetCrmIntegrations200ResponseAnsweredEnum extends EnumClass {

  /// Çağrı cevaplanma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueEnumConst(wireName: r'on')
  static const GetCrmIntegrations200ResponseAnsweredEnum on_ = _$getCrmIntegrations200ResponseAnsweredEnum_on_;
  /// Çağrı cevaplanma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueEnumConst(wireName: r'off')
  static const GetCrmIntegrations200ResponseAnsweredEnum off = _$getCrmIntegrations200ResponseAnsweredEnum_off;

  static Serializer<GetCrmIntegrations200ResponseAnsweredEnum> get serializer => _$getCrmIntegrations200ResponseAnsweredEnumSerializer;

  const GetCrmIntegrations200ResponseAnsweredEnum._(String name): super(name);

  static BuiltSet<GetCrmIntegrations200ResponseAnsweredEnum> get values => _$getCrmIntegrations200ResponseAnsweredEnumValues;
  static GetCrmIntegrations200ResponseAnsweredEnum valueOf(String name) => _$getCrmIntegrations200ResponseAnsweredEnumValueOf(name);
}

class GetCrmIntegrations200ResponseHangupEnum extends EnumClass {

  /// Çağrı kapanma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueEnumConst(wireName: r'on')
  static const GetCrmIntegrations200ResponseHangupEnum on_ = _$getCrmIntegrations200ResponseHangupEnum_on_;
  /// Çağrı kapanma olayları için webhook bildirimi (on: aktif, off: pasif)
  @BuiltValueEnumConst(wireName: r'off')
  static const GetCrmIntegrations200ResponseHangupEnum off = _$getCrmIntegrations200ResponseHangupEnum_off;

  static Serializer<GetCrmIntegrations200ResponseHangupEnum> get serializer => _$getCrmIntegrations200ResponseHangupEnumSerializer;

  const GetCrmIntegrations200ResponseHangupEnum._(String name): super(name);

  static BuiltSet<GetCrmIntegrations200ResponseHangupEnum> get values => _$getCrmIntegrations200ResponseHangupEnumValues;
  static GetCrmIntegrations200ResponseHangupEnum valueOf(String name) => _$getCrmIntegrations200ResponseHangupEnumValueOf(name);
}

