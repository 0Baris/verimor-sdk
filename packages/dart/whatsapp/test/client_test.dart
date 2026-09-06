import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_whatsapp/verimor_whatsapp.dart';

void main() {
  test('OTP puts key in header, serializes body and preserves Dio errors', () async {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      expect(request.headers['x-api-key'], 'secret');
      expect(request.data['template_name'], 'otp');
      expect(request.data['to'], '905550000000');
      handler.reject(DioException(
        requestOptions: request,
        response: Response(requestOptions: request, statusCode: 401),
        type: DioExceptionType.badResponse,
      ));
    }));
    final client = VerimorWhatsapp(dio: dio);
    await expectLater(
      client.getMessagesApi().sendOtpV1MessagesOtpPost(
        xApiKey: 'secret',
        templateMessageRequest: TemplateMessageRequest((b) => b
          ..to = '905550000000'
          ..templateName = 'otp'),
      ),
      throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status', 401)),
    );
    dio.close();
  });
}
