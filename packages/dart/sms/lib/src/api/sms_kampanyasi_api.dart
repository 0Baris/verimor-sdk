//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:verimor_sms/src/api_util.dart';
import 'package:verimor_sms/src/model/send_sms_json_request.dart';
import 'package:verimor_sms/src/model/v2_cancel_id_post_request.dart';

class SmsKampanyasiApi {

  final Dio _dio;

  final Serializers _serializers;

  const SmsKampanyasiApi(this._dio, this._serializers);

  /// SMS Gönderme (JSON)
  /// JSON formatında toplu SMS gönderimi için kullanılır. Birden fazla farklı mesajı farklı numaralara gönderebilirsiniz. Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek gönderebilirsiniz (burst 80).
  ///
  /// Parameters:
  /// * [sendSmsJsonRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> sendSmsJson({ 
    SendSmsJsonRequest? sendSmsJsonRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/send.json';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(SendSmsJsonRequest);
      _bodyData = sendSmsJsonRequest == null ? null : _serializers.serialize(sendSmsJsonRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gönderim İptali
  /// &lt;p&gt;İleri tarihli mesaj gönderimini iptal etmek için örnekte olduğu gibi bir JSON string POST edilir.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpoint&#39;lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [id] - Kampanya ID'si
  /// * [v2CancelIdPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> v2CancelIdPost({ 
    required String id,
    V2CancelIdPostRequest? v2CancelIdPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/cancel/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(V2CancelIdPostRequest);
      _bodyData = v2CancelIdPostRequest == null ? null : _serializers.serialize(v2CancelIdPostRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// SMS Gönderme (GET)
  /// Aynı mesajı birden çok numaraya HTTP(S) GET (Plain de denir) ile gönderir; yanıtı düz metin olarak döner. Farklı numaralara farklı mesaj göndermek için /v2/send.json (POST JSON) kullanın. Bu endpoint /v2/iys_consents.json ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek gönderebilirsiniz (burst 80).
  ///
  /// Parameters:
  /// * [username] - API kullanıcı adı
  /// * [password] - API şifresi
  /// * [dest] - Mesajın gönderileceği telefon numaraları. Birden fazla numara varsa virgül ile ayrılmalıdır. Yurt dışı numaralarının başına 00 veya + eklenmelidir. Örnek: 0049xxxxxxxx veya +49xxxxxxxx (+ işareti URL'lerde boşluk olarak yorumlanacağı için %2B olarak encode etmelisiniz, örn: %2B49xxxxxxxx). (zorunlu)
  /// * [msg] - Gönderilecek mesaj. Türkçe harf içerebilir. Maksimum uzunluğu Türkçe harf içeriyorsa 1043, içermiyorsa 1071 karakterdir (zorunlu). Encoding her zaman UTF8 beklenir.
  /// * [sourceAddr] - Gönderici kimliği (Başlık). Source_addr boş ise sistemde kayıtlı ilk başlığınız kullanılır.
  /// * [validFor] - Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer 00:01, Maksimum değer 48:00)
  /// * [datacoding] - Mesaj metni için kullanılacak karakter kodlaması. 0, 1 ve 2 değerlerini alabilir. Mesajda kullanılabilecek harfleri ve mesajın boy limitlerini belirler. Boş ise mesaj metnine bakılır, Türkçe harf varsa 1, yoksa 0 kaydedilir. Mesaj boyları tablosu için dokümanın sonuna bakınız. Yurt dışına SMS gönderiminde değeri 1 olarak gönderilmemelidir.:  * `0`   * `1`   
  /// * [isCommercial] - Opsiyonel. true | false değeri alır. Ticari gönderimlerde true olarak belirlemelisiniz.
  /// * [iysRecipientType] - BIREYSEL | TACIR değeri alır. Ticari gönderimlerde mutlaka belirlemelisiniz.
  /// * [sendAt] - Mesajın gönderilmesini istediğiniz tarih saat. '2015-02-20 16:06:00' şeklinde veya ISO 8601 standardındaki formatlar kabul edilir (http://en.wikipedia.org/wiki/ISO_8601). Boş ise mesaj hemen gönderilir.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [int] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<int>> v2SendGet({ 
    required String username,
    required String password,
    required String dest,
    required String msg,
    String? sourceAddr,
    String? validFor,
    int? datacoding,
    bool? isCommercial,
    String? iysRecipientType,
    String? sendAt,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/send';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'username': encodeQueryParameter(_serializers, username, const FullType(String)),
      r'password': encodeQueryParameter(_serializers, password, const FullType(String)),
      r'dest': encodeQueryParameter(_serializers, dest, const FullType(String)),
      r'msg': encodeQueryParameter(_serializers, msg, const FullType(String)),
      if (sourceAddr != null) r'source_addr': encodeQueryParameter(_serializers, sourceAddr, const FullType(String)),
      if (validFor != null) r'valid_for': encodeQueryParameter(_serializers, validFor, const FullType(String)),
      if (datacoding != null) r'datacoding': encodeQueryParameter(_serializers, datacoding, const FullType(int)),
      if (isCommercial != null) r'is_commercial': encodeQueryParameter(_serializers, isCommercial, const FullType(bool)),
      if (iysRecipientType != null) r'iys_recipient_type': encodeQueryParameter(_serializers, iysRecipientType, const FullType(String)),
      if (sendAt != null) r'send_at': encodeQueryParameter(_serializers, sendAt, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    int? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as int;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<int>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
