//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:verimor_switch/src/api_util.dart';
import 'package:verimor_switch/src/model/get_cdr200_response.dart';
import 'package:verimor_switch/src/model/get_cdrs200_response.dart';
import 'package:verimor_switch/src/model/get_voicemail_messages200_response.dart';

class RaporlamaVeKayitlarApi {

  final Dio _dio;

  final Serializers _serializers;

  const RaporlamaVeKayitlarApi(this._dio, this._serializers);

  /// Ses Kaydı için Geçici URL Oluşturma
  /// Santralinizdeki veya Google Drive&#39;a aktarılmış ses kayıtlarınıza erişmek için geçici bir URL oluşturur. URL 1 saat geçerlidir ve dakikada en fazla 5 istek yapılabilir.
  ///
  /// Parameters:
  /// * [callUuid] - URL'ini istediğiniz ses kaydına ait çağrı UUID'si
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createRecordingUrl({ 
    required String callUuid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/recording_url';
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
      r'call_uuid': encodeQueryParameter(_serializers, callUuid, const FullType(String)),
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

  /// Telesekreter Ses Kaydı için Geçici URL Oluşturma
  /// CDR&#39;ın ses kaydına erişimde olduğu gibi, bu ses kayıtlarına erişim de iki aşamalıdır. Birinci aşamada URL elde edilir. İkinci aşamada ise o URL&#39;den ses dosyası indirilir/dinlenir. HTTP POST metodu ile api.bulutsantralim.com adresine parametreler gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde ses kaydına ait olan bir URL döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner. URL yaşam süresi 1 saattir.
  ///
  /// Parameters:
  /// * [uuid] - URL'ini istediğiniz telesekreter mesajına ait uuid
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createVoicemailRecordingUrl({ 
    required String uuid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/voicemail_recording_url';
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
      r'uuid': encodeQueryParameter(_serializers, uuid, const FullType(String)),
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

  /// Belirli Bir Çağrının Detaylı CDR Kaydı
  /// Belirli bir çağrıya ait tüm detayları ve çağrı akışını getirir. Bu endpoint dakikada en fazla 6 istek ile sınırlıdır.
  ///
  /// Parameters:
  /// * [id] - Çağrı UUID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetCdr200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetCdr200Response>> getCdr({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/cdrs/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
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

    GetCdr200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetCdr200Response),
      ) as GetCdr200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetCdr200Response>(
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

  /// Çağrı Detay Kayıtları (CDR) Listesi
  /// Farklı filtrelerle ve sayfalama ile çağrı detay kayıtlarını (CDR) listeler. Bu endpoint dakikada en fazla 6 istek ile sınırlıdır.
  ///
  /// Parameters:
  /// * [startStampFrom] - Başlangıç tarihi/zamanı (ISO formatı)
  /// * [startStampTo] - Bitiş tarihi/zamanı (ISO formatı)
  /// * [recordingPresent] - Kayıt durumu filtresi:  * `true`   * `false`   * `deleted`   
  /// * [direction] - Çağrı yönü filtresi
  /// * [callerIdNumber] - Arayan numara filtresi
  /// * [destinationNumber] - Hedef numara filtresi
  /// * [missed] - Cevapsız çağrı filtresi
  /// * [queue] - Kuyruk adı filtresi
  /// * [page] - Sayfa numarası (varsayılan: 1)
  /// * [limit] - Sayfa başına kayıt sayısı
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetCdrs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetCdrs200Response>> getCdrs({ 
    String? startStampFrom,
    String? startStampTo,
    String? recordingPresent,
    String? direction,
    String? callerIdNumber,
    String? destinationNumber,
    String? missed,
    String? queue,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/cdrs';
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
      if (startStampFrom != null) r'start_stamp_from': encodeQueryParameter(_serializers, startStampFrom, const FullType(String)),
      if (startStampTo != null) r'start_stamp_to': encodeQueryParameter(_serializers, startStampTo, const FullType(String)),
      if (recordingPresent != null) r'recording_present': encodeQueryParameter(_serializers, recordingPresent, const FullType(String)),
      if (direction != null) r'direction': encodeQueryParameter(_serializers, direction, const FullType(String)),
      if (callerIdNumber != null) r'caller_id_number': encodeQueryParameter(_serializers, callerIdNumber, const FullType(String)),
      if (destinationNumber != null) r'destination_number': encodeQueryParameter(_serializers, destinationNumber, const FullType(String)),
      if (missed != null) r'missed': encodeQueryParameter(_serializers, missed, const FullType(String)),
      if (queue != null) r'queue': encodeQueryParameter(_serializers, queue, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
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

    GetCdrs200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetCdrs200Response),
      ) as GetCdrs200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetCdrs200Response>(
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

  /// Telesekreter Arama Kayıtlarına Erişim
  /// Santralinizdeki telesekreter arama kayıtlarına ve ses kayıtlarına erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [startStampFrom] - Mesaj bırakma tarihi yazdığınız tarihden sonra olan çağrıları listeler
  /// * [startStampTo] - Mesaj bırakma tarihi yazdığınız tarihe kadar olan çağrıları listeler. Tarih aralığı 31 günden uzun olamaz
  /// * [read] - Değeri \"true\" olarak gönderilirse okunmuş mesajları, değeri \"false\" olarak gönderilirse henüz okunmamış mesajları listeler:  * `true`   * `false`   
  /// * [userNumber] - Mesajın bırakıldığı dahilinin numarası
  /// * [uuid] - Mesajın (veya ilgili CDR kaydının) kayıt numarası
  /// * [page] - Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz
  /// * [limit] - Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetVoicemailMessages200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetVoicemailMessages200Response>> getVoicemailMessages({ 
    String? startStampFrom,
    String? startStampTo,
    String? read,
    String? userNumber,
    String? uuid,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/voicemail_messages';
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
      if (startStampFrom != null) r'start_stamp_from': encodeQueryParameter(_serializers, startStampFrom, const FullType(String)),
      if (startStampTo != null) r'start_stamp_to': encodeQueryParameter(_serializers, startStampTo, const FullType(String)),
      if (read != null) r'read': encodeQueryParameter(_serializers, read, const FullType(String)),
      if (userNumber != null) r'user_number': encodeQueryParameter(_serializers, userNumber, const FullType(String)),
      if (uuid != null) r'uuid': encodeQueryParameter(_serializers, uuid, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
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

    GetVoicemailMessages200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetVoicemailMessages200Response),
      ) as GetVoicemailMessages200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetVoicemailMessages200Response>(
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
