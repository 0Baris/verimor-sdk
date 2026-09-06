//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:verimor_switch/src/api_util.dart';
import 'package:verimor_switch/src/model/list_fax_orders200_response.dart';
import 'package:verimor_switch/src/model/list_fdrs200_response.dart';

class FaksYonetimiApi {

  final Dio _dio;

  final Serializers _serializers;

  const FaksYonetimiApi(this._dio, this._serializers);

  /// Faks Belgesi URL&#39;si İsteme
  /// Başarıyla iletilen faks belgesi için geçici indirme URL&#39;si oluşturur. HTTP POST metodu ile api.bulutsantralim.com/fax_document_url/ adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde belgeye ait URL döner. URL yaşam süresi 1 saattir ve PDF versiyonuna erişim sağlar. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [callUuid] - URL'ini istediğiniz faks belgesine ait uuid
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createFaxDocumentUrl({ 
    required String callUuid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fax_document_url';
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

  /// Faks Gönderimi
  /// Faks göndermek için dosyasının içeriğinin base64 ile kodlanmış halini ve diğer bilgileri POST etmeniz yeterlidir. Uygulamalarınız üzerinden faks göndermek için api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 status kodu ile mesajın Body&#39;sinde faks ID döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [remoteStationId] - Alıcı numara
  /// * [filedata] - Gönderilecek dosyanın içeriğinin base64 ile kodlanmış hali (data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA... formatında)
  /// * [localStationId] - Gönderici numara (zorunlu değil)
  /// * [localStationHeader] - Gönderici başlığı
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createFaxOrder({ 
    required String remoteStationId,
    required String filedata,
    String? localStationId,
    String? localStationHeader,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fax_orders';
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
      if (localStationId != null) r'local_station_id': encodeQueryParameter(_serializers, localStationId, const FullType(String)),
      if (localStationHeader != null) r'local_station_header': encodeQueryParameter(_serializers, localStationHeader, const FullType(String)),
      r'remote_station_id': encodeQueryParameter(_serializers, remoteStationId, const FullType(String)),
      r'filedata': encodeQueryParameter(_serializers, filedata, const FullType(String)),
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

  /// Faks Belgesi İndirme/Görüntüleme
  /// Bu servis, daha önce &#39;Faks Belgesi URL&#39;si İsteme&#39; ile elde edilen geçici URL üzerinden faks belgesini indirmenizi veya görüntülemenizi sağlar.  URL, 1 saat geçerlidir. Herhangi bir kimlik doğrulama gerekmez; güvenlik, URL&#39;nin kendisinde bulunan tek kullanımlık ticket kodu ile sağlanır.  Başarılı isteklerde HTTP 200 ile belge dosyası (PDF/TIFF) döner. Hatalı veya süresi dolmuş ticket ile yapılan isteklerde uygun hata mesajı ve HTTP 400 döner.
  ///
  /// Parameters:
  /// * [id] - Faks belgesi indirme/görüntüleme için gerekli ticket kodu (genellikle \"F\" ile başlar)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> downloadFaxDocument({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fax_document/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Tamamlanmamış Faks Gönderimlerinin Listesi
  /// Santraldaki tamamlanmamış faks gönderimlerinin listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde faks gönderim kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [page] - Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz
  /// * [limit] - Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ListFaxOrders200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ListFaxOrders200Response>> listFaxOrders({ 
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fax_orders';
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

    ListFaxOrders200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ListFaxOrders200Response),
      ) as ListFaxOrders200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ListFaxOrders200Response>(
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

  /// Faks Listesine Erişim
  /// Santralinizdeki faks detay kayıtlarının listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/fdrs adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde faks kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner. Tarih aralığı 31 günden uzun olamaz.
  ///
  /// Parameters:
  /// * [startStampFrom] - Başlama tarihi yazdığınız tarihten sonra olan çağrıları listeler. \"2017-08-03 12:30:32 UTC\" formatında olmalı
  /// * [startStampTo] - Başlama tarihi yazdığınız tarihe kadar olan çağrıları listeler. \"2017-08-03 12:30:32 UTC\" formatında olmalı. Tarih aralığı 31 günden uzun olamaz
  /// * [direction] - Değeri \"inbound\" olarak gönderilirse gelen, değeri \"outbound\" olarak gönderilirse giden, değeri \"internal\" olarak gönderilirse santral içi faksları listeler:  * `outbound`   * `inbound`   * `internal`   
  /// * [callerIdNumber] - Faks gönderen numara
  /// * [originalDestination] - Faks alan numara
  /// * [success] - Değeri \"true\" olarak gönderilirse başarılı, değeri \"false\" olarak gönderilirse başarısız faksları listeler
  /// * [page] - Liste limite göre sayfalanıyor. \"total_pages\" değerinden maksimum kaç sayfa olduğunu belirleyerek görmek istediğiniz sayfanın numarasını girebilirsiniz
  /// * [limit] - Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ListFdrs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ListFdrs200Response>> listFdrs({ 
    String? startStampFrom,
    String? startStampTo,
    String? direction,
    String? callerIdNumber,
    String? originalDestination,
    String? success,
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fdrs';
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
      if (direction != null) r'direction': encodeQueryParameter(_serializers, direction, const FullType(String)),
      if (callerIdNumber != null) r'caller_id_number': encodeQueryParameter(_serializers, callerIdNumber, const FullType(String)),
      if (originalDestination != null) r'original_destination': encodeQueryParameter(_serializers, originalDestination, const FullType(String)),
      if (success != null) r'success': encodeQueryParameter(_serializers, success, const FullType(String)),
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

    ListFdrs200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ListFdrs200Response),
      ) as ListFdrs200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ListFdrs200Response>(
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
