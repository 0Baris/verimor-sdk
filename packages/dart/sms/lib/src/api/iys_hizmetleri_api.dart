//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:verimor_sms/src/api_util.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_get200_response.dart';
import 'package:verimor_sms/src/model/v2_iys_campaigns_id_consents_get200_response.dart';
import 'package:verimor_sms/src/model/v2_iys_consents_json_post_request.dart';

class IysHizmetleriApi {

  final Dio _dio;

  final Serializers _serializers;

  const IysHizmetleriApi(this._dio, this._serializers);

  /// İYS Kampanyaları Listeleme
  /// &lt;p&gt;Gönderilen İYS izinleri ve İYS günlük vatandaş izin değişiklikleri için kampanyalar oluşturulur. Bu kampanyalar bu servisi kullanarak görülebilir.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Total&lt;/strong&gt;&amp;nbsp;değeri toplam kayıt sayısını verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip tekrar sorgulamalısınız.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpointlerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - Kullanıcı adı
  /// * [password] - Şifre
  /// * [offset] - Sayfalama başlangıcı
  /// * [limit] - Sayfalama limiti
  /// * [source_] - Kaynak (örn., list, csv, api, sms, web, iys):  * `list`   * `csv`   * `api`   * `sms`   * `web`   * `iys`   
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [V2IysCampaignsGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<V2IysCampaignsGet200Response>> v2IysCampaignsGet({ 
    required String username,
    required String password,
    int? offset,
    int? limit,
    String? source_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/iys/campaigns';
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
      if (source_ != null) r'source': encodeQueryParameter(_serializers, source_, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    V2IysCampaignsGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(V2IysCampaignsGet200Response),
      ) as V2IysCampaignsGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<V2IysCampaignsGet200Response>(
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

  /// İYS İzinleri Sorgulama
  /// &lt;p&gt;Gönderilen İYS izinleri ve İYS günlük vatandaş izin değişikliklerini kampanya idsi ile sorgulayabilirsiniz.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Total&lt;/strong&gt;&amp;nbsp;değeri toplam kayıt sayısını verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip tekrar sorgulamalısınız.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/status, /v2/balance gibi endpointlerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [username] - Kullanıcı adı
  /// * [password] - Şifre
  /// * [id] - Kampanya ID
  /// * [offset] - Sayfalama başlangıcı
  /// * [limit] - Sayfalama limiti
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [V2IysCampaignsIdConsentsGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<V2IysCampaignsIdConsentsGet200Response>> v2IysCampaignsIdConsentsGet({ 
    required String username,
    required String password,
    required int id,
    int? offset,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/iys/campaigns/{id}/consents'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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

    V2IysCampaignsIdConsentsGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(V2IysCampaignsIdConsentsGet200Response),
      ) as V2IysCampaignsIdConsentsGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<V2IysCampaignsIdConsentsGet200Response>(
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

  /// İzin Yönetimi
  /// &lt;p&gt;Ticari ileti göndermek için markalarınızı İYSye (İleti Yönetim Sistemi) kaydettirmiş olmalı ve&amp;nbsp;&lt;a href&#x3D;\&quot;https://oim.verimor.com.tr/headers\&quot; rel&#x3D;\&quot;nofollow\&quot;&gt;OİM Başlık Yönetiminden&lt;/a&gt;&amp;nbsp;ilgili başlığa İYS kodlarını girmiş olmanız gerekir. Bu işlemleri yaptıktan sonra müşterilerinizden aldığınız izinleri bu yöntemle İYSye bildirebilirsiniz.&lt;/p&gt;&lt;p&gt;Aşağıdaki örnekte olduğu gibi bir JSON string POST edilir.&lt;/p&gt;&lt;p&gt;Daha sonra istenirse, \&quot;İYS İZİNLERİ RAPORU\&quot; başlığı altındaki dökümandan faydalanılarak, gönderilen izinlerin durumları alınabilir.&lt;/p&gt;&lt;p&gt;Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek gönderebilirsiniz (burst 80).&lt;/p&gt;
  ///
  /// Parameters:
  /// * [v2IysConsentsJsonPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [int] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<int>> v2IysConsentsJsonPost({ 
    V2IysConsentsJsonPostRequest? v2IysConsentsJsonPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v2/iys_consents.json';
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
      const _type = FullType(V2IysConsentsJsonPostRequest);
      _bodyData = v2IysConsentsJsonPostRequest == null ? null : _serializers.serialize(v2IysConsentsJsonPostRequest, specifiedType: _type);

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
