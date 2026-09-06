import createClient, { type Client } from "openapi-fetch";

import { request, withTimeout, type ClientOptions } from "./core.js";
import type { paths } from "./generated/switch.js";

const DEFAULT_BASE_URL = "https://api.bulutsantralim.com";
const DEFAULT_TIMEOUT_MS = 30_000;

type OriginateBody = paths["/originate"]["post"]["requestBody"]["content"]["application/json"];
export type SwitchOriginateInput = OriginateBody;

export interface SwitchClientOptions extends ClientOptions {
  apiKey: string;
}

export interface SwitchClient {
  raw: Client<paths>;
  originate(body: SwitchOriginateInput): Promise<string>;
}

export function createSwitchClient(options: SwitchClientOptions): SwitchClient {
  const baseUrl = (options.baseUrl ?? DEFAULT_BASE_URL).replace(/\/+$/, "");
  const fetcher = withTimeout(options.fetch ?? globalThis.fetch, options.timeoutMs ?? DEFAULT_TIMEOUT_MS);
  const raw = createClient<paths>({ baseUrl, fetch: fetcher });
  raw.use({
    onRequest({ request }) {
      const url = new URL(request.url);
      url.searchParams.set("key", options.apiKey);
      return new Request(url, request);
    },
  });

  return {
    raw,
    async originate(body) {
      const query = new URLSearchParams({ key: options.apiKey });
      const result = await request("switch", fetcher, `${baseUrl}/originate?${query}`, {
        method: "POST",
        headers: { "content-type": "application/json" },
        body: JSON.stringify(body),
      });
      return result.text.trim();
    },
  };
}
