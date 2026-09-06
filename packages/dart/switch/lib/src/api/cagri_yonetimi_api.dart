//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:verimor_switch/src/api_util.dart';
import 'package:verimor_switch/src/model/answer_call_post_request.dart';
import 'package:verimor_switch/src/model/originate_call_post_request.dart';

class CagriYonetimiApi {

  final Dio _dio;

  final Serializers _serializers;

  const CagriYonetimiApi(this._dio, this._serializers);

  /// Çağrıyı Cevaplama (GET)
  /// manual_answer&#x3D;true parametresi ile başlatılmış ve dahili telefonda çalmakta olan bir çağrıyı API üzerinden cevaplamak için kullanılır. HTTP GET metodu ile /answer/{id} çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200 ile +OK veya çağrıya ilişkin bilgi döner. Başarısız olduğunda ilgili hata mesajı body&#39;de döner.
  ///
  /// Parameters:
  /// * [id] - Cevaplanacak çağrının UUID'si
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> answerCall({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/answer/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
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

  /// Çağrıyı Cevaplama (POST)
  /// manual_answer&#x3D;true parametresi ile başlatılmış bir çağrıyı cevaplamak için HTTP POST metodu ile /answer endpoint&#39;i id parametresi ile çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200 döner.
  ///
  /// Parameters:
  /// * [answerCallPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> answerCallPost({ 
    required AnswerCallPostRequest answerCallPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/answer';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AnswerCallPostRequest);
      _bodyData = _serializers.serialize(answerCallPostRequest, specifiedType: _type);

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

  /// Çağrı Bağlama
  /// Uygulamalarınız üzerinden iki dış numarayı (örn. cep telefonu) arayıp birbiriyle görüştürmek için kullanılır. Kullanım alanları: Müşteriniz ve saha personelinizi görüştürmek istiyorsunuz fakat bilgi güvenliği (örn. KVKK) nedeniyle cep telefonu numaralarının görünmesini istemiyorsunuz (numara maskeleme/gizleme). Müşteriniz ve saha personelinizin yaptığı görüşmeleri raporlamak ve ses kayıtlarını tutmak istiyorsunuz. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100&#39;dür.
  ///
  /// Parameters:
  /// * [source_] - İlk olarak bu numara aranır, telefon açılınca destination aranır (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında)
  /// * [destination] - İkinci aranacak numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında)
  /// * [callerId] - İki tarafı da ararken kullanılacak dış numara (908505320000 formatında. Bu parametre verilmezse 1000 dahilisinde seçili olan dış no kullanılacaktır)
  /// * [timeout] - Telefon çaldırma süresi. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29
  /// * [announcementToCaller] - Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz
  /// * [announcementToCallee] - Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz
  /// * [recordingEnabled] - Görüşmenin kaydedilmesini istemiyorsanız false verin. Varsayılan olarak true kabul edilir
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createBridge({ 
    required String source_,
    required String destination,
    String? callerId,
    int? timeout,
    int? announcementToCaller,
    int? announcementToCallee,
    bool? recordingEnabled,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/bridge';
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
      r'source': encodeQueryParameter(_serializers, source_, const FullType(String)),
      r'destination': encodeQueryParameter(_serializers, destination, const FullType(String)),
      if (callerId != null) r'caller_id': encodeQueryParameter(_serializers, callerId, const FullType(String)),
      if (timeout != null) r'timeout': encodeQueryParameter(_serializers, timeout, const FullType(int)),
      if (announcementToCaller != null) r'announcement_to_caller': encodeQueryParameter(_serializers, announcementToCaller, const FullType(int)),
      if (announcementToCallee != null) r'announcement_to_callee': encodeQueryParameter(_serializers, announcementToCallee, const FullType(int)),
      if (recordingEnabled != null) r'recording_enabled': encodeQueryParameter(_serializers, recordingEnabled, const FullType(bool)),
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

  /// Çağrıyı Sonlandırma
  /// Uygulamalarınız üzerinden santralde devam eden bir çağrıyı sonlandırmak için kullanılır. HTTP GET metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde +OK döner.
  ///
  /// Parameters:
  /// * [id] - Sonlandırmak istediğiniz çağrının UUID'si
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> hangupCall({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/hangup/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
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

  /// Çağrıyı Sessize Alma / Sesli Yapma
  /// Santralde devam eden bir çağrıyı sessize almak veya sesli yapmak için kullanılır. HTTP GET metodu ile çağrı UUID&#39;si ve state parametresi kullanılarak mute işlemi gerçekleştirilir.
  ///
  /// Parameters:
  /// * [id] - Sessize almak istediğiniz çağrının UUID'si
  /// * [state] - Mute modunu açmak için \"on\", kapatmak için \"off\" olarak gönderilir:  * `on`   * `off`   
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> muteCall({ 
    required String id,
    required String state,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/mute/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
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

  /// Çağrı Başlatma (GET)
  /// Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde call_uuid döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.  Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100&#39;dür.  HAZIRLIK: Online İşlem Merkezi &#x3D;&gt; Bulut Santralim &#x3D;&gt; Santral Ayarlarım menüsü altından API Anahtarınızı (key) öğrenmelisiniz.
  ///
  /// Parameters:
  /// * [extension_] - Aramanın bağlanacağı dahili numaradır.
  /// * [destination] - Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında olmalı).
  /// * [callerId] - Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide seçili olan dış no kullanılacaktır).
  /// * [manualAnswer] - Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır ve karşı numara aranır).
  /// * [timeout] - Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur.
  /// * [announcementToCallee] - Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
  /// * [announcementToCaller] - Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem Merkezi üzerinden görebilirsiniz.
  /// * [customCallType] - Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak gönderebilirsiniz.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> originateCall({ 
    required String extension_,
    required String destination,
    String? callerId,
    bool? manualAnswer,
    int? timeout,
    int? announcementToCallee,
    int? announcementToCaller,
    String? customCallType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/originate';
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
      r'extension': encodeQueryParameter(_serializers, extension_, const FullType(String)),
      r'destination': encodeQueryParameter(_serializers, destination, const FullType(String)),
      if (callerId != null) r'caller_id': encodeQueryParameter(_serializers, callerId, const FullType(String)),
      if (manualAnswer != null) r'manual_answer': encodeQueryParameter(_serializers, manualAnswer, const FullType(bool)),
      if (timeout != null) r'timeout': encodeQueryParameter(_serializers, timeout, const FullType(int)),
      if (announcementToCallee != null) r'announcement_to_callee': encodeQueryParameter(_serializers, announcementToCallee, const FullType(int)),
      if (announcementToCaller != null) r'announcement_to_caller': encodeQueryParameter(_serializers, announcementToCaller, const FullType(int)),
      if (customCallType != null) r'custom_call_type': encodeQueryParameter(_serializers, customCallType, const FullType(String)),
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

  /// Çağrı Başlatma (POST)
  /// Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP POST metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde call_uuid döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100&#39;dür.
  ///
  /// Parameters:
  /// * [originateCallPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> originateCallPost({ 
    required OriginateCallPostRequest originateCallPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/originate';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(OriginateCallPostRequest);
      _bodyData = _serializers.serialize(originateCallPostRequest, specifiedType: _type);

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

  /// Çağrıyı Aktarma (GET)
  /// Santralde devam eden bir çağrıyı aktarmak için kullanılır. HTTP GET metodu ile çağrı UUID&#39;si ve hedef dahili kullanılarak aktarım işlemi gerçekleştirilir. Yeni çağrı başlattığınızda API&#39;den dönen UUID&#39;yi kullanabilirsiniz veya Olay Bildirme ile gelen UUID&#39;leri kullanabilirsiniz.
  ///
  /// Parameters:
  /// * [id] - Aktarmak istediğiniz çağrının UUID'si
  /// * [userNumber] - Aktarmak istediğiniz, bağlı kullanıcılarınızdan birinin dahili numarası
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> transferCall({ 
    required String id,
    required String userNumber,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/transfer/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
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
      r'user_number': encodeQueryParameter(_serializers, userNumber, const FullType(String)),
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

  /// Çağrıyı Aktarma (POST)
  /// Santralde devam eden bir çağrıyı başka bir dahiliye aktarmak için kullanılır. POST metodu ile çağrı UUID&#39;si ve hedef dahili kullanılarak aktarım işlemi gerçekleştirilir.
  ///
  /// Parameters:
  /// * [id] - Aktarmak istediğiniz çağrının UUID'si
  /// * [userNumber] - Aktarmak istediğiniz, bağlı kullanıcılarınızdan birinin dahili numarası
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> transferCallPost({ 
    required String id,
    required String userNumber,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/transfer';
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
      r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      r'user_number': encodeQueryParameter(_serializers, userNumber, const FullType(String)),
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
