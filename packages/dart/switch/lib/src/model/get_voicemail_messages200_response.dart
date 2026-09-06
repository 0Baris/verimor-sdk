//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/model/get_voicemail_messages200_response_messages_inner.dart';
import 'package:verimor_switch/src/model/get_voicemail_messages200_response_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_voicemail_messages200_response.g.dart';

/// GetVoicemailMessages200Response
///
/// Properties:
/// * [messages] 
/// * [pagination] 
@BuiltValue()
abstract class GetVoicemailMessages200Response implements Built<GetVoicemailMessages200Response, GetVoicemailMessages200ResponseBuilder> {
  @BuiltValueField(wireName: r'messages')
  BuiltList<GetVoicemailMessages200ResponseMessagesInner> get messages;

  @BuiltValueField(wireName: r'pagination')
  GetVoicemailMessages200ResponsePagination get pagination;

  GetVoicemailMessages200Response._();

  factory GetVoicemailMessages200Response([void updates(GetVoicemailMessages200ResponseBuilder b)]) = _$GetVoicemailMessages200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetVoicemailMessages200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetVoicemailMessages200Response> get serializer => _$GetVoicemailMessages200ResponseSerializer();
}

class _$GetVoicemailMessages200ResponseSerializer implements PrimitiveSerializer<GetVoicemailMessages200Response> {
  @override
  final Iterable<Type> types = const [GetVoicemailMessages200Response, _$GetVoicemailMessages200Response];

  @override
  final String wireName = r'GetVoicemailMessages200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetVoicemailMessages200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType: const FullType(BuiltList, [FullType(GetVoicemailMessages200ResponseMessagesInner)]),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(GetVoicemailMessages200ResponsePagination),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetVoicemailMessages200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetVoicemailMessages200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetVoicemailMessages200ResponseMessagesInner)]),
          ) as BuiltList<GetVoicemailMessages200ResponseMessagesInner>;
          result.messages.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetVoicemailMessages200ResponsePagination),
          ) as GetVoicemailMessages200ResponsePagination;
          result.pagination.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetVoicemailMessages200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVoicemailMessages200ResponseBuilder();
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

