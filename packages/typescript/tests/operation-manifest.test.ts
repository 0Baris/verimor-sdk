import { once } from "node:events";
import { readFile } from "node:fs/promises";
import { createServer, type IncomingMessage } from "node:http";
import { resolve } from "node:path";
import { expect, it } from "vitest";

import { createSmsClient, createSwitchClient, createWhatsAppClient } from "../src/index.js";

type Product = "sms" | "switch" | "whatsapp";
type Method = "GET" | "POST" | "PATCH" | "DELETE";
type Entry = { product: Product; operationId: string; method: Method; path: string };
type Fixture = { params?: { path?: Record<string, string>; query?: Record<string, string | number | boolean> }; body?: Record<string, unknown>; contentType?: "application/json" | "application/x-www-form-urlencoded" };

const manifestPath = resolve(import.meta.dirname, "../../../operation-manifest.json");
const sms = { username: "sms-user", password: "sms-pass" };
const switchKey = "switch-key";
const whatsappKey = "whatsapp-key";
const f = (params?: Fixture["params"], body?: Fixture["body"], contentType?: Fixture["contentType"]): Fixture => ({ ...(params ? { params } : {}), ...(body ? { body } : {}), ...(contentType ? { contentType } : {}) });

// Every operation has an explicit minimal fixture; this intentionally has no schema or generator dependency.
const fixtures: Record<string, Fixture> = {
  get_v2_balance: f({ query: sms }), get_v2_blacklists: f({ query: sms }), post_v2_blacklists: f({ query: { ...sms, phones: "905001112233" } }), delete_v2_blacklists_id: f({ path: { id: "905001112233" }, query: sms }), get_v2_inbound_messages: f({ query: sms }), get_v2_headers: f({ query: sms }),
  post_v2_iys_consents_json: f(undefined, { ...sms, source_addr: "ACME", consents: [{ recipient: "905001112233", status: "onay" }] }, "application/json"), get_v2_iys_campaigns: f({ query: sms }), get_v2_iys_campaigns_id_consents: f({ path: { id: "1" }, query: sms }), get_v2_send: f({ query: { ...sms, dest: "905001112233", msg: "Merhaba" } }), sendSmsJson: f(undefined, { ...sms, messages: [{ dest: "905001112233", msg: "Merhaba" }] }, "application/json"), post_v2_cancel_id: f({ path: { id: "1" } }, sms, "application/json"), getSmsStatus: f({ query: { ...sms, id: 1 } }),
  listAgentStatuses: f(), getAnnouncements: f(), createAnnouncement: f(undefined, { name: "announcement", sounddata: "data:audio/mp3;base64,AA==" }, "application/x-www-form-urlencoded"), updateAnnouncement: f({ path: { id: "1" } }, { name: "announcement" }, "application/x-www-form-urlencoded"), deleteAnnouncement: f({ path: { id: "1" } }), listBlockedNumbers: f(), createBlockedNumber: f({ query: { number: "905001112233" } }), deleteBlockedNumber: f({ query: { number: "905001112233" } }), createBridge: f({ query: { source: "1001", destination: "1002" } }), transferCallPost: f({ query: { id: "call-1", user_number: "1002" } }), transferCall: f({ path: { id: "call-1" }, query: { user_number: "1002" } }), getCallerIds: f(), originateCall: f({ query: { extension: "1001", destination: "905001112233" } }), originateCallPost: f(undefined, { extension: "1001", destination: "905001112233" }, "application/json"), hangupCall: f({ path: { id: "call-1" } }), answerCall: f({ path: { id: "call-1" } }), answerCallPost: f(undefined, { id: "call-1" }, "application/json"), getCdrs: f(), getCdr: f({ path: { id: "1" } }), listContactGroups: f(), createContactGroup: f({ query: { name: "customers" } }), updateContactGroup: f({ path: { id: "1" }, query: { name: "customers" } }), deleteContactGroup: f({ path: { id: "1" } }), listContacts: f(), createContact: f({ query: { name: "Ada", surname: "Lovelace", phone: "905001112233" } }), updateContact: f({ path: { id: "1" } }), deleteContact: f({ path: { id: "1" } }), getCrmIntegrations: f(), updateCrmIntegrations: f(), webhookPayloadExamples: f(), createDnd: f({ path: { id: "1001" }, query: { state: true } }), listExtensions: f(), getExtension: f({ path: { id: "1001" } }), createFaxDocumentUrl: f({ query: { call_uuid: "call-1" } }), downloadFaxDocument: f({ path: { id: "1" } }), listFaxOrders: f(), createFaxOrder: f({ query: { remote_station_id: "905001112233", filedata: "JVBERi0x" } }), listFdrs: f(), createIvrCampaign: f(undefined, { call_type: "tts", name: "campaign", phone_list: [{ phone: "905001112233" }] }, "application/json"), updateIvrCampaign: f({ path: { id: "1" }, query: { status: "active" } }), deleteIvrCampaign: f({ path: { id: "1" } }), muteCall: f({ path: { id: "call-1" }, query: { state: true } }), getQueues: f(), getQueuesPending: f(), manageQueueUsers: f({ query: { queue_number: "100", user_list: "1001,1002" } }), getQueueUserList: f({ query: { queue_number: "100" } }), createRecordingUrl: f({ query: { call_uuid: "call-1" } }), listUserStatuses: f(), updateOutboundCallerId: f({ query: { extension: "1001", caller_id: "902121112233" } }), getVoicemailMessages: f(), createVoicemailRecordingUrl: f({ query: { uuid: "voice-1" } }), createWebphoneToken: f({ query: { extension: "1001" } }),
  send_otp_v1_messages_otp_post: f(undefined, { to: "905001112233", template_name: "otp", language: "tr", use_tenant_queue: false }, "application/json"), send_utility_v1_messages_utility_post: f(undefined, { to: "905001112233", template_name: "utility", language: "tr", use_tenant_queue: false }, "application/json"), health_health_get: f(),
};

const identity = (entry: Pick<Entry, "product" | "operationId" | "method" | "path">) => `${entry.product} ${entry.operationId} ${entry.method} ${entry.path}`;
const fallbackOperationId = (method: Method, path: string) => `${method.toLowerCase()}_${path.toLowerCase()}`.replace(/[^a-z0-9]+/g, "_").replace(/^_|_$/g, "");
function assertRoutes(actual: Array<Pick<Entry, "product" | "operationId" | "method" | "path">>, expected: Array<Pick<Entry, "product" | "operationId" | "method" | "path">>) {
  const identities = actual.map(identity);
  if (new Set(identities).size !== identities.length) throw new Error("duplicate generated identity");
  if (identities.length !== expected.length || identities.some(value => !expected.some(entry => identity(entry) === value))) throw new Error("generated identities differ from manifest");
}

async function generatedRoutes(product: Product): Promise<Entry[]> {
  const source = await readFile(resolve(import.meta.dirname, `../src/generated/${product}.ts`), "utf8");
  const starts = [...source.matchAll(/^    "([^"]+)": \{/gm)];
  const pathSectionEnd = source.indexOf("export interface webhooks");
  return starts.flatMap((match, index) => {
    const path = match[1];
    if (!path) return [];
    const block = source.slice(match.index, starts[index + 1]?.index ?? pathSectionEnd);
    return (["GET", "POST", "PATCH", "DELETE"] as Method[]).filter(method => new RegExp(`^        ${method.toLowerCase()}:`, "m").test(block)).map(method => ({
      product,
      operationId: block.match(new RegExp(`^        ${method.toLowerCase()}: operations\\["([^"]+)"\\];`, "m"))?.[1] ?? fallbackOperationId(method, path),
      method,
      path,
    }));
  });
}
async function bodyOf(request: IncomingMessage) { let body = ""; for await (const chunk of request) body += chunk; return body; }

it("matches all generated TypeScript routes to the 68 identity manifest", async () => {
  const manifest = JSON.parse(await readFile(manifestPath, "utf8")) as Entry[];
  const generated = (await Promise.all((["sms", "switch", "whatsapp"] as Product[]).map(generatedRoutes))).flat();
  expect(manifest).toHaveLength(68);
  expect(Object.keys(fixtures)).toHaveLength(68);
  assertRoutes(generated, manifest);
});

it("rejects missing, duplicate, and wrong generated routes", () => {
  const routes = [{ product: "whatsapp" as const, operationId: "health_health_get", method: "GET" as const, path: "/health" }, { product: "whatsapp" as const, operationId: "send_otp_v1_messages_otp_post", method: "POST" as const, path: "/v1/messages/otp" }];
  expect(() => assertRoutes(routes.slice(1), routes)).toThrow("differ");
  expect(() => assertRoutes([...routes, routes[0]!], routes)).toThrow("duplicate");
  expect(() => assertRoutes([{ ...routes[0]!, path: "/wrong" }, routes[1]!], routes)).toThrow("differ");
  expect(() => assertRoutes([{ ...routes[0]!, operationId: "wrong" }, routes[1]!], routes)).toThrow("differ");
});

it("calls every raw generated operation once against loopback with explicit fixtures", async () => {
  const manifest = JSON.parse(await readFile(manifestPath, "utf8")) as Entry[];
  const cases = manifest.map(entry => ({ ...entry, fixture: fixtures[entry.operationId] }));
  expect(cases.every(entry => entry.fixture)).toBe(true);
  let calls = 0;
  const server = createServer(async (request, response) => {
    const current = cases[calls++];
    if (!current?.fixture) throw new Error("unexpected request");
    const url = new URL(request.url ?? "", "http://127.0.0.1");
    const expectedPath = current.path.replace(/\{([^}]+)\}/g, (_, name: string) => current.fixture.params?.path?.[name] ?? "");
    expect(request.method).toBe(current.method); expect(url.pathname).toBe(expectedPath);
    for (const [name, value] of Object.entries(current.fixture.params?.query ?? {})) expect(url.searchParams.get(name)).toBe(String(value));
    if (current.product === "sms") expect(current.fixture.body ?? current.fixture.params?.query).toMatchObject(sms);
    else if (current.product === "switch") expect(url.searchParams.get("key")).toBe(switchKey);
    else if (current.path !== "/health") expect(request.headers["x-api-key"]).toBe(whatsappKey);
    if (current.fixture.body) {
      expect(request.headers["content-type"]).toContain(current.fixture.contentType);
      const body = await bodyOf(request);
      expect(current.fixture.contentType === "application/json" ? JSON.parse(body) : Object.fromEntries(new URLSearchParams(body))).toEqual(current.fixture.body);
    } else expect(request.headers["content-type"]).toBeUndefined();
    response.writeHead(200, { "content-type": "application/json" }).end("{}");
  });
  server.listen(0, "127.0.0.1"); await once(server, "listening");
  const address = server.address(); if (!address || typeof address === "string") throw new Error("missing loopback address");
  const baseUrl = `http://127.0.0.1:${address.port}`;
  try {
    for (const entry of cases) {
      const raw = entry.product === "sms" ? createSmsClient({ ...sms, baseUrl }).raw : entry.product === "switch" ? createSwitchClient({ apiKey: switchKey, baseUrl }).raw : createWhatsAppClient({ apiKey: whatsappKey, baseUrl }).raw;
      const init = entry.fixture.contentType === "application/x-www-form-urlencoded" ? { ...entry.fixture, headers: { "content-type": entry.fixture.contentType } } : entry.fixture;
      await (raw as unknown as Record<Method, (path: string, init?: Fixture) => Promise<unknown>>)[entry.method](entry.path, init);
    }
  } finally { server.closeAllConnections(); await new Promise<void>(resolve => server.close(() => resolve())); }
  expect(calls).toBe(68);
});
