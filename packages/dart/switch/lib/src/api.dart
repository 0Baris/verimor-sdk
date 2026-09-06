//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:verimor_switch/src/serializers.dart';
import 'package:verimor_switch/src/auth/api_key_auth.dart';
import 'package:verimor_switch/src/auth/basic_auth.dart';
import 'package:verimor_switch/src/auth/bearer_auth.dart';
import 'package:verimor_switch/src/auth/oauth.dart';
import 'package:verimor_switch/src/api/anons_yonetimi_api.dart';
import 'package:verimor_switch/src/api/cagri_yonetimi_api.dart';
import 'package:verimor_switch/src/api/crm_entegrasyonu_api.dart';
import 'package:verimor_switch/src/api/dis_numaralar_yonetimi_api.dart';
import 'package:verimor_switch/src/api/faks_yonetimi_api.dart';
import 'package:verimor_switch/src/api/kara_liste_yonetimi_api.dart';
import 'package:verimor_switch/src/api/kullanici_yonetimi_api.dart';
import 'package:verimor_switch/src/api/kuyruk_yonetimi_api.dart';
import 'package:verimor_switch/src/api/otomatik_arama_kampanyalari_api.dart';
import 'package:verimor_switch/src/api/raporlama_ve_kayitlar_api.dart';
import 'package:verimor_switch/src/api/rehber_yonetimi_api.dart';

class VerimorSwitch {
  static const String basePath = r'https://api.bulutsantralim.com';

  final Dio dio;
  final Serializers serializers;

  VerimorSwitch({
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

  /// Get AnonsYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AnonsYonetimiApi getAnonsYonetimiApi() {
    return AnonsYonetimiApi(dio, serializers);
  }

  /// Get CagriYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CagriYonetimiApi getCagriYonetimiApi() {
    return CagriYonetimiApi(dio, serializers);
  }

  /// Get CrmEntegrasyonuApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CrmEntegrasyonuApi getCrmEntegrasyonuApi() {
    return CrmEntegrasyonuApi(dio, serializers);
  }

  /// Get DisNumaralarYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DisNumaralarYonetimiApi getDisNumaralarYonetimiApi() {
    return DisNumaralarYonetimiApi(dio, serializers);
  }

  /// Get FaksYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FaksYonetimiApi getFaksYonetimiApi() {
    return FaksYonetimiApi(dio, serializers);
  }

  /// Get KaraListeYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  KaraListeYonetimiApi getKaraListeYonetimiApi() {
    return KaraListeYonetimiApi(dio, serializers);
  }

  /// Get KullaniciYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  KullaniciYonetimiApi getKullaniciYonetimiApi() {
    return KullaniciYonetimiApi(dio, serializers);
  }

  /// Get KuyrukYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  KuyrukYonetimiApi getKuyrukYonetimiApi() {
    return KuyrukYonetimiApi(dio, serializers);
  }

  /// Get OtomatikAramaKampanyalariApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OtomatikAramaKampanyalariApi getOtomatikAramaKampanyalariApi() {
    return OtomatikAramaKampanyalariApi(dio, serializers);
  }

  /// Get RaporlamaVeKayitlarApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RaporlamaVeKayitlarApi getRaporlamaVeKayitlarApi() {
    return RaporlamaVeKayitlarApi(dio, serializers);
  }

  /// Get RehberYonetimiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RehberYonetimiApi getRehberYonetimiApi() {
    return RehberYonetimiApi(dio, serializers);
  }
}
