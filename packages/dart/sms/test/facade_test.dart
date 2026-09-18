import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:verimor_sms/verimor_sms.dart';

void main() {
  test(
      'SMS facade applies auth, default sender and keeps caller input immutable',
      () async {
    final requests = <RequestOptions>[];
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      requests.add(request);
      final data = request.path.endsWith('/v2/balance') ? '12.5' : '123';
      handler.resolve(
          Response(requestOptions: request, statusCode: 200, data: data));
    }));
    final client = SmsClient(
      username: 'u',
      password: 'p',
      sourceAddr: 'VERIMOR',
      dio: dio,
    );
    final body = <String, dynamic>{
      'messages': [
        {'dest': '90500', 'msg': 'Merhaba'},
      ],
    };

    expect(await client.send(body), '123');
    expect(body.containsKey('source_addr'), isFalse);
    final sent = requests.first.data as Map<String, dynamic>;
    expect(sent, containsPair('source_addr', 'VERIMOR'));
    expect(sent, containsPair('username', 'u'));
    expect(await client.balance(), 12.5);
    expect(requests.last.queryParameters, containsPair('password', 'p'));
    client.close();

    // The SDK must not close a caller-owned Dio instance.
    await dio.get<void>('https://example.invalid/after-close');
    dio.close();
  });

  test('per-call sender wins and missing sender fails before I/O', () async {
    var requests = 0;
    Object? lastData;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      requests++;
      lastData = request.data;
      handler.resolve(
          Response(requestOptions: request, statusCode: 200, data: '1'));
    }));
    final client = SmsClient(username: 'u', password: 'p', dio: dio);

    await client.send({'source_addr': 'OVERRIDE', 'messages': []});
    expect(lastData, containsPair('source_addr', 'OVERRIDE'));
    await expectLater(
      client.send({'messages': []}),
      throwsA(isA<ArgumentError>()),
    );
    expect(requests, 1);
    dio.close();
  });
}
