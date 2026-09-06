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
import 'package:verimor_sms/src/date_serializer.dart';
import 'package:verimor_sms/src/model/date.dart';

import 'package:verimor_sms/src/model/gelen_sms_alimi_post_request_inner.dart';
import 'package:verimor_sms/src/model/get_sms_status200_response_inner.dart';
import 'package:verimor_sms/src/model/gonderim_raporu_alimi_post_request_inner.dart';
import 'package:verimor_sms/src/model/iys_gunluk_vatandas_raporu_post_request.dart';
import 'package:verimor_sms/src/model/send_sms_json_request.dart';
import 'package:verimor_sms/src/model/send_sms_json_request_messages_inner.dart';
import 'package:verimor_sms/src/model/v2_blacklists_get200_response.dart';
import 'package:verimor_sms/src/model/v2_blacklists_get200_response_records_inner.dart';
import 'package:verimor_sms/src/model/v2_cancel_id_post_request.dart';
import 'package:verimor_sms/src/model/v2_inbound_messages_get200_response_inner.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_get200_response.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_get200_response_records_inner.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_id_consents_get200_response.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_id_consents_get200_response_records_inner.dart';
import 'package:verimor_sms/src/model/v2_iys_consents_json_post_request.dart';
import 'package:verimor_sms/src/model/v2_iys_consents_json_post_request_consents_inner.dart';

part 'serializers.g.dart';

@SerializersFor([
  GelenSMSAlimiPostRequestInner,
  GetSmsStatus200ResponseInner,
  GonderimRaporuAlimiPostRequestInner,
  IYSGunlukVatandasRaporuPostRequest,
  SendSmsJsonRequest,
  SendSmsJsonRequestMessagesInner,
  V2BlacklistsGet200Response,
  V2BlacklistsGet200ResponseRecordsInner,
  V2CancelIdPostRequest,
  V2InboundMessagesGet200ResponseInner,
  V2IysCampaignsGet200Response,
  V2IysCampaignsGet200ResponseRecordsInner,
  V2IysCampaignsIdConsentsGet200Response,
  V2IysCampaignsIdConsentsGet200ResponseRecordsInner,
  V2IysConsentsJsonPostRequest,
  V2IysConsentsJsonPostRequestConsentsInner,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetSmsStatus200ResponseInner)]),
        () => ListBuilder<GetSmsStatus200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(V2InboundMessagesGet200ResponseInner)]),
        () => ListBuilder<V2InboundMessagesGet200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
