//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:verimor_sms/src/serializers.dart';
import 'package:verimor_sms/src/auth/api_key_auth.dart';
import 'package:verimor_sms/src/auth/basic_auth.dart';
import 'package:verimor_sms/src/auth/bearer_auth.dart';
import 'package:verimor_sms/src/auth/oauth.dart';
import 'package:verimor_sms/src/api/bakiye_sorgulamalari_api.dart';
import 'package:verimor_sms/src/api/basliklar_api.dart';
import 'package:verimor_sms/src/api/iys_hizmetleri_api.dart';
import 'package:verimor_sms/src/api/kara_liste_api.dart';
import 'package:verimor_sms/src/api/raporlar_api.dart';
import 'package:verimor_sms/src/api/sms_kampanyasi_api.dart';

class VerimorSms {
  static const String basePath = r'https://sms.verimor.com.tr';

  final Dio dio;
  final Serializers serializers;

  VerimorSms({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get BakiyeSorgulamalariApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BakiyeSorgulamalariApi getBakiyeSorgulamalariApi() {
    return BakiyeSorgulamalariApi(dio, serializers);
  }

  /// Get BasliklarApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BasliklarApi getBasliklarApi() {
    return BasliklarApi(dio, serializers);
  }

  /// Get IysHizmetleriApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IysHizmetleriApi getIysHizmetleriApi() {
    return IysHizmetleriApi(dio, serializers);
  }

  /// Get KaraListeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  KaraListeApi getKaraListeApi() {
    return KaraListeApi(dio, serializers);
  }

  /// Get RaporlarApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RaporlarApi getRaporlarApi() {
    return RaporlarApi(dio, serializers);
  }

  /// Get SmsKampanyasiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SmsKampanyasiApi getSmsKampanyasiApi() {
    return SmsKampanyasiApi(dio, serializers);
  }
}
