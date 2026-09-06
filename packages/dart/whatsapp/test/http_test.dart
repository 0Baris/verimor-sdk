import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_whatsapp/verimor_whatsapp.dart';

void main() {
  for (final status in [202, 401, 429, 500]) {
    test('real HTTP $status, typed body and no retries', () async {
      var calls = 0;
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(() => server.close(force: true));
      server.listen((request) async {
        calls++;
        expect(request.headers.value('x-api-key'), 'secret');
        final body = jsonDecode(await utf8.decoder.bind(request).join());
        expect(body['template_name'], 'otp');
        request.response.statusCode = status;
        request.response.headers.contentType = ContentType.json;
        request.response.write(jsonEncode({
          'id': '01234567-89ab-cdef-0123-456789abcdef', 'status': 'queued',
        }));
        await request.response.close();
      });
      final dio = Dio(BaseOptions(baseUrl: 'http://127.0.0.1:${server.port}'));
      addTearDown(() => dio.close(force: true));
      final future = VerimorWhatsapp(dio: dio).getMessagesApi().sendOtpV1MessagesOtpPost(
        xApiKey: 'secret',
        templateMessageRequest: TemplateMessageRequest((b) => b..to = '905550000000'..templateName = 'otp'),
      );
      if (status == 202) {
        expect((await future).data?.status, 'queued');
      } else {
        await expectLater(future, throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status', status)));
      }
      expect(calls, 1);
    });
  }
  test('real HTTP timeout', () async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    addTearDown(() => server.close(force: true));
    server.listen((request) {});
    final dio = Dio(BaseOptions(baseUrl: 'http://127.0.0.1:${server.port}', receiveTimeout: const Duration(milliseconds: 50)));
    addTearDown(() => dio.close(force: true));
    await expectLater(
      VerimorWhatsapp(dio: dio).getMessagesApi().sendOtpV1MessagesOtpPost(
        templateMessageRequest: TemplateMessageRequest((b) => b..to = '905550000000'..templateName = 'otp'),
      ),
      throwsA(isA<DioException>().having((e) => e.type, 'type', DioExceptionType.receiveTimeout)),
    );
  });
}
