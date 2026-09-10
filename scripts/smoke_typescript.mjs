import http from "node:http";

import * as sdk from "@bariscemant/verimor";

for (const entry of ["sms", "switch", "whatsapp"]) {
  await import(`@bariscemant/verimor/${entry}`);
}

const requests = [];
const server = http.createServer(async (request, response) => {
  let body = "";
  for await (const chunk of request) body += chunk;
  requests.push({ method: request.method, url: request.url, body, headers: request.headers });
  if (request.url?.startsWith("/v2/balance")) return response.end("42");
  if (request.url?.startsWith("/originate")) return response.end("call-1");
  if (request.url === "/v1/messages/otp") {
    response.writeHead(202, { "content-type": "application/json" });
    return response.end('{"id":"msg-1","status":"queued"}');
  }
  response.writeHead(404);
  response.end();
});

await new Promise((resolve) => server.listen(0, "127.0.0.1", resolve));
const address = server.address();
if (!address || typeof address === "string") throw Error("server");
const baseUrl = `http://127.0.0.1:${address.port}`;

try {
  const sms = sdk.createSmsClient({ username: "u", password: "p", baseUrl });
  if ((await sms.balance()) !== 42) throw Error("balance");
  const switchClient = sdk.createSwitchClient({ apiKey: "switch-key", baseUrl });
  if (
    (await switchClient.originate({ extension: "1001", destination: "1002" })) !== "call-1"
  ) {
    throw Error("switch");
  }
  const whatsapp = sdk.createWhatsAppClient({ apiKey: "whatsapp-key", baseUrl });
  if ((await whatsapp.sendOtp({ to: "905001112233", template_name: "otp" })).status !== "queued") {
    throw Error("whatsapp");
  }
  const [balance, originate, otp] = requests;
  if (!balance.url.includes("username=u") || !balance.url.includes("password=p")) {
    throw Error("sms auth");
  }
  if (!originate.url.includes("key=switch-key") || !originate.body.includes("destination")) {
    throw Error("switch auth");
  }
  if (otp.headers["x-api-key"] !== "whatsapp-key" || !otp.body.includes("template_name")) {
    throw Error("whatsapp auth");
  }
} finally {
  await new Promise((resolve, reject) =>
    server.close((error) => (error ? reject(error) : resolve())),
  );
}
