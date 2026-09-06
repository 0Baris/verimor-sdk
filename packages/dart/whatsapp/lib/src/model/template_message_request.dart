//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_message_request.g.dart';

/// TemplateMessageRequest
///
/// Properties:
/// * [to] - Alıcı telefon numarası
/// * [templateName] - Onaylı şablon adı
/// * [language] - Şablon dili
/// * [parameters] 
/// * [useTenantQueue] - True ise tenant-spesifik kuyruğa yönlendir (büyük müşteriler için)
@BuiltValue()
abstract class TemplateMessageRequest implements Built<TemplateMessageRequest, TemplateMessageRequestBuilder> {
  /// Alıcı telefon numarası
  @BuiltValueField(wireName: r'to')
  String get to;

  /// Onaylı şablon adı
  @BuiltValueField(wireName: r'template_name')
  String get templateName;

  /// Şablon dili
  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'parameters')
  BuiltList<String>? get parameters;

  /// True ise tenant-spesifik kuyruğa yönlendir (büyük müşteriler için)
  @BuiltValueField(wireName: r'use_tenant_queue')
  bool? get useTenantQueue;

  TemplateMessageRequest._();

  factory TemplateMessageRequest([void updates(TemplateMessageRequestBuilder b)]) = _$TemplateMessageRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateMessageRequestBuilder b) => b
      ..language = 'tr'
      ..useTenantQueue = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateMessageRequest> get serializer => _$TemplateMessageRequestSerializer();
}

class _$TemplateMessageRequestSerializer implements PrimitiveSerializer<TemplateMessageRequest> {
  @override
  final Iterable<Type> types = const [TemplateMessageRequest, _$TemplateMessageRequest];

  @override
  final String wireName = r'TemplateMessageRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateMessageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'template_name';
    yield serializers.serialize(
      object.templateName,
      specifiedType: const FullType(String),
    );
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.useTenantQueue != null) {
      yield r'use_tenant_queue';
      yield serializers.serialize(
        object.useTenantQueue,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateMessageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateMessageRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'template_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateName = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'use_tenant_queue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useTenantQueue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateMessageRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateMessageRequestBuilder();
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

