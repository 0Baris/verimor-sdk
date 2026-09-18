import { describe, expect, expectTypeOf, it } from "vitest";

import { createSmsClient, createSwitchClient, createWhatsAppClient } from "../src/index.js";

type CapturedRequest = { url: string; init?: RequestInit };

function recordingFetch(response: Response, captured: CapturedRequest[]): typeof fetch {
  return async (input, init) => {
    captured.push({ url: String(input), init });
    return response;
  };
}

describe("complete facade surface", () => {
  it("exports representative methods from every product", () => {
    const fetch = recordingFetch(Response.json({}), []);
    const sms = createSmsClient({ username: "u", password: "p", fetch });
    const sw = createSwitchClient({ apiKey: "key", fetch });
    const wa = createWhatsAppClient({ apiKey: "key", fetch });

    expectTypeOf(sms.listBlacklistEntries).toBeFunction();
    expectTypeOf(sms.submitIysConsents).toBeFunction();
    expectTypeOf(sw.listAnnouncements).toBeFunction();
    expectTypeOf(sw.downloadFaxDocument).toBeFunction();
    expectTypeOf(sw.createWebphoneToken).toBeFunction();
    expectTypeOf(wa.health).toBeFunction();
  });

  it("uses the client SMS sender title without mutating input", async () => {
    const captured: CapturedRequest[] = [];
    const body = { messages: [{ dest: "905001112233", msg: "Merhaba" }] };
    const sms = createSmsClient({
      username: "u",
      password: "p",
      sourceAddr: "VERIMOR",
      fetch: recordingFetch(new Response("123"), captured),
    });

    await expect(sms.send(body)).resolves.toBe("123");
    expect(body).toEqual({ messages: [{ dest: "905001112233", msg: "Merhaba" }] });
    expect(JSON.parse(String(captured[0]?.init?.body))).toMatchObject({
      source_addr: "VERIMOR",
      username: "u",
      password: "p",
    });
  });

  it("lets a per-call sender title override the client default", async () => {
    const captured: CapturedRequest[] = [];
    const sms = createSmsClient({
      username: "u",
      password: "p",
      sourceAddr: "DEFAULT",
      fetch: recordingFetch(new Response("123"), captured),
    });

    await sms.send({ source_addr: "OVERRIDE", messages: [] });
    expect(JSON.parse(String(captured[0]?.init?.body)).source_addr).toBe("OVERRIDE");
  });
});
