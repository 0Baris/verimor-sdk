import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_switch/verimor_switch.dart';

void main() {
  test('Switch facade injects key and exposes generated methods', () async {
    final requests = <RequestOptions>[];
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      requests.add(request);
      final data = request.path.endsWith('/announcements') ? <dynamic>[] : 'OK';
      handler.resolve(
          Response(requestOptions: request, statusCode: 200, data: data));
    }));
    final client = SwitchClient(apiKey: 'key value', dio: dio);

    expect(
      await client.originate({'extension': '1001', 'destination': '90500'}),
      'OK',
    );
    expect(requests.first.queryParameters, containsPair('key', 'key value'));
    expect(await client.listAnnouncements(), isEmpty);
    expect(requests.last.queryParameters, containsPair('key', 'key value'));
    dio.close();
  });
}
