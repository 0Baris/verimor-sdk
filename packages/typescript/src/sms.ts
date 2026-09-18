import createClient, { type Client } from "openapi-fetch";

import { createFacadeTransport, withTimeout, type ClientOptions } from "./core.js";
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
      return facade.send({ ...body });
    },
    async balance() {
      const text = (await facade.balance()).trim();
      const balance = Number(text);
      if (!text || !Number.isFinite(balance)) {
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
      return facade.status({ ...query }) as Promise<SmsStatusResponse>;
    },
  };
}
