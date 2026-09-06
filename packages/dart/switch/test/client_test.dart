import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_switch/verimor_switch.dart';

void main() {
  test('Switch query authentication reaches generated API', () async {
    final dio = Dio(BaseOptions(queryParameters: {'key': 'secret'}));
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      expect(request.queryParameters['key'], 'secret');
      handler.resolve(Response(requestOptions: request, statusCode: 200, data: []));
    }));
    final client = VerimorSwitch(dio: dio);
    final response = await client.getKuyrukYonetimiApi().getQueues();
    expect(response.statusCode, 200);
    dio.close();
  });
}
