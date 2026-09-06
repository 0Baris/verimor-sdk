//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:verimor_switch/src/api_util.dart';
import 'package:verimor_switch/src/model/list_contact_groups200_response_inner.dart';
import 'package:verimor_switch/src/model/list_contacts200_response.dart';

class RehberYonetimiApi {

  final Dio _dio;

  final Serializers _serializers;

  const RehberYonetimiApi(this._dio, this._serializers);

  /// Kişi Ekleme
  /// Yeni bir kişi oluşturur. Google Kişiler entegrasyonunun kapalı olması gerekir. POST metodu ile api.bulutsantralim.com/contacts adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde oluşturulan kişinin ID&#39;si döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [name] - Ad
  /// * [surname] - Soyad
  /// * [phone] - GSM numarası 1
  /// * [salutation] - Hitap şekli (Bay, Bayan vb.)
  /// * [tckn] - TC kimlik numarası
  /// * [description] - Açıklama
  /// * [phone1] - GSM numarası 2
  /// * [email] - E-posta adresi
  /// * [title] - Unvan
  /// * [phone2] - Ek telefon numarası
  /// * [fax] - Fax numarası
  /// * [gender] - Cinsiyet (Erkek: 'm', Kadın: 'f' olarak gönderilmeli)
  /// * [birthday] - Doğum günü (dd.mm.yyyy formatında olmalı, birthday_sms parametresi 'true' olarak gönderildiği zaman zorunludur)
  /// * [birthdaySms] - Doğum gününde otomatik mesaj gönderimi. Devreye girmesi için değeri 'true' olarak gönderilmeli
  /// * [weddingday] - Evlilik günü (dd.mm.yyyy formatında olmalı, weddingday_sms parametresi 'true' olarak gönderildiği zaman zorunludur)
  /// * [weddingdaySms] - Evlilik gününde otomatik mesaj gönderimi. Devreye girmesi için değeri 'true' olarak gönderilmeli
  /// * [address] - Adres
  /// * [note1] - Kişiyle ilgili notlar
  /// * [note2] - Kişiyle ilgili notlar 2
  /// * [note3] - Kişiyle ilgili notlar 3
  /// * [note4] - Kişiyle ilgili notlar 4
  /// * [companyName] - Firma adı
  /// * [monthlySmsDay] - Kişiye aylık otomatik SMS gönderilmesini istiyorsanız gönderilecek günü giriniz (1-31 arası)
  /// * [monthlySmsMessage] - Aylık SMS mesajı (monthly_sms_day parametresi girildiği zaman zorunludur)
  /// * [groupIds] - Kişinin eklenmesini istediğiniz grubun id değeri
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createContact({ 
    required String name,
    required String surname,
    required String phone,
    String? salutation,
    String? tckn,
    String? description,
    String? phone1,
    String? email,
    String? title,
    String? phone2,
    String? fax,
    String? gender,
    String? birthday,
    bool? birthdaySms,
    String? weddingday,
    bool? weddingdaySms,
    String? address,
    String? note1,
    String? note2,
    String? note3,
    String? note4,
    String? companyName,
    int? monthlySmsDay,
    String? monthlySmsMessage,
    BuiltList<int>? groupIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contacts';
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
      if (salutation != null) r'salutation': encodeQueryParameter(_serializers, salutation, const FullType(String)),
      r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      r'surname': encodeQueryParameter(_serializers, surname, const FullType(String)),
      if (tckn != null) r'tckn': encodeQueryParameter(_serializers, tckn, const FullType(String)),
      if (description != null) r'description': encodeQueryParameter(_serializers, description, const FullType(String)),
      r'phone': encodeQueryParameter(_serializers, phone, const FullType(String)),
      if (phone1 != null) r'phone1': encodeQueryParameter(_serializers, phone1, const FullType(String)),
      if (email != null) r'email': encodeQueryParameter(_serializers, email, const FullType(String)),
      if (title != null) r'title': encodeQueryParameter(_serializers, title, const FullType(String)),
      if (phone2 != null) r'phone2': encodeQueryParameter(_serializers, phone2, const FullType(String)),
      if (fax != null) r'fax': encodeQueryParameter(_serializers, fax, const FullType(String)),
      if (gender != null) r'gender': encodeQueryParameter(_serializers, gender, const FullType(String)),
      if (birthday != null) r'birthday': encodeQueryParameter(_serializers, birthday, const FullType(String)),
      if (birthdaySms != null) r'birthday_sms': encodeQueryParameter(_serializers, birthdaySms, const FullType(bool)),
      if (weddingday != null) r'weddingday': encodeQueryParameter(_serializers, weddingday, const FullType(String)),
      if (weddingdaySms != null) r'weddingday_sms': encodeQueryParameter(_serializers, weddingdaySms, const FullType(bool)),
      if (address != null) r'address': encodeQueryParameter(_serializers, address, const FullType(String)),
      if (note1 != null) r'note1': encodeQueryParameter(_serializers, note1, const FullType(String)),
      if (note2 != null) r'note2': encodeQueryParameter(_serializers, note2, const FullType(String)),
      if (note3 != null) r'note3': encodeQueryParameter(_serializers, note3, const FullType(String)),
      if (note4 != null) r'note4': encodeQueryParameter(_serializers, note4, const FullType(String)),
      if (companyName != null) r'company_name': encodeQueryParameter(_serializers, companyName, const FullType(String)),
      if (monthlySmsDay != null) r'monthly_sms_day': encodeQueryParameter(_serializers, monthlySmsDay, const FullType(int)),
      if (monthlySmsMessage != null) r'monthly_sms_message': encodeQueryParameter(_serializers, monthlySmsMessage, const FullType(String)),
      if (groupIds != null) r'group_ids': encodeCollectionQueryParameter<int>(_serializers, groupIds, const FullType(BuiltList, [FullType(int)]), format: ListFormat.multi,),
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

  /// Grup Oluşturma
  /// Yeni bir kişi grubu oluşturur. Google Kişiler entegrasyonunun kapalı olması gerekir. POST metodu ile api.bulutsantralim.com/contact_groups adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde oluşturulan grubun ID&#39;si döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [name] - Oluşturulacak grubun adı
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> createContactGroup({ 
    required String name,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contact_groups';
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
      r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
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

  /// Kişi Silme
  /// Mevcut bir kişiyi siler. Google Kişiler entegrasyonunun kapalı olması gerekir. DELETE metodu ile api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [id] - Silinecek kişinin ID'si
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deleteContact({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contacts/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

  /// Grup Silme
  /// Mevcut bir kişi grubunu siler. Google Kişiler entegrasyonunun kapalı olması gerekir. DELETE metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [id] - Silinecek grubun ID'si
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deleteContactGroup({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contact_groups/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

  /// Grup Listesine Erişim
  /// Santralinizdeki kişi gruplarının listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/contact_groups adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde gruplar listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ListContactGroups200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ListContactGroups200ResponseInner>>> listContactGroups({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contact_groups';
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

    BuiltList<ListContactGroups200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ListContactGroups200ResponseInner)]),
      ) as BuiltList<ListContactGroups200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ListContactGroups200ResponseInner>>(
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

  /// Kişiler Listesine Erişim
  /// Santralinizdeki kişiler listesine erişmek için kullanılır. HTTP GET metodu ile api.bulutsantralim.com/contacts adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde kişiler listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [page] - Listenin hangi sayfasında olduğunuz
  /// * [limit] - Listeyi sınırlayabilirsiniz. Varsayılan değer 10, minimum değer 10, maksimum değer 100
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ListContacts200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ListContacts200Response>> listContacts({ 
    int? page,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contacts';
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

    ListContacts200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ListContacts200Response),
      ) as ListContacts200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ListContacts200Response>(
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

  /// Kişi Güncelleme
  /// Mevcut bir kişiyi günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. Kişi eklerken kullanabileceğiniz tüm parametreler güncelleme için de geçerlidir. PATCH metodu ile api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [id] - Güncellenecek kişinin ID'si
  /// * [salutation] - Hitap şekli (Bay, Bayan vb.)
  /// * [name] - İsim
  /// * [surname] - Soyisim
  /// * [tckn] - T.C. Kimlik Numarası
  /// * [description] - Açıklama
  /// * [phone] - Ana telefon numarası
  /// * [phone1] - İkinci telefon numarası
  /// * [email] - E-posta adresi
  /// * [title] - Ünvan
  /// * [phone2] - Üçüncü telefon numarası
  /// * [fax] - Faks numarası
  /// * [gender] - Cinsiyet
  /// * [birthday] - Doğum tarihi
  /// * [birthdaySms] - Doğum günü SMS hatırlatması
  /// * [weddingday] - Evlilik yıldönümü tarihi
  /// * [weddingdaySms] - Evlilik yıldönümü SMS hatırlatması
  /// * [address] - Adres
  /// * [note1] - Not 1
  /// * [note2] - Not 2
  /// * [note3] - Not 3
  /// * [note4] - Not 4
  /// * [companyName] - Şirket adı
  /// * [monthlySmsDay] - Aylık SMS günü (1-31)
  /// * [monthlySmsMessage] - Aylık SMS mesajı
  /// * [groupIds] - Kişi grubu ID'leri dizisi
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> updateContact({ 
    required int id,
    String? salutation,
    String? name,
    String? surname,
    String? tckn,
    String? description,
    String? phone,
    String? phone1,
    String? email,
    String? title,
    String? phone2,
    String? fax,
    String? gender,
    String? birthday,
    bool? birthdaySms,
    String? weddingday,
    bool? weddingdaySms,
    String? address,
    String? note1,
    String? note2,
    String? note3,
    String? note4,
    String? companyName,
    int? monthlySmsDay,
    String? monthlySmsMessage,
    BuiltList<int>? groupIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contacts/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'PATCH',
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
      if (salutation != null) r'salutation': encodeQueryParameter(_serializers, salutation, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (surname != null) r'surname': encodeQueryParameter(_serializers, surname, const FullType(String)),
      if (tckn != null) r'tckn': encodeQueryParameter(_serializers, tckn, const FullType(String)),
      if (description != null) r'description': encodeQueryParameter(_serializers, description, const FullType(String)),
      if (phone != null) r'phone': encodeQueryParameter(_serializers, phone, const FullType(String)),
      if (phone1 != null) r'phone1': encodeQueryParameter(_serializers, phone1, const FullType(String)),
      if (email != null) r'email': encodeQueryParameter(_serializers, email, const FullType(String)),
      if (title != null) r'title': encodeQueryParameter(_serializers, title, const FullType(String)),
      if (phone2 != null) r'phone2': encodeQueryParameter(_serializers, phone2, const FullType(String)),
      if (fax != null) r'fax': encodeQueryParameter(_serializers, fax, const FullType(String)),
      if (gender != null) r'gender': encodeQueryParameter(_serializers, gender, const FullType(String)),
      if (birthday != null) r'birthday': encodeQueryParameter(_serializers, birthday, const FullType(String)),
      if (birthdaySms != null) r'birthday_sms': encodeQueryParameter(_serializers, birthdaySms, const FullType(bool)),
      if (weddingday != null) r'weddingday': encodeQueryParameter(_serializers, weddingday, const FullType(String)),
      if (weddingdaySms != null) r'weddingday_sms': encodeQueryParameter(_serializers, weddingdaySms, const FullType(bool)),
      if (address != null) r'address': encodeQueryParameter(_serializers, address, const FullType(String)),
      if (note1 != null) r'note1': encodeQueryParameter(_serializers, note1, const FullType(String)),
      if (note2 != null) r'note2': encodeQueryParameter(_serializers, note2, const FullType(String)),
      if (note3 != null) r'note3': encodeQueryParameter(_serializers, note3, const FullType(String)),
      if (note4 != null) r'note4': encodeQueryParameter(_serializers, note4, const FullType(String)),
      if (companyName != null) r'company_name': encodeQueryParameter(_serializers, companyName, const FullType(String)),
      if (monthlySmsDay != null) r'monthly_sms_day': encodeQueryParameter(_serializers, monthlySmsDay, const FullType(int)),
      if (monthlySmsMessage != null) r'monthly_sms_message': encodeQueryParameter(_serializers, monthlySmsMessage, const FullType(String)),
      if (groupIds != null) r'group_ids': encodeCollectionQueryParameter<int>(_serializers, groupIds, const FullType(BuiltList, [FullType(int)]), format: ListFormat.multi,),
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

  /// Grup Güncelleme
  /// Mevcut bir kişi grubunu günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. PATCH metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200 Status kodu ile mesajın Body&#39;sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body&#39;sinde hata mesajı döner.
  ///
  /// Parameters:
  /// * [id] - Güncellenecek grubun ID'si
  /// * [name] - Grubun yeni adı
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> updateContactGroup({ 
    required int id,
    required String name,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/contact_groups/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'PATCH',
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
      r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
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
