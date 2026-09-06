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
import 'package:verimor_switch/src/date_serializer.dart';
import 'package:verimor_switch/src/model/date.dart';

import 'package:verimor_switch/src/model/answer_call_post_request.dart';
import 'package:verimor_switch/src/model/create_ivr_campaign_request.dart';
import 'package:verimor_switch/src/model/create_ivr_campaign_request_phone_list_inner.dart';
import 'package:verimor_switch/src/model/get_announcements200_response_inner.dart';
import 'package:verimor_switch/src/model/get_cdr200_response.dart';
import 'package:verimor_switch/src/model/get_cdr200_response_call_flow_inner.dart';
import 'package:verimor_switch/src/model/get_cdr200_response_cdr.dart';
import 'package:verimor_switch/src/model/get_cdrs200_response.dart';
import 'package:verimor_switch/src/model/get_cdrs200_response_cdrs_inner.dart';
import 'package:verimor_switch/src/model/get_cdrs200_response_pagination.dart';
import 'package:verimor_switch/src/model/get_crm_integrations200_response.dart';
import 'package:verimor_switch/src/model/get_extension200_response.dart';
import 'package:verimor_switch/src/model/get_queue_user_list200_response_inner.dart';
import 'package:verimor_switch/src/model/get_queues200_response_inner.dart';
import 'package:verimor_switch/src/model/get_queues_pending200_response_inner.dart';
import 'package:verimor_switch/src/model/get_voicemail_messages200_response.dart';
import 'package:verimor_switch/src/model/get_voicemail_messages200_response_messages_inner.dart';
import 'package:verimor_switch/src/model/get_voicemail_messages200_response_pagination.dart';
import 'package:verimor_switch/src/model/ivr_kampanya_rapor_alimi_post_request.dart';
import 'package:verimor_switch/src/model/list_agent_statuses200_response_inner.dart';
import 'package:verimor_switch/src/model/list_blocked_numbers200_response.dart';
import 'package:verimor_switch/src/model/list_blocked_numbers200_response_blocked_numbers_inner.dart';
import 'package:verimor_switch/src/model/list_blocked_numbers200_response_pagination.dart';
import 'package:verimor_switch/src/model/list_contact_groups200_response_inner.dart';
import 'package:verimor_switch/src/model/list_contacts200_response.dart';
import 'package:verimor_switch/src/model/list_contacts200_response_contacts_inner.dart';
import 'package:verimor_switch/src/model/list_contacts200_response_pagination.dart';
import 'package:verimor_switch/src/model/list_extensions200_response_inner.dart';
import 'package:verimor_switch/src/model/list_fax_orders200_response.dart';
import 'package:verimor_switch/src/model/list_fax_orders200_response_fax_orders_inner.dart';
import 'package:verimor_switch/src/model/list_fax_orders200_response_pagination.dart';
import 'package:verimor_switch/src/model/list_fdrs200_response.dart';
import 'package:verimor_switch/src/model/list_fdrs200_response_fdrs_inner.dart';
import 'package:verimor_switch/src/model/list_fdrs200_response_pagination.dart';
import 'package:verimor_switch/src/model/list_user_statuses200_response_inner.dart';
import 'package:verimor_switch/src/model/olay_bildirme_post_request.dart';
import 'package:verimor_switch/src/model/originate_call_post_request.dart';
import 'package:verimor_switch/src/model/webhook_payload_examples200_response.dart';
import 'package:verimor_switch/src/model/webhook_payload_examples200_response_answered_event.dart';
import 'package:verimor_switch/src/model/webhook_payload_examples200_response_hangup_event.dart';
import 'package:verimor_switch/src/model/webhook_payload_examples200_response_ringing_event.dart';

part 'serializers.g.dart';

@SerializersFor([
  AnswerCallPostRequest,
  CreateIvrCampaignRequest,
  CreateIvrCampaignRequestPhoneListInner,
  GetAnnouncements200ResponseInner,
  GetCdr200Response,
  GetCdr200ResponseCallFlowInner,
  GetCdr200ResponseCdr,
  GetCdrs200Response,
  GetCdrs200ResponseCdrsInner,
  GetCdrs200ResponsePagination,
  GetCrmIntegrations200Response,
  GetExtension200Response,
  GetQueueUserList200ResponseInner,
  GetQueues200ResponseInner,
  GetQueuesPending200ResponseInner,
  GetVoicemailMessages200Response,
  GetVoicemailMessages200ResponseMessagesInner,
  GetVoicemailMessages200ResponsePagination,
  IVRKampanyaRaporAlimiPostRequest,
  ListAgentStatuses200ResponseInner,
  ListBlockedNumbers200Response,
  ListBlockedNumbers200ResponseBlockedNumbersInner,
  ListBlockedNumbers200ResponsePagination,
  ListContactGroups200ResponseInner,
  ListContacts200Response,
  ListContacts200ResponseContactsInner,
  ListContacts200ResponsePagination,
  ListExtensions200ResponseInner,
  ListFaxOrders200Response,
  ListFaxOrders200ResponseFaxOrdersInner,
  ListFaxOrders200ResponsePagination,
  ListFdrs200Response,
  ListFdrs200ResponseFdrsInner,
  ListFdrs200ResponsePagination,
  ListUserStatuses200ResponseInner,
  OlayBildirmePostRequest,
  OriginateCallPostRequest,
  WebhookPayloadExamples200Response,
  WebhookPayloadExamples200ResponseAnsweredEvent,
  WebhookPayloadExamples200ResponseHangupEvent,
  WebhookPayloadExamples200ResponseRingingEvent,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ListExtensions200ResponseInner)]),
        () => ListBuilder<ListExtensions200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetQueues200ResponseInner)]),
        () => ListBuilder<GetQueues200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetQueuesPending200ResponseInner)]),
        () => ListBuilder<GetQueuesPending200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ListUserStatuses200ResponseInner)]),
        () => ListBuilder<ListUserStatuses200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetAnnouncements200ResponseInner)]),
        () => ListBuilder<GetAnnouncements200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetQueueUserList200ResponseInner)]),
        () => ListBuilder<GetQueueUserList200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ListAgentStatuses200ResponseInner)]),
        () => ListBuilder<ListAgentStatuses200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ListContactGroups200ResponseInner)]),
        () => ListBuilder<ListContactGroups200ResponseInner>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
