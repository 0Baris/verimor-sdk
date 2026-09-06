//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:verimor_whatsapp/src/date_serializer.dart';
import 'package:verimor_whatsapp/src/model/date.dart';

import 'package:verimor_whatsapp/src/model/http_validation_error.dart';
import 'package:verimor_whatsapp/src/model/location_inner.dart';
import 'package:verimor_whatsapp/src/model/message_response.dart';
import 'package:verimor_whatsapp/src/model/template_message_request.dart';
import 'package:verimor_whatsapp/src/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  HTTPValidationError,
  LocationInner,
  MessageResponse,
  TemplateMessageRequest,
  ValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
