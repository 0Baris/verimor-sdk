import { describe, expect, it } from "vitest";

import {
  VerimorApiError,
  createSwitchClient,
  createSmsClient,
  createWhatsAppClient,
} from "../src/index.js";

type CapturedRequest = { url: string; init?: RequestInit };

function recordingFetch(response: Response, captured: CapturedRequest[]): typeof fetch {
  return async (input, init) => {
    captured.push({
      url: input instanceof Request ? input.url : String(input),
      init: input instanceof Request ? { headers: input.headers, ...init } : init,
    });
    return response;
  };
}

describe("SMS client", () => {
  it("injects credentials into a send request without mutating the caller body", async () => {
    const captured: CapturedRequest[] = [];
    const body = {
      source_addr: "ACME",
      messages: [{ dest: "905001112233", msg: "Merhaba" }],
    };
    const client = createSmsClient({
      username: "user",
      password: "secret",
      fetch: recordingFetch(new Response("123456", { status: 200 }), captured),
    });

    await expect(client.send(body)).resolves.toBe("123456");
    expect(body).toEqual({
      source_addr: "ACME",
      messages: [{ dest: "905001112233", msg: "Merhaba" }],
    });
    expect(captured[0]?.url).toBe("https://sms.verimor.com.tr/v2/send.json");
    expect(JSON.parse(String(captured[0]?.init?.body))).toEqual({
      username: "user",
      password: "secret",
      source_addr: "ACME",
      messages: [{ dest: "905001112233", msg: "Merhaba" }],
    });
  });

  it("injects credentials into balance query and parses the number", async () => {
    const captured: CapturedRequest[] = [];
    const client = createSmsClient({
      username: "u@example.com",
      password: "p&1",
      fetch: recordingFetch(new Response("42", { status: 200 }), captured),
    });

    await expect(client.balance()).resolves.toBe(42);
    const url = new URL(String(captured[0]?.url));
    expect(`${url.origin}${url.pathname}`).toBe("https://sms.verimor.com.tr/v2/balance");
    expect(Object.fromEntries(url.searchParams)).toEqual({
      username: "u@example.com",
      password: "p&1",
    });
  });

  it("requires exactly one status identifier", async () => {
    const client = createSmsClient({
      username: "user",
      password: "secret",
      fetch: recordingFetch(new Response("[]", { status: 200 }), []),
    });

    await expect(client.status({} as never)).rejects.toThrow("exactly one of id or customId");
    await expect(client.status({ id: 1, customId: "both" } as never)).rejects.toThrow(
      "exactly one of id or customId",
    );
  });
});

describe("Switch and WhatsApp clients", () => {
  it("sends Switch originate credentials as a query parameter", async () => {
    const captured: CapturedRequest[] = [];
    const client = createSwitchClient({
      apiKey: "key value",
      fetch: recordingFetch(new Response("OK", { status: 200 }), captured),
    });

    await expect(
      client.originate({ extension: "1001", destination: "905001112233" }),
    ).resolves.toBe("OK");
    expect(captured[0]?.url).toBe("https://api.bulutsantralim.com/originate?key=key+value");
    expect(JSON.parse(String(captured[0]?.init?.body))).toEqual({
      extension: "1001",
      destination: "905001112233",
    });
  });

  it("authenticates Switch raw requests", async () => {
    const captured: CapturedRequest[] = [];
    const client = createSwitchClient({
      apiKey: "raw key",
      fetch: recordingFetch(Response.json([], { status: 200 }), captured),
    });

    await client.raw.GET("/agent_statuses");

    expect(captured[0]?.url).toBe(
      "https://api.bulutsantralim.com/agent_statuses?key=raw+key",
    );
  });

  it("sends WhatsApp API key in the header", async () => {
    const captured: CapturedRequest[] = [];
    const client = createWhatsAppClient({
      apiKey: "wa-secret",
      fetch: recordingFetch(
        Response.json({ message_id: "msg-1", status: "queued" }, { status: 202 }),
        captured,
      ),
    });

    await expect(
      client.sendOtp({ to: "905001112233", template_name: "otp", parameters: ["123456"] }),
    ).resolves.toEqual({ message_id: "msg-1", status: "queued" });
    expect(new Headers(captured[0]?.init?.headers).get("x-api-key")).toBe("wa-secret");
    expect(captured[0]?.url).toBe("https://wapi.verimor.com.tr/v1/messages/otp");
  });

  it("authenticates WhatsApp raw requests", async () => {
    const captured: CapturedRequest[] = [];
    const client = createWhatsAppClient({
      apiKey: "raw-secret",
      fetch: recordingFetch(
        Response.json({ message_id: "msg-1", status: "queued" }, { status: 202 }),
        captured,
      ),
    });

    await client.raw.POST("/v1/messages/otp", {
      body: { to: "905001112233", template_name: "otp", language: "tr" },
    });

    expect(new Headers(captured[0]?.init?.headers).get("x-api-key")).toBe("raw-secret");
  });
});

describe("shared behavior", () => {
  it("retains the HTTP error when its JSON body is malformed", async () => {
    const client = createSmsClient({ username: "u", password: "p",
      fetch: recordingFetch(new Response("{broken", {
        status: 503, headers: { "content-type": "application/json" },
      }), []),
    });
    await expect(client.balance()).rejects.toMatchObject({
      product: "sms", status: 503, body: "{broken",
    });
  });

  it("rejects empty numeric responses", async () => {
    const client = createSmsClient({ username: "u", password: "p",
      fetch: recordingFetch(new Response(" ", { status: 200 }), []),
    });
    await expect(client.balance()).rejects.toThrow("Invalid balance response");
  });

  it("rejects non-object WhatsApp JSON responses", async () => {
    const client = createWhatsAppClient({ apiKey: "key",
      fetch: recordingFetch(Response.json([]), []),
    });
    await expect(client.sendOtp({ to: "905001112233", template_name: "otp",
      language: "tr", use_tenant_queue: false,
    })).rejects.toThrow(TypeError);
  });
  it("throws VerimorApiError for non-2xx responses", async () => {
    const client = createWhatsAppClient({
      apiKey: "secret",
      fetch: recordingFetch(Response.json({ detail: "invalid" }, { status: 400 }), []),
    });

    await expect(
      client.sendUtility({ to: "905001112233", template_name: "invoice", parameters: [] }),
    ).rejects.toMatchObject<Partial<VerimorApiError>>({
      name: "VerimorApiError",
      product: "whatsapp",
      status: 400,
      body: { detail: "invalid" },
    });
  });

  it("preserves native transport errors", async () => {
    const transportError = new TypeError("network down");
    const failingFetch: typeof fetch = async () => {
      throw transportError;
    };
    const client = createSmsClient({ username: "u", password: "p", fetch: failingFetch });

    await expect(client.balance()).rejects.toBe(transportError);
  });

  it("aborts requests after the configured timeout", async () => {
    const hangingFetch: typeof fetch = async (_input, init) =>
      new Promise((_resolve, reject) => {
        init?.signal?.addEventListener("abort", () => reject(init.signal?.reason));
      });
    const client = createSmsClient({
      username: "u",
      password: "p",
      timeoutMs: 5,
      fetch: hangingFetch,
    });

    await expect(client.balance()).rejects.toMatchObject({ name: "TimeoutError" });
  });

  it("rejects malformed numeric responses", async () => {
    const client = createSmsClient({
      username: "u",
      password: "p",
      fetch: recordingFetch(new Response("not-a-number", { status: 200 }), []),
    });

    await expect(client.balance()).rejects.toThrow("Invalid balance response");
  });
});
