import 'package:dio/dio.dart';

import 'api.dart' show VerimorSms;
import 'facade.gen.dart';
import 'facade_core.dart';

class SmsClient extends SmsFacade {
  factory SmsClient({
    required String username,
    required String password,
    String? sourceAddr,
    String baseUrl = VerimorSms.basePath,
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
      product: 'sms',
      dio: actualDio,
      baseUrl: baseUrl,
      credentials: {'username': username, 'password': password},
      defaults: {if (sourceAddr != null) 'sourceAddr': sourceAddr},
      ownsDio: ownsDio,
    );
    return SmsClient._(VerimorSms(dio: actualDio), transport);
  }

  SmsClient._(this.raw, this._clientTransport) : super(_clientTransport);

  final VerimorSms raw;
  final FacadeTransport _clientTransport;

  Future<String> send(Map<String, dynamic> body) async {
    final value = await _clientTransport.request(_sendOperation, body);
    return value as String;
  }

  Future<double> balance() async {
    final value = await _clientTransport.request(_balanceOperation, const {});
    final parsed = double.tryParse(value as String);
    if (parsed == null || !parsed.isFinite) {
      throw const FormatException('Invalid balance response');
    }
    return parsed;
  }

  Future<dynamic> status({
    int? id,
    String? customId,
    String? dest,
    int? greaterThan,
  }) {
    if ((id == null) == (customId == null)) {
      throw ArgumentError('status requires exactly one of id or customId');
    }
    return _clientTransport.request(_statusOperation, {
      if (id != null) 'id': id,
      if (customId != null) 'customId': customId,
      if (dest != null) 'dest': dest,
      if (greaterThan != null) 'greaterThan': greaterThan,
    });
  }

  void close() => _clientTransport.close();
}

const _sendOperation = <String, dynamic>{
  'operationId': 'sendSmsJson',
  'method': 'POST',
  'path': '/v2/send.json',
  'parameters': <Map<String, dynamic>>[],
  'hasBody': true,
  'bodyRequired': false,
  'bodyRequiredFields': ['username', 'password', 'messages'],
  'contentType': 'application/json',
  'responseKind': 'text',
  'clientDefaults': {'source_addr': 'sourceAddr'},
  'credentials': {'username': 'body', 'password': 'body'},
};

const _balanceOperation = <String, dynamic>{
  'operationId': 'get_v2_balance',
  'method': 'GET',
  'path': '/v2/balance',
  'parameters': <Map<String, dynamic>>[],
  'hasBody': false,
  'bodyRequired': false,
  'bodyRequiredFields': <String>[],
  'contentType': null,
  'responseKind': 'text',
  'clientDefaults': <String, String>{},
  'credentials': {'username': 'query', 'password': 'query'},
};

const _statusOperation = <String, dynamic>{
  'operationId': 'getSmsStatus',
  'method': 'GET',
  'path': '/v2/status',
  'parameters': [
    {
      'wireName': 'id',
      'publicName': 'id',
      'location': 'query',
      'required': false
    },
    {
      'wireName': 'custom_id',
      'publicName': 'customId',
      'location': 'query',
      'required': false
    },
    {
      'wireName': 'dest',
      'publicName': 'dest',
      'location': 'query',
      'required': false
    },
    {
      'wireName': 'greater_than',
      'publicName': 'greaterThan',
      'location': 'query',
      'required': false,
    },
  ],
  'hasBody': false,
  'bodyRequired': false,
  'bodyRequiredFields': <String>[],
  'contentType': null,
  'responseKind': 'json',
  'clientDefaults': <String, String>{},
  'credentials': {'username': 'query', 'password': 'query'},
};
