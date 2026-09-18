# Public SDK operations

Generated from the normalized Verimor contracts by `scripts/facades.py`.
Credentials are supplied by the client and are not method parameters.

## SMS (13)

| Method | Path | TypeScript | Python | Go | Dart |
| --- | --- | --- | --- | --- | --- |
| `POST` | `/v2/blacklists` | `addBlacklistEntry` | `add_blacklist_entry` | `AddBlacklistEntry` | `addBlacklistEntry` |
| `GET` | `/v2/balance` | `balance` | `balance` | `Balance` | `balance` |
| `POST` | `/v2/cancel/{id}` | `cancel` | `cancel` | `Cancel` | `cancel` |
| `DELETE` | `/v2/blacklists/{id}` | `deleteBlacklistEntry` | `delete_blacklist_entry` | `DeleteBlacklistEntry` | `deleteBlacklistEntry` |
| `GET` | `/v2/blacklists` | `listBlacklistEntries` | `list_blacklist_entries` | `ListBlacklistEntries` | `listBlacklistEntries` |
| `GET` | `/v2/inbound_messages` | `listInboundMessages` | `list_inbound_messages` | `ListInboundMessages` | `listInboundMessages` |
| `GET` | `/v2/iys/campaigns/{id}/consents` | `listIysCampaignConsents` | `list_iys_campaign_consents` | `ListIysCampaignConsents` | `listIysCampaignConsents` |
| `GET` | `/v2/iys/campaigns` | `listIysCampaigns` | `list_iys_campaigns` | `ListIysCampaigns` | `listIysCampaigns` |
| `GET` | `/v2/headers` | `listSenderIds` | `list_sender_ids` | `ListSenderIds` | `listSenderIds` |
| `POST` | `/v2/send.json` | `send` | `send` | `Send` | `send` |
| `GET` | `/v2/send` | `sendLegacy` | `send_legacy` | `SendLegacy` | `sendLegacy` |
| `GET` | `/v2/status` | `status` | `status` | `Status` | `status` |
| `POST` | `/v2/iys_consents.json` | `submitIysConsents` | `submit_iys_consents` | `SubmitIysConsents` | `submitIysConsents` |

## Switch (52)

| Method | Path | TypeScript | Python | Go | Dart |
| --- | --- | --- | --- | --- | --- |
| `POST` | `/answer` | `answer` | `answer` | `Answer` | `answer` |
| `GET` | `/answer/{id}` | `answerLegacy` | `answer_legacy` | `AnswerLegacy` | `answerLegacy` |
| `GET` | `/bridge` | `bridge` | `bridge` | `Bridge` | `bridge` |
| `POST` | `/announcements` | `createAnnouncement` | `create_announcement` | `CreateAnnouncement` | `createAnnouncement` |
| `POST` | `/blocked_numbers` | `createBlockedNumber` | `create_blocked_number` | `CreateBlockedNumber` | `createBlockedNumber` |
| `POST` | `/contacts` | `createContact` | `create_contact` | `CreateContact` | `createContact` |
| `POST` | `/contact_groups` | `createContactGroup` | `create_contact_group` | `CreateContactGroup` | `createContactGroup` |
| `POST` | `/fax_document_url` | `createFaxDocumentUrl` | `create_fax_document_url` | `CreateFaxDocumentUrl` | `createFaxDocumentUrl` |
| `POST` | `/fax_orders` | `createFaxOrder` | `create_fax_order` | `CreateFaxOrder` | `createFaxOrder` |
| `POST` | `/ivr_campaigns.json` | `createIvrCampaign` | `create_ivr_campaign` | `CreateIvrCampaign` | `createIvrCampaign` |
| `POST` | `/recording_url` | `createRecordingUrl` | `create_recording_url` | `CreateRecordingUrl` | `createRecordingUrl` |
| `POST` | `/voicemail_recording_url` | `createVoicemailRecordingUrl` | `create_voicemail_recording_url` | `CreateVoicemailRecordingUrl` | `createVoicemailRecordingUrl` |
| `POST` | `/webphone_tokens` | `createWebphoneToken` | `create_webphone_token` | `CreateWebphoneToken` | `createWebphoneToken` |
| `DELETE` | `/announcements/{id}` | `deleteAnnouncement` | `delete_announcement` | `DeleteAnnouncement` | `deleteAnnouncement` |
| `DELETE` | `/blocked_numbers/delete` | `deleteBlockedNumber` | `delete_blocked_number` | `DeleteBlockedNumber` | `deleteBlockedNumber` |
| `DELETE` | `/contacts/{id}` | `deleteContact` | `delete_contact` | `DeleteContact` | `deleteContact` |
| `DELETE` | `/contact_groups/{id}` | `deleteContactGroup` | `delete_contact_group` | `DeleteContactGroup` | `deleteContactGroup` |
| `DELETE` | `/ivr_campaigns/{id}.json` | `deleteIvrCampaign` | `delete_ivr_campaign` | `DeleteIvrCampaign` | `deleteIvrCampaign` |
| `GET` | `/fax_document/{id}` | `downloadFaxDocument` | `download_fax_document` | `DownloadFaxDocument` | `downloadFaxDocument` |
| `GET` | `/cdrs/{id}` | `getCdr` | `get_cdr` | `GetCdr` | `getCdr` |
| `GET` | `/crm_integrations` | `getCrmIntegrations` | `get_crm_integrations` | `GetCrmIntegrations` | `getCrmIntegrations` |
| `GET` | `/extensions/{id}` | `getExtension` | `get_extension` | `GetExtension` | `getExtension` |
| `GET` | `/webhook-payload-examples` | `getWebhookPayloadExamples` | `get_webhook_payload_examples` | `GetWebhookPayloadExamples` | `getWebhookPayloadExamples` |
| `GET` | `/hangup/{id}` | `hangup` | `hangup` | `Hangup` | `hangup` |
| `GET` | `/agent_statuses` | `listAgentStatuses` | `list_agent_statuses` | `ListAgentStatuses` | `listAgentStatuses` |
| `GET` | `/announcements` | `listAnnouncements` | `list_announcements` | `ListAnnouncements` | `listAnnouncements` |
| `GET` | `/blocked_numbers` | `listBlockedNumbers` | `list_blocked_numbers` | `ListBlockedNumbers` | `listBlockedNumbers` |
| `GET` | `/caller_ids` | `listCallerIds` | `list_caller_ids` | `ListCallerIds` | `listCallerIds` |
| `GET` | `/cdrs` | `listCdrs` | `list_cdrs` | `ListCdrs` | `listCdrs` |
| `GET` | `/contact_groups` | `listContactGroups` | `list_contact_groups` | `ListContactGroups` | `listContactGroups` |
| `GET` | `/contacts` | `listContacts` | `list_contacts` | `ListContacts` | `listContacts` |
| `GET` | `/extensions` | `listExtensions` | `list_extensions` | `ListExtensions` | `listExtensions` |
| `GET` | `/fax_orders` | `listFaxOrders` | `list_fax_orders` | `ListFaxOrders` | `listFaxOrders` |
| `GET` | `/fdrs` | `listFaxRecords` | `list_fax_records` | `ListFaxRecords` | `listFaxRecords` |
| `GET` | `/queues/pending` | `listQueuePendingCalls` | `list_queue_pending_calls` | `ListQueuePendingCalls` | `listQueuePendingCalls` |
| `GET` | `/queue/user_list` | `listQueueUsers` | `list_queue_users` | `ListQueueUsers` | `listQueueUsers` |
| `GET` | `/queues` | `listQueues` | `list_queues` | `ListQueues` | `listQueues` |
| `GET` | `/user_statuses` | `listUserStatuses` | `list_user_statuses` | `ListUserStatuses` | `listUserStatuses` |
| `GET` | `/voicemail_messages` | `listVoicemailMessages` | `list_voicemail_messages` | `ListVoicemailMessages` | `listVoicemailMessages` |
| `GET` | `/queue/manage_users` | `manageQueueUsers` | `manage_queue_users` | `ManageQueueUsers` | `manageQueueUsers` |
| `POST` | `/originate` | `originate` | `originate` | `Originate` | `originate` |
| `GET` | `/originate` | `originateLegacy` | `originate_legacy` | `OriginateLegacy` | `originateLegacy` |
| `GET` | `/mute/{id}` | `setCallMute` | `set_call_mute` | `SetCallMute` | `setCallMute` |
| `GET` | `/dnd/{id}` | `setDnd` | `set_dnd` | `SetDnd` | `setDnd` |
| `POST` | `/transfer` | `transfer` | `transfer` | `Transfer` | `transfer` |
| `GET` | `/transfer/{id}` | `transferLegacy` | `transfer_legacy` | `TransferLegacy` | `transferLegacy` |
| `PATCH` | `/announcements/{id}` | `updateAnnouncement` | `update_announcement` | `UpdateAnnouncement` | `updateAnnouncement` |
| `PATCH` | `/contacts/{id}` | `updateContact` | `update_contact` | `UpdateContact` | `updateContact` |
| `PATCH` | `/contact_groups/{id}` | `updateContactGroup` | `update_contact_group` | `UpdateContactGroup` | `updateContactGroup` |
| `POST` | `/crm_integrations` | `updateCrmIntegrations` | `update_crm_integrations` | `UpdateCrmIntegrations` | `updateCrmIntegrations` |
| `PATCH` | `/ivr_campaigns/{id}.json` | `updateIvrCampaign` | `update_ivr_campaign` | `UpdateIvrCampaign` | `updateIvrCampaign` |
| `GET` | `/update_outbound_caller_id` | `updateOutboundCallerId` | `update_outbound_caller_id` | `UpdateOutboundCallerId` | `updateOutboundCallerId` |

## WhatsApp (3)

| Method | Path | TypeScript | Python | Go | Dart |
| --- | --- | --- | --- | --- | --- |
| `GET` | `/health` | `health` | `health` | `Health` | `health` |
| `POST` | `/v1/messages/otp` | `sendOtp` | `send_otp` | `SendOtp` | `sendOtp` |
| `POST` | `/v1/messages/utility` | `sendUtility` | `send_utility` | `SendUtility` | `sendUtility` |
