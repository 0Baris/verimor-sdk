# verimor_whatsapp.api.MessagesApi

## Load the API package
```dart
import 'package:verimor_whatsapp/api.dart';
```

All URIs are relative to *https://wapi.verimor.com.tr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendOtpV1MessagesOtpPost**](MessagesApi.md#sendotpv1messagesotppost) | **POST** /v1/messages/otp | OTP / Kimlik Doğrulama Mesajı Gönder
[**sendUtilityV1MessagesUtilityPost**](MessagesApi.md#sendutilityv1messagesutilitypost) | **POST** /v1/messages/utility | Utility / İşlemsel Mesaj Gönder


# **sendOtpV1MessagesOtpPost**
> MessageResponse sendOtpV1MessagesOtpPost(templateMessageRequest, xApiKey)

OTP / Kimlik Doğrulama Mesajı Gönder

WhatsApp AUTHENTICATION kategorisindeki onaylı şablon ile OTP veya kimlik doğrulama mesajı gönderir. Yüksek öncelikli kuyruğa (`high_priority_otp`) yönlendirilir.

### Example
```dart
import 'package:verimor_whatsapp/api.dart';

final api = VerimorWhatsapp().getMessagesApi();
final TemplateMessageRequest templateMessageRequest = ; // TemplateMessageRequest | 
final String xApiKey = xApiKey_example; // String | 

try {
    final response = api.sendOtpV1MessagesOtpPost(templateMessageRequest, xApiKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MessagesApi->sendOtpV1MessagesOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateMessageRequest** | [**TemplateMessageRequest**](TemplateMessageRequest.md)|  | 
 **xApiKey** | **String**|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendUtilityV1MessagesUtilityPost**
> MessageResponse sendUtilityV1MessagesUtilityPost(templateMessageRequest, xApiKey)

Utility / İşlemsel Mesaj Gönder

WhatsApp UTILITY kategorisindeki onaylı şablon ile işlemsel mesaj gönderir (sipariş onayı, fatura bildirimi vb.).

### Example
```dart
import 'package:verimor_whatsapp/api.dart';

final api = VerimorWhatsapp().getMessagesApi();
final TemplateMessageRequest templateMessageRequest = ; // TemplateMessageRequest | 
final String xApiKey = xApiKey_example; // String | 

try {
    final response = api.sendUtilityV1MessagesUtilityPost(templateMessageRequest, xApiKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MessagesApi->sendUtilityV1MessagesUtilityPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateMessageRequest** | [**TemplateMessageRequest**](TemplateMessageRequest.md)|  | 
 **xApiKey** | **String**|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

