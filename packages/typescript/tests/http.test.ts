import { createServer } from "node:http";
import { once } from "node:events";
import { afterEach, expect, it } from "vitest";
import { createSmsClient, VerimorApiError } from "../src/index.js";

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
  if (!address || typeof address === "string") throw new Error("No test port");
  return `http://127.0.0.1:${address.port}`;
}

it.each([200, 401, 429, 500])("real fetch preserves HTTP %s and never retries", async status => {
  let requests = 0;
  const baseUrl = await serve((request, response) => {
    requests++;
    const url = new URL(request.url!, "http://localhost");
    expect(url.searchParams.get("username")).toBe("u+ &ç");
    response.writeHead(status, { "content-type": "text/plain" }).end("42");
  });
  const client = createSmsClient({ username: "u+ &ç", password: "p", baseUrl });
  if (status === 200) expect(await client.balance()).toBe(42);
  else await expect(client.balance()).rejects.toBeInstanceOf(VerimorApiError);
  expect(requests).toBe(1);
});

it("real fetch times out against a non-responding HTTP server", async () => {
  const baseUrl = await serve(() => {});
  const client = createSmsClient({ username: "u", password: "p", baseUrl, timeoutMs: 50 });
  await expect(client.balance()).rejects.toMatchObject({ name: "TimeoutError" });
});
