import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_sms/verimor_sms.dart';

void main() {
  test('balance sends credentials in query and preserves status', () async {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      expect(request.path, '/v2/balance');
      expect(request.queryParameters['username'], 'user');
      expect(request.queryParameters['password'], 'secret');
      handler.resolve(Response(requestOptions: request, statusCode: 200));
    }));
    final client = VerimorSms(dio: dio);
    final response = await client.getBakiyeSorgulamalariApi().v2BalanceGet(
      username: 'user', password: 'secret',
    );
    expect(response.statusCode, 200);
    dio.close();
  });
}
