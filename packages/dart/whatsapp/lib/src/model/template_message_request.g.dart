// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_message_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateMessageRequest extends TemplateMessageRequest {
  @override
  final String to;
  @override
  final String templateName;
  @override
  final String? language;
  @override
  final BuiltList<String>? parameters;
  @override
  final bool? useTenantQueue;

  factory _$TemplateMessageRequest(
          [void Function(TemplateMessageRequestBuilder)? updates]) =>
      (TemplateMessageRequestBuilder()..update(updates))._build();

  _$TemplateMessageRequest._(
      {required this.to,
      required this.templateName,
      this.language,
      this.parameters,
      this.useTenantQueue})
      : super._();
  @override
  TemplateMessageRequest rebuild(
          void Function(TemplateMessageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateMessageRequestBuilder toBuilder() =>
      TemplateMessageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateMessageRequest &&
        to == other.to &&
        templateName == other.templateName &&
        language == other.language &&
        parameters == other.parameters &&
        useTenantQueue == other.useTenantQueue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, templateName.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, useTenantQueue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateMessageRequest')
          ..add('to', to)
          ..add('templateName', templateName)
          ..add('language', language)
          ..add('parameters', parameters)
          ..add('useTenantQueue', useTenantQueue))
        .toString();
  }
}

class TemplateMessageRequestBuilder
    implements Builder<TemplateMessageRequest, TemplateMessageRequestBuilder> {
  _$TemplateMessageRequest? _$v;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _templateName;
  String? get templateName => _$this._templateName;
  set templateName(String? templateName) => _$this._templateName = templateName;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<String>? _parameters;
  ListBuilder<String> get parameters =>
      _$this._parameters ??= ListBuilder<String>();
  set parameters(ListBuilder<String>? parameters) =>
      _$this._parameters = parameters;

  bool? _useTenantQueue;
  bool? get useTenantQueue => _$this._useTenantQueue;
  set useTenantQueue(bool? useTenantQueue) =>
      _$this._useTenantQueue = useTenantQueue;

  TemplateMessageRequestBuilder() {
    TemplateMessageRequest._defaults(this);
  }

  TemplateMessageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _to = $v.to;
      _templateName = $v.templateName;
      _language = $v.language;
      _parameters = $v.parameters?.toBuilder();
      _useTenantQueue = $v.useTenantQueue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateMessageRequest other) {
    _$v = other as _$TemplateMessageRequest;
  }

  @override
  void update(void Function(TemplateMessageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateMessageRequest build() => _build();

  _$TemplateMessageRequest _build() {
    _$TemplateMessageRequest _$result;
    try {
      _$result = _$v ??
          _$TemplateMessageRequest._(
            to: BuiltValueNullFieldError.checkNotNull(
                to, r'TemplateMessageRequest', 'to'),
            templateName: BuiltValueNullFieldError.checkNotNull(
                templateName, r'TemplateMessageRequest', 'templateName'),
            language: language,
            parameters: _parameters?.build(),
            useTenantQueue: useTenantQueue,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TemplateMessageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
