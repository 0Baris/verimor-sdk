//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:verimor_sms/src/api_util.dart';
import 'package:verimor_sms/src/model/get_sms_status200_response_inner.dart';
import 'package:verimor_sms/src/model/v2_inbound_messages_get200_response_inner.dart';

class RaporlarApi {

  final Dio _dio;

  final Serializers _serializers;

  const RaporlarApi(this._dio, this._serializers);

  /// Rapor Sorgulama (API ID)
  /// &lt;p&gt;Gönderim Raporu almak için kullanılır.&lt;/p&gt;&lt;ul dir&#x3D;\&quot;auto\&quot;&gt;&lt;li&gt;id: Kampanya&#39;ya API tarafından verilen ID&#39;dir. id veya custom_id zorunludur.&lt;/li&gt;&lt;li&gt;custom_id: Kampanya&#39;ya sizin tarafından verilen ID&#39;dir. id veya custom_id zorunludur.&lt;/li&gt;&lt;li&gt;dest: Zorunlu değil. Kampanya&#39;da belirli telefon numaralarına gönderilmiş mesajları sorgular.&lt;/li&gt;&lt;li&gt;greater_than: Verilen message_id&#39;den büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id&#39;sini vererek ikinci bir sorgu yapmalısınız.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Bu endpoint /v2/balance, /v2/headers gibi endpoint&#39;lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - kullanıcı adı
  /// * [password] - Şifre
  /// * [id] - Kampanya ID'si. Bu parametre zorunludur. Kampanya ID'si, API'nin gönderim sırasında ürettiği ID'dir. Bu ID ile sorgulama yapabilirsiniz.
  /// * [dest] - Zorunlu değil. Kampanya'da belirli telefon numaralarına gönderilmiş mesajları sorgular
  /// * [greaterThan] - Verilen message_id'den büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız.
  /// * [customId] - Kampanya Özel ID'si. Bu parametre zorunludur. Kampanya Özel ID'si, API'nin gönderim sırasında ürettiği Özel ID'dir. Bu ID ile sorgulama yapabilirsiniz.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<GetSmsStatus200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<GetSmsStatus200ResponseInner>>> getSmsStatus({ 
    required String username,
    required String password,
    int? id,
    String? dest,
    int? greaterThan,
    String? customId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/status';
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
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(int)),
      if (dest != null) r'dest': encodeQueryParameter(_serializers, dest, const FullType(String)),
      if (greaterThan != null) r'greater_than': encodeQueryParameter(_serializers, greaterThan, const FullType(int)),
      if (customId != null) r'custom_id': encodeQueryParameter(_serializers, customId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<GetSmsStatus200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(GetSmsStatus200ResponseInner)]),
      ) as BuiltList<GetSmsStatus200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<GetSmsStatus200ResponseInner>>(
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

  /// Gelen SMS Sorgulama
  /// &lt;p&gt;Bu API, gelen SMS&#39;lerinizi sorgulamak için kullanılır.&lt;/p&gt;&lt;p&gt;API, hesabınıza gelen SMS&#39;leri iki farklı yöntemle teslim edebilir. Bunlar PUSH ve GET yöntemleridir.&lt;/p&gt;&lt;p&gt;Bu servis&amp;nbsp;&lt;strong&gt;HTTP GET ile Gelen SMS Alımı&lt;/strong&gt;&amp;nbsp;hizmetini sağlar. PUSH ile Gelen SMS Alımı konusu için Inbound Bölümü altındaki ilgili başlığa bakabilirsiniz.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Sorgulama, belirli bir zaman aralığında veya belirli bir message_id&#39;den büyük mesajları almak için yapılabilir.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpoint&#39;lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - Kullanıcı adı
  /// * [password] - Şifre
  /// * [fromTime] - Sorgulanacak zaman aralığının başlangıcı (YYYY-MM-DD HH:MM:SS)
  /// * [toTime] - Sorgulanacak zaman aralığının bitişi (YYYY-MM-DD HH:MM:SS)
  /// * [greaterThan] - Verilen message_id'den büyük mesajları sorgular. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini vererek ikinci bir sorgu yapmalısınız.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<V2InboundMessagesGet200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<V2InboundMessagesGet200ResponseInner>>> v2InboundMessagesGet({ 
    required String username,
    required String password,
    String? fromTime,
    String? toTime,
    int? greaterThan,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/inbound_messages';
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
      if (fromTime != null) r'from_time': encodeQueryParameter(_serializers, fromTime, const FullType(String)),
      if (toTime != null) r'to_time': encodeQueryParameter(_serializers, toTime, const FullType(String)),
      if (greaterThan != null) r'greater_than': encodeQueryParameter(_serializers, greaterThan, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<V2InboundMessagesGet200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(V2InboundMessagesGet200ResponseInner)]),
      ) as BuiltList<V2InboundMessagesGet200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<V2InboundMessagesGet200ResponseInner>>(
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
