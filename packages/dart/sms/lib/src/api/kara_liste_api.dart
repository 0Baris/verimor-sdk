//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:verimor_sms/src/api_util.dart';
import 'package:verimor_sms/src/model/v2_blacklists_get200_response.dart';

class KaraListeApi {

  final Dio _dio;

  final Serializers _serializers;

  const KaraListeApi(this._dio, this._serializers);

  /// Kara Liste Görüntüleme
  /// &lt;p&gt;Kara listedeki numaraları listelemek için kullanılır.&lt;/p&gt;&lt;p&gt;Bu endpoint, kullanıcı adı ve şifre ile kimlik doğrulaması gerektirir.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Total&lt;/strong&gt;&amp;nbsp;değeri toplam kayıt sayısını verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip tekrar sorgulamalısınız.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpoint&#39;lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - Kullanıcı adı
  /// * [password] - Şifre
  /// * [offset] - Sayfalama Taban Değeri
  /// * [limit] - Sayfa Kayıt Sayısı
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [V2BlacklistsGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<V2BlacklistsGet200Response>> v2BlacklistsGet({ 
    required String username,
    required String password,
    int? offset,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/blacklists';
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
      if (offset != null) r'offset': encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    V2BlacklistsGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(V2BlacklistsGet200Response),
      ) as V2BlacklistsGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<V2BlacklistsGet200Response>(
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

  /// Kara Listeden Silme
  /// &lt;p&gt;Kara listeden numara(lar)ı silmek için kullanılır.&lt;/p&gt;&lt;p&gt;Bu endpoint, kullanıcı adı ve şifre ile kimlik doğrulaması gerektirir.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpoint&#39;lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - kullanıcı adı
  /// * [password] - Şifre
  /// * [id] - Kara listeden silinmesi istenen numaralar, virgülle ayrılmış liste olarak girilmelidir. Örnek: 905111111111,905111111112
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> v2BlacklistsIdDelete({ 
    required String username,
    required String password,
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/blacklists/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
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

  /// Kara Liste Ekleme
  /// &lt;p&gt;Kara listeye numara eklemek için kullanılır.&lt;/p&gt;&lt;p&gt;Bu endpoint, kullanıcı adı ve şifre ile kimlik doğrulaması gerektirir.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpoint&#39;lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - Kullanıcı adı
  /// * [password] - Şifre
  /// * [phones] - Kara listeye eklenmeleri istenen numaralar, virgülle ayrılmış liste olarak girilmelidir. Örnek: 905111111111,905111111112
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> v2BlacklistsPost({ 
    required String username,
    required String password,
    required String phones,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/blacklists';
    final _options = Options(
      method: r'POST',
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
      r'phones': encodeQueryParameter(_serializers, phones, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
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

}
