import type { Client } from "openapi-fetch";

export type Product = "sms" | "switch" | "whatsapp";

export interface ClientOptions {
  baseUrl?: string;
  timeoutMs?: number;
  fetch?: typeof globalThis.fetch;
}

export interface FacadeParameterDescriptor {
  wireName: string;
  publicName: string;
  location: "path" | "query" | "header";
  required: boolean;
}

export interface FacadeOperationDescriptor {
  operationId: string;
  method: string;
  path: string;
  parameters: readonly FacadeParameterDescriptor[];
  hasBody: boolean;
  bodyRequired: boolean;
  bodyRequiredFields: readonly string[];
  contentType: string | null;
  responseKind: "json" | "text" | "binary" | "empty";
  clientDefaults: Readonly<Record<string, string>>;
  credentials: Readonly<Record<string, "query" | "header" | "body">>;
}

export interface FacadeTransport {
  request(
    operation: FacadeOperationDescriptor,
    input: Readonly<Record<string, unknown>>,
  ): Promise<unknown>;
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

function addSearchValue(search: URLSearchParams, name: string, value: unknown): void {
  if (value === undefined || value === null) return;
  if (Array.isArray(value)) {
    for (const item of value) addSearchValue(search, name, item);
    return;
  }
  search.append(name, String(value));
}

function recordValue(value: unknown, context: string): Record<string, unknown> {
  if (value === undefined || value === null) return {};
  if (typeof value !== "object" || Array.isArray(value)) {
    throw new TypeError(`${context} must be an object`);
  }
  return { ...(value as Record<string, unknown>) };
}

export function createFacadeTransport(
  product: Product,
  fetcher: typeof globalThis.fetch,
  baseUrl: string,
  credentials: Readonly<Record<string, string>>,
  clientDefaults: Readonly<Record<string, unknown>> = {},
): FacadeTransport {
  return {
    async request(operation, input) {
      const values = { ...input };
      const body = operation.hasBody
        ? operation.parameters.length > 0
          ? recordValue(values.body, `${operation.operationId} body`)
          : recordValue(values, `${operation.operationId} body`)
        : undefined;
      if (operation.hasBody && operation.parameters.length > 0) delete values.body;

      for (const [wireName, optionName] of Object.entries(operation.clientDefaults)) {
        const target = body ?? values;
        if (target[wireName] === undefined && clientDefaults[optionName] !== undefined) {
          target[wireName] = clientDefaults[optionName];
        }
        if (target[wireName] === undefined) {
          throw new TypeError(`${operation.operationId} requires ${wireName}`);
        }
      }
      for (const [name, location] of Object.entries(operation.credentials)) {
        if (location === "body") {
          if (body === undefined) throw new TypeError(`${operation.operationId} has no body`);
          body[name] = credentials[name];
        }
      }
      if (operation.bodyRequired && body === undefined) {
        throw new TypeError(`${operation.operationId} requires a body`);
      }
      for (const field of operation.bodyRequiredFields) {
        if (body?.[field] === undefined) {
          throw new TypeError(`${operation.operationId} requires ${field}`);
        }
      }

      let path = operation.path;
      const search = new URLSearchParams();
      const headers = new Headers();
      for (const parameter of operation.parameters) {
        const value = values[parameter.publicName] ?? values[parameter.wireName];
        if (parameter.required && value === undefined) {
          throw new TypeError(`${operation.operationId} requires ${parameter.publicName}`);
        }
        if (parameter.location === "path" && value !== undefined) {
          path = path.replace(`{${parameter.wireName}}`, encodeURIComponent(String(value)));
        } else if (parameter.location === "query") {
          addSearchValue(search, parameter.wireName, value);
        } else if (parameter.location === "header" && value !== undefined) {
          headers.set(parameter.wireName, String(value));
        }
      }
      for (const [name, location] of Object.entries(operation.credentials)) {
        const value = credentials[name];
        if (value === undefined) continue;
        if (location === "query") addSearchValue(search, name, value);
        if (location === "header") headers.set(name, value);
      }

      let requestBody: BodyInit | undefined;
      if (body !== undefined) {
        if (operation.contentType === "application/x-www-form-urlencoded") {
          const form = new URLSearchParams();
          for (const [name, value] of Object.entries(body)) addSearchValue(form, name, value);
          requestBody = form;
        } else {
          headers.set("content-type", operation.contentType ?? "application/json");
          requestBody = JSON.stringify(body);
        }
      }
      const query = search.toString();
      const result = await request(product, fetcher, `${baseUrl}${path}${query ? `?${query}` : ""}`, {
        method: operation.method,
        headers,
        ...(requestBody === undefined ? {} : { body: requestBody }),
      });
      if (operation.responseKind === "empty") return undefined;
      if (operation.responseKind === "text") return result.text.trim();
      if (operation.responseKind === "json") {
        return typeof result.body === "string" ? JSON.parse(result.body) : result.body;
      }
      return new TextEncoder().encode(result.text);
    },
  };
}

export type RawClient<T extends Record<string, Record<string, unknown>>> = Client<T>;
