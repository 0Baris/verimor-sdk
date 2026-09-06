//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/api_util.dart';
import 'package:verimor_switch/src/model/get_extension200_response.dart';
import 'package:verimor_switch/src/model/list_agent_statuses200_response_inner.dart';
import 'package:verimor_switch/src/model/list_extensions200_response_inner.dart';
import 'package:verimor_switch/src/model/list_user_statuses200_response_inner.dart';

class KullaniciYonetimiApi {

  final Dio _dio;

  final Serializers _serializers;

  const KullaniciYonetimiApi(this._dio, this._serializers);

  /// Dahili için Rahatsız Etme (DND) Modunu Ayarlama
  /// Kullanıcının dahili numarası için Rahatsız Etme (DND) modunu açar veya kapatır. DND açıkken kullanıcıya gelen çağrılar engellenir.
  ///
  /// Parameters:
  /// * [id] - Dahili numara (örn: 1001)
  /// * [state] - DND durumu: \"on\" açmak için, \"off\" kapatmak için:  * `on`   * `off`   
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createDnd({ 
    required String id,
    required String state,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dnd/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'state': encodeQueryParameter(_serializers, state, const FullType(String)),
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

  /// Dahili için Token (Anahtar) Alma (IFrame Gömme için)
  /// Web telefonunu kendi uygulamanızda kullanmak için token oluşturur. Her açılışta ilgili dahili için token alınmalıdır. Token 1 gün geçerlidir.  Bulut Santral web telefonunu kendi web uygulamanızın içine iframe ile gömmek için kullanılır. Böylece kullanıcılarınız tek pencereyle çalışır ve iki ayrı sisteme login olmak zorunda kalmazlar.  Online İşlem Merkezi &#x3D;&gt; Abonelik İşlemleri &#x3D;&gt; Personel Hesapları sayfasında, web telefonunu kullanacak her dahili için bir personel hesabı açıp ilgili dahiliyi seçmiş olmalısınız. Karşılığında personel hesabı olmayan dahililer web telefonunu kullanamaz.
  ///
  /// Parameters:
  /// * [extension_] - Web telefonunu kullanacak dahili numarası
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createWebphoneToken({ 
    required String extension_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/webphone_tokens';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'extension': encodeQueryParameter(_serializers, extension_, const FullType(String)),
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

  /// Dahili Detayı
  /// Belirli bir dahilinin detaylarını getirmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/extensions/{id} adresi çağrılır.  ÖNEMLİ NOT: Yanıt, dahilinin SIP şifresini (&#x60;password&#x60;) düz metin olarak içerir. Bu yanıtı güvenli şekilde saklayın ve loglamayın.
  ///
  /// Parameters:
  /// * [id] - Dahili numarası
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetExtension200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetExtension200Response>> getExtension({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/extensions/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetExtension200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetExtension200Response),
      ) as GetExtension200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetExtension200Response>(
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

  /// MT Durumlarını ve Üyeliklerini Listeleme
  /// Müşteri Temsilcilerinizin durumunu ve hangi kuyruklara üye olduklarını listelemek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/agent_statuses adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner. Bu endpoint, /user_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada toplam 2 istek gönderebilirsiniz.
  ///
  /// Parameters:
  /// * [agent] - Belirli bir MT'nin durumunu öğrenmek için kullanılır
  /// * [queue] - Belirli kuyruktaki MT'lerin durumlarını listelemek için kullanılır
  /// * [status] - Belirli durumdaki MT'leri listelemek için kullanılır:  * `AVAILABLE`   * `TALKING`   * `LOGGED_OUT`   * `ON_BREAK`   
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ListAgentStatuses200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ListAgentStatuses200ResponseInner>>> listAgentStatuses({ 
    String? agent,
    String? queue,
    String? status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/agent_statuses';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (agent != null) r'agent': encodeQueryParameter(_serializers, agent, const FullType(String)),
      if (queue != null) r'queue': encodeQueryParameter(_serializers, queue, const FullType(String)),
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<ListAgentStatuses200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ListAgentStatuses200ResponseInner)]),
      ) as BuiltList<ListAgentStatuses200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ListAgentStatuses200ResponseInner>>(
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

  /// Dahili Listesi
  /// Santralinizdeki tüm dahilileri listelemek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/extensions adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde dahili listesi döner.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ListExtensions200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ListExtensions200ResponseInner>>> listExtensions({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/extensions';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<ListExtensions200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ListExtensions200ResponseInner)]),
      ) as BuiltList<ListExtensions200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ListExtensions200ResponseInner>>(
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

  /// Dahili Durumlarını Listeleme
  /// Dahililerinizin durumlarını listelemek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/user_statuses adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner. Bu endpoint, /agent_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada toplam 2 istek gönderebilirsiniz.
  ///
  /// Parameters:
  /// * [user] - Belirli bir Dahilinin durumunu öğrenmek için kullanılır
  /// * [status] - Belirli durumdaki Dahilileri listelemek için kullanılır:  * `AVAILABLE`   * `TALKING`   * `UNREGISTERED`   * `SS_DND`   
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ListUserStatuses200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ListUserStatuses200ResponseInner>>> listUserStatuses({ 
    String? user,
    String? status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/user_statuses';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (user != null) r'user': encodeQueryParameter(_serializers, user, const FullType(String)),
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<ListUserStatuses200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ListUserStatuses200ResponseInner)]),
      ) as BuiltList<ListUserStatuses200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ListUserStatuses200ResponseInner>>(
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
