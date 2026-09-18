import createClient, { type Client } from "openapi-fetch";

import { createFacadeTransport, withTimeout, type ClientOptions } from "./core.js";
import { createWhatsAppFacade, type WhatsAppFacade } from "./facade/whatsapp.gen.js";
import type { components, paths } from "./generated/whatsapp.js";

const DEFAULT_BASE_URL = "https://wapi.verimor.com.tr";
const DEFAULT_TIMEOUT_MS = 30_000;

export type WhatsAppMessageInput = components["schemas"]["TemplateMessageRequest"];
export type WhatsAppMessageResponse = components["schemas"]["MessageResponse"];

export interface WhatsAppClientOptions extends ClientOptions {
  apiKey: string;
}

export type WhatsAppClient = Omit<WhatsAppFacade, "sendOtp" | "sendUtility"> & {
  raw: Client<paths>;
  sendOtp(body: WhatsAppMessageInput): Promise<WhatsAppMessageResponse>;
  sendUtility(body: WhatsAppMessageInput): Promise<WhatsAppMessageResponse>;
};

export function createWhatsAppClient(options: WhatsAppClientOptions): WhatsAppClient {
  const baseUrl = (options.baseUrl ?? DEFAULT_BASE_URL).replace(/\/+$/, "");
  const fetcher = withTimeout(options.fetch ?? globalThis.fetch, options.timeoutMs ?? DEFAULT_TIMEOUT_MS);
  const raw = createClient<paths>({
    baseUrl, fetch: fetcher, headers: { "x-api-key": options.apiKey },
  });
  const facade = createWhatsAppFacade(createFacadeTransport(
    "whatsapp", fetcher, baseUrl, { "x-api-key": options.apiKey },
  ));

  async function send(kind: "otp" | "utility", body: WhatsAppMessageInput) {
    const result = await (kind === "otp"
      ? facade.sendOtp({ ...body })
      : facade.sendUtility({ ...body }));
    if (typeof result !== "object" || result === null || Array.isArray(result)) {
      throw new TypeError("Expected a JSON object response");
    }
    return result as WhatsAppMessageResponse;
  }

  return {
    ...facade,
    raw,
    sendOtp: (body) => send("otp", body),
    sendUtility: (body) => send("utility", body),
  };
}
