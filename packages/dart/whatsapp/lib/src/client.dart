import 'package:dio/dio.dart';

import 'api.dart' show VerimorWhatsapp;
import 'facade.gen.dart';
import 'facade_core.dart';

class WhatsAppClient extends WhatsAppFacade {
  factory WhatsAppClient({
    required String apiKey,
    String baseUrl = VerimorWhatsapp.basePath,
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
      product: 'whatsapp',
      dio: actualDio,
      baseUrl: baseUrl,
      credentials: {'x-api-key': apiKey},
      ownsDio: ownsDio,
    );
    return WhatsAppClient._(VerimorWhatsapp(dio: actualDio), transport);
  }

  WhatsAppClient._(this.raw, this._clientTransport) : super(_clientTransport);

  final VerimorWhatsapp raw;
  final FacadeTransport _clientTransport;

  Future<Map<String, dynamic>> sendOtp(Map<String, dynamic> body) {
    return _send(_otpOperation, body);
  }

  Future<Map<String, dynamic>> sendUtility(Map<String, dynamic> body) {
    return _send(_utilityOperation, body);
  }

  Future<Map<String, dynamic>> _send(
    Map<String, dynamic> operation,
    Map<String, dynamic> body,
  ) async {
    final value = await _clientTransport.request(operation, body);
    if (value is! Map<String, dynamic>) {
      throw const FormatException('Expected a JSON object response');
    }
    return value;
  }

  void close() => _clientTransport.close();
}

const _otpOperation = <String, dynamic>{
  'operationId': 'send_otp_v1_messages_otp_post',
  'method': 'POST',
  'path': '/v1/messages/otp',
  'parameters': <Map<String, dynamic>>[],
  'hasBody': true,
  'bodyRequired': true,
  'bodyRequiredFields': ['to', 'template_name'],
  'contentType': 'application/json',
  'responseKind': 'json',
  'clientDefaults': <String, String>{},
  'credentials': {'x-api-key': 'header'},
};

final _utilityOperation = <String, dynamic>{
  ..._otpOperation,
  'operationId': 'send_utility_v1_messages_utility_post',
  'path': '/v1/messages/utility',
};
