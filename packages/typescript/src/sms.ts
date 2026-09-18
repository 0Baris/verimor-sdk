import createClient, { type Client } from "openapi-fetch";

import { createFacadeTransport, request, withTimeout, type ClientOptions } from "./core.js";
import { createSmsFacade, type SmsFacade } from "./facade/sms.gen.js";
import type { paths } from "./generated/sms.js";

const DEFAULT_BASE_URL = "https://sms.verimor.com.tr";
const DEFAULT_TIMEOUT_MS = 30_000;

type SendBody = NonNullable<
  paths["/v2/send.json"]["post"]["requestBody"]
>["content"]["application/json"];
export type SmsSendInput = Omit<SendBody, "username" | "password" | "source_addr"> & {
  source_addr?: SendBody["source_addr"];
};
export type SmsStatusQuery =
  | { id: number; customId?: never; dest?: string }
  | { customId: string; id?: never; dest?: string };
export type SmsStatusResponse =
  paths["/v2/status"]["get"]["responses"][200]["content"]["application/json"];

export interface SmsClientOptions extends ClientOptions {
  username: string;
  password: string;
  sourceAddr?: string;
}

export type SmsClient = Omit<SmsFacade, "send" | "balance" | "status"> & {
  raw: Client<paths>;
  send(body: SmsSendInput): Promise<string>;
  balance(): Promise<number>;
  status(query: SmsStatusQuery): Promise<SmsStatusResponse>;
};

export function createSmsClient(options: SmsClientOptions): SmsClient {
  const baseUrl = (options.baseUrl ?? DEFAULT_BASE_URL).replace(/\/+$/, "");
  const fetcher = withTimeout(options.fetch ?? globalThis.fetch, options.timeoutMs ?? DEFAULT_TIMEOUT_MS);
  const raw = createClient<paths>({ baseUrl, fetch: fetcher });
  const facade = createSmsFacade(createFacadeTransport(
    "sms",
    fetcher,
    baseUrl,
    { username: options.username, password: options.password },
    { sourceAddr: options.sourceAddr },
  ));

  return {
    ...facade,
    raw,
    async send(body) {
      const sourceAddr = body.source_addr ?? options.sourceAddr;
      if (sourceAddr === undefined) throw new TypeError("send requires source_addr");
      const result = await request("sms", fetcher, `${baseUrl}/v2/send.json`, {
        method: "POST",
        headers: { "content-type": "application/json" },
        body: JSON.stringify({
          ...body,
          source_addr: sourceAddr,
          username: options.username,
          password: options.password,
        }),
      });
      return result.text.trim();
    },
    async balance() {
      const query = new URLSearchParams({ username: options.username, password: options.password });
      const result = await request("sms", fetcher, `${baseUrl}/v2/balance?${query}`);
      const balance = Number(result.text.trim());
      if (!result.text.trim() || !Number.isFinite(balance)) {
        throw new TypeError("Invalid balance response");
      }
      return balance;
    },
    async status(query) {
      const hasId = query.id !== undefined;
      const hasCustomId = query.customId !== undefined;
      if (hasId === hasCustomId) {
        throw new TypeError("status requires exactly one of id or customId");
      }
      const parameters = new URLSearchParams({
        username: options.username,
        password: options.password,
        format: "json",
      });
      if (query.id !== undefined) parameters.set("id", String(query.id));
      if (query.customId !== undefined) parameters.set("custom_id", query.customId);
      if (query.dest !== undefined) parameters.set("dest", query.dest);
      const result = await request("sms", fetcher, `${baseUrl}/v2/status?${parameters}`);
      if (typeof result.body === "string") {
        return JSON.parse(result.body) as SmsStatusResponse;
      }
      return result.body as SmsStatusResponse;
    },
  };
}
