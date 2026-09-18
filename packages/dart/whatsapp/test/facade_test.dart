import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_whatsapp/verimor_whatsapp.dart';

void main() {
  test('WhatsApp facade accepts 202 and injects x-api-key', () async {
    final requests = <RequestOptions>[];
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      requests.add(request);
      handler.resolve(Response(
        requestOptions: request,
        statusCode: request.path.endsWith('/health') ? 200 : 202,
        data: request.path.endsWith('/health')
            ? {'status': 'ok'}
            : {'id': '1', 'status': 'queued'},
      ));
    }));
    final client = WhatsAppClient(apiKey: 'secret', dio: dio);

    expect(
      await client.sendOtp({'to': '90500', 'template_name': 'otp'}),
      containsPair('status', 'queued'),
    );
    expect(requests.first.headers, containsPair('x-api-key', 'secret'));
    expect(await client.health(), containsPair('status', 'ok'));
    dio.close();
  });

  test('HTTP failures become VerimorApiError without retry', () async {
    var requests = 0;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      requests++;
      handler.resolve(Response(
        requestOptions: request,
        statusCode: 429,
        data: {'detail': 'slow down'},
      ));
    }));
    final client = WhatsAppClient(apiKey: 'secret', dio: dio);

    await expectLater(
      client.sendUtility({'to': '90500', 'template_name': 'utility'}),
      throwsA(isA<VerimorApiError>()
          .having((error) => error.product, 'product', 'whatsapp')
          .having((error) => error.status, 'status', 429)),
    );
    expect(requests, 1);
    dio.close();
  });
}
