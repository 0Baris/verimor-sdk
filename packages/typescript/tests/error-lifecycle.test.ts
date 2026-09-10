import { once } from "node:events";
import { createServer } from "node:http";
import { afterEach, expect, it } from "vitest";

import {
  VerimorApiError,
  createSmsClient,
  createSwitchClient,
  createWhatsAppClient,
} from "../src/index.js";

type Product = "sms" | "switch" | "whatsapp";
type BodyKind = "json" | "text" | "empty" | "malformed";

const servers: ReturnType<typeof createServer>[] = [];

afterEach(async () => {
  await Promise.all(servers.splice(0).map(server => new Promise<void>(resolve => {
    server.closeAllConnections();
    server.close(() => resolve());
  })));
});

async function serve(handler: Parameters<typeof createServer>[0]) {
  const server = createServer(handler);
  servers.push(server);
  server.listen(0, "127.0.0.1");
  await once(server, "listening");
  const address = server.address();
  if (!address || typeof address === "string") throw new Error("No loopback port");
  return `http://127.0.0.1:${address.port}`;
}

function errorResponse(kind: BodyKind) {
  switch (kind) {
    case "json": return { body: JSON.stringify({ detail: "invalid" }), expected: { detail: "invalid" }, contentType: "application/json" };
    case "text": return { body: "denied", expected: "denied", contentType: "text/plain" };
    case "empty": return { body: "", expected: "", contentType: "application/json" };
    case "malformed": return { body: "{broken", expected: "{broken", contentType: "application/json" };
  }
}

const message = { to: "905001112233", template_name: "template", language: "tr", use_tenant_queue: false };
const convenience = {
  sms: (baseUrl: string) => createSmsClient({ username: "sms-user", password: "sms-pass", baseUrl }).send({ source_addr: "ACME", messages: [{ dest: "905001112233", msg: "hello" }] }),
  switch: (baseUrl: string) => createSwitchClient({ apiKey: "switch-key", baseUrl }).originate({ extension: "1001", destination: "905001112233" }),
  whatsapp: (baseUrl: string) => createWhatsAppClient({ apiKey: "whatsapp-key", baseUrl }).sendOtp(message),
} satisfies Record<Product, (baseUrl: string) => Promise<unknown>>;

it.each((['sms', 'switch', 'whatsapp'] as Product[]).flatMap(product =>
  [400, 401, 403, 404, 429, 500, 503].flatMap(status =>
    (['json', 'text', 'empty', 'malformed'] as BodyKind[]).map(kind => [product, status, kind] as const),
  ),
))("preserves %s HTTP %i %s errors with one request", async (product, status, kind) => {
  const response = errorResponse(kind);
  let requests = 0;
  const baseUrl = await serve((_request, reply) => {
    requests++;
    reply.writeHead(status, { "content-type": response.contentType }).end(response.body);
  });

  await expect(convenience[product](baseUrl)).rejects.toMatchObject<Partial<VerimorApiError>>({
    name: "VerimorApiError", product, status, body: response.expected,
  });
  expect(requests).toBe(1);
});

const successfulMethods = [
  ["SMS send", "sms", "/v2/send.json", (baseUrl: string) => createSmsClient({ username: "u", password: "p", baseUrl }).send({ source_addr: "ACME", messages: [{ dest: "905001112233", msg: "hello" }] }), "sent"],
  ["SMS balance", "sms", "/v2/balance", (baseUrl: string) => createSmsClient({ username: "u", password: "p", baseUrl }).balance(), 42],
  ["SMS status", "sms", "/v2/status", (baseUrl: string) => createSmsClient({ username: "u", password: "p", baseUrl }).status({ id: 1 }), []],
  ["Switch originate", "switch", "/originate", (baseUrl: string) => createSwitchClient({ apiKey: "key", baseUrl }).originate({ extension: "1001", destination: "905001112233" }), "OK"],
  ["WhatsApp OTP", "whatsapp", "/v1/messages/otp", (baseUrl: string) => createWhatsAppClient({ apiKey: "key", baseUrl }).sendOtp(message), { id: "message-1", status: "queued" }],
  ["WhatsApp utility", "whatsapp", "/v1/messages/utility", (baseUrl: string) => createWhatsAppClient({ apiKey: "key", baseUrl }).sendUtility(message), { id: "message-1", status: "queued" }],
] as const;

it.each(successfulMethods)("returns documented success for %s", async (_name, _product, path, call, expected) => {
  const baseUrl = await serve((request, reply) => {
    expect(new URL(request.url ?? "", "http://loopback").pathname).toBe(path);
    const isJson = typeof expected === "object";
    reply.writeHead(isJson ? 202 : 200, { "content-type": isJson ? "application/json" : "text/plain" }).end(isJson ? JSON.stringify(expected) : String(expected));
  });
  await expect(call(baseUrl)).resolves.toEqual(expected);
});

it("keeps existing malformed-success behavior without inventing response validation", async () => {
  const missingFieldsUrl = await serve((_request, reply) => {
    reply.writeHead(202, { "content-type": "application/json" }).end("{}");
  });
  await expect(createWhatsAppClient({ apiKey: "key", baseUrl: missingFieldsUrl }).sendOtp(message)).resolves.toEqual({});

  const wrongTypeUrl = await serve((_request, reply) => {
    reply.writeHead(202, { "content-type": "application/json" }).end("[]");
  });
  await expect(createWhatsAppClient({ apiKey: "key", baseUrl: wrongTypeUrl }).sendOtp(message)).rejects.toBeInstanceOf(TypeError);

  const malformedUrl = await serve((_request, reply) => {
    reply.writeHead(200, { "content-type": "application/json" }).end("{broken");
  });
  await expect(createSmsClient({ username: "u", password: "p", baseUrl: malformedUrl }).status({ id: 1 })).rejects.toBeInstanceOf(SyntaxError);
});

it.each(successfulMethods)("preserves one HTTP error for %s", async (_name, product, _path, call) => {
  let requests = 0;
  const baseUrl = await serve((_request, reply) => {
    requests++;
    reply.writeHead(400, { "content-type": "application/json" }).end(JSON.stringify({ detail: "invalid" }));
  });
  await expect(call(baseUrl)).rejects.toMatchObject({ name: "VerimorApiError", product, status: 400, body: { detail: "invalid" } });
  expect(requests).toBe(1);
});

it("keeps Unicode credentials encoded, inputs immutable, and clients isolated", async () => {
  const smsInput = { source_addr: "ACME", messages: [{ dest: "905001112233", msg: "hello" }] };
  const switchInput = { extension: "1001", destination: "905001112233" };
  const whatsappInput = { ...message, parameters: ["123456"] };
  const requests: Array<{ url: URL; headers: Headers }> = [];
  const baseUrl = await serve((request, reply) => {
    const url = new URL(request.url ?? "", "http://loopback");
    requests.push({ url, headers: new Headers(request.headers as Record<string, string>) });
    const isWhatsApp = url.pathname.startsWith("/v1/");
    reply.writeHead(200, { "content-type": isWhatsApp ? "application/json" : "text/plain" }).end(
      isWhatsApp ? JSON.stringify({ id: "message-1", status: "queued" }) : url.pathname === "/v2/balance" ? "42" : "OK",
    );
  });
  const smsA = createSmsClient({ username: "u+ &ç", password: "p?= ü", baseUrl });
  const smsB = createSmsClient({ username: "other", password: "other", baseUrl });
  const switchA = createSwitchClient({ apiKey: "k+ &ç", baseUrl });
  const switchB = createSwitchClient({ apiKey: "other", baseUrl });
  const whatsappA = createWhatsAppClient({ apiKey: "wa+ &ç", baseUrl });
  const whatsappB = createWhatsAppClient({ apiKey: "other", baseUrl });

  await smsA.send(smsInput); await smsA.balance(); await smsB.balance(); await switchA.originate(switchInput); await switchB.originate(switchInput); await whatsappA.sendOtp(whatsappInput); await whatsappB.sendUtility(whatsappInput);

  expect(smsInput).toEqual({ source_addr: "ACME", messages: [{ dest: "905001112233", msg: "hello" }] });
  expect(switchInput).toEqual({ extension: "1001", destination: "905001112233" });
  expect(whatsappInput).toEqual({ ...message, parameters: ["123456"] });
  expect(requests[1]?.url.searchParams.get("username")).toBe("u+ &ç");
  expect(requests[1]?.url.searchParams.get("password")).toBe("p?= ü");
  expect(requests[2]?.url.searchParams.get("username")).toBe("other");
  expect(requests[3]?.url.searchParams.get("key")).toBe("k+ &ç");
  expect(requests[4]?.url.searchParams.get("key")).toBe("other");
  expect(requests[5]?.headers.get("x-api-key")).toBe("wa+ &ç");
  expect(requests[6]?.headers.get("x-api-key")).toBe("other");
});

it("sends each SMS status selector once and rejects both or neither before transport", async () => {
  const queries: URLSearchParams[] = [];
  const baseUrl = await serve((request, reply) => {
    queries.push(new URL(request.url ?? "", "http://loopback").searchParams);
    reply.writeHead(200, { "content-type": "application/json" }).end("[]");
  });
  const client = createSmsClient({ username: "u", password: "p", baseUrl });
  await expect(client.status({ id: 1 })).resolves.toEqual([]);
  await expect(client.status({ customId: "custom" })).resolves.toEqual([]);
  await expect(client.status({} as never)).rejects.toThrow("exactly one");
  await expect(client.status({ id: 1, customId: "custom" } as never)).rejects.toThrow("exactly one");
  expect(queries).toHaveLength(2);
  expect(queries[0]?.get("id")).toBe("1");
  expect(queries[1]?.get("custom_id")).toBe("custom");
});

it("keeps timeout, disconnect, and refusal errors native with no retry", async () => {
  let timeoutRequests = 0;
  const timeoutUrl = await serve((_request, _reply) => { timeoutRequests++; });
  await expect(createSmsClient({ username: "u", password: "p", baseUrl: timeoutUrl, timeoutMs: 20 }).balance()).rejects.toMatchObject({ name: "TimeoutError" });
  expect(timeoutRequests).toBe(1);

  let disconnectRequests = 0;
  const disconnectUrl = await serve(request => { disconnectRequests++; request.socket.destroy(); });
  await expect(createSmsClient({ username: "u", password: "p", baseUrl: disconnectUrl }).balance()).rejects.toBeInstanceOf(TypeError);
  expect(disconnectRequests).toBe(1);

  const refused = createServer();
  refused.listen(0, "127.0.0.1"); await once(refused, "listening");
  const address = refused.address(); if (!address || typeof address === "string") throw new Error("No refusal port");
  await new Promise<void>(resolve => refused.close(() => resolve()));
  await expect(createSmsClient({ username: "u", password: "p", baseUrl: `http://127.0.0.1:${address.port}` }).balance()).rejects.toBeInstanceOf(TypeError);
});

it("aborts delayed headers and delayed bodies once without leaving a retry", async () => {
  for (const delayed of ["headers", "body"] as const) {
    let requests = 0;
    const baseUrl = await serve((_request, reply) => {
      requests++;
      if (delayed === "body") { reply.writeHead(200, { "content-type": "text/plain" }); reply.flushHeaders(); }
    });
    await expect(createSmsClient({ username: "u", password: "p", baseUrl, timeoutMs: 20 }).balance()).rejects.toMatchObject({ name: "TimeoutError" });
    expect(requests).toBe(1);
  }
});

it("preserves caller cancellation on a raw request and keeps the default timeout signal native", async () => {
  const controller = new AbortController();
  let requests = 0;
  let received: (() => void) | undefined;
  const requestReceived = new Promise<void>(resolve => { received = resolve; });
  const baseUrl = await serve((_request, _reply) => { requests++; received?.(); });
  const raw = createSwitchClient({ apiKey: "key", baseUrl }).raw;
  const pending = raw.GET("/agent_statuses", { signal: controller.signal });
  await requestReceived;
  controller.abort(new Error("caller cancelled"));
  await expect(pending).rejects.toMatchObject({ message: "caller cancelled" });
  expect(requests).toBe(1);

  let signal: AbortSignal | undefined;
  const client = createSmsClient({ username: "u", password: "p", fetch: async (_input, init) => {
    signal = init?.signal as AbortSignal;
    return new Response("42", { status: 200 });
  } });
  await expect(client.balance()).resolves.toBe(42);
  expect(signal).toBeInstanceOf(AbortSignal);
  expect(signal?.aborted).toBe(false);
});
