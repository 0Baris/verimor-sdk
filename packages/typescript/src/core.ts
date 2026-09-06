import type { Client } from "openapi-fetch";

export type Product = "sms" | "switch" | "whatsapp";

export interface ClientOptions {
  baseUrl?: string;
  timeoutMs?: number;
  fetch?: typeof globalThis.fetch;
}

export class VerimorApiError extends Error {
  readonly product: Product;
  readonly status: number;
  readonly body: unknown;

  constructor(product: Product, status: number, body: unknown) {
    super(`Verimor ${product} API returned HTTP ${status}`);
    this.name = "VerimorApiError";
    this.product = product;
    this.status = status;
    this.body = body;
  }
}

export function withTimeout(
  fetcher: typeof globalThis.fetch,
  timeoutMs: number,
): typeof globalThis.fetch {
  return async (input, init) => {
    const timeoutSignal = AbortSignal.timeout(timeoutMs);
    const callerSignal = init?.signal ?? (input instanceof Request ? input.signal : undefined);
    const signal = callerSignal ? AbortSignal.any([callerSignal, timeoutSignal]) : timeoutSignal;
    return fetcher(input, { ...init, signal });
  };
}

export async function request(
  product: Product,
  fetcher: typeof globalThis.fetch,
  url: string,
  init?: RequestInit,
): Promise<{ body: unknown; text: string }> {
  const response = await fetcher(url, init);
  const text = await response.text();
  let body: unknown = text;
  if (text && response.headers.get("content-type")?.includes("json")) {
    try {
      body = JSON.parse(text);
    } catch (error) {
      if (response.ok) throw error;
    }
  }
  if (!response.ok) {
    throw new VerimorApiError(product, response.status, body);
  }
  return { body, text };
}

export type RawClient<T extends Record<string, Record<string, unknown>>> = Client<T>;
