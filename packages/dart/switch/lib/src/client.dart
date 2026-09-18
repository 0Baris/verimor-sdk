import 'package:dio/dio.dart';

import 'api.dart' show VerimorSwitch;
import 'facade.gen.dart';
import 'facade_core.dart';

class SwitchClient extends SwitchFacade {
  factory SwitchClient({
    required String apiKey,
    String baseUrl = VerimorSwitch.basePath,
    Duration timeout = const Duration(seconds: 30),
    Dio? dio,
  }) {
    final ownsDio = dio == null;
    final actualDio = dio ??
        Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: timeout,
          sendTimeout: timeout,
          receiveTimeout: timeout,
        ));
    final transport = FacadeTransport(
      product: 'switch',
      dio: actualDio,
      baseUrl: baseUrl,
      credentials: {'key': apiKey},
      ownsDio: ownsDio,
    );
    return SwitchClient._(VerimorSwitch(dio: actualDio), transport);
  }

  SwitchClient._(this.raw, this._clientTransport) : super(_clientTransport);

  final VerimorSwitch raw;
  final FacadeTransport _clientTransport;

  Future<String> originate(Map<String, dynamic> body) async {
    final value = await _clientTransport.request(_originateOperation, body);
    return value as String;
  }

  void close() => _clientTransport.close();
}

const _originateOperation = <String, dynamic>{
  'operationId': 'originateCallPost',
  'method': 'POST',
  'path': '/originate',
  'parameters': <Map<String, dynamic>>[],
  'hasBody': true,
  'bodyRequired': true,
  'bodyRequiredFields': <String>[],
  'contentType': 'application/json',
  'responseKind': 'text',
  'clientDefaults': <String, String>{},
  'credentials': {'key': 'query'},
};
