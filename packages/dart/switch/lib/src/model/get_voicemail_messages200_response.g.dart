// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_voicemail_messages200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVoicemailMessages200Response
    extends GetVoicemailMessages200Response {
  @override
  final BuiltList<GetVoicemailMessages200ResponseMessagesInner> messages;
  @override
  final GetVoicemailMessages200ResponsePagination pagination;

  factory _$GetVoicemailMessages200Response(
          [void Function(GetVoicemailMessages200ResponseBuilder)? updates]) =>
      (GetVoicemailMessages200ResponseBuilder()..update(updates))._build();

  _$GetVoicemailMessages200Response._(
      {required this.messages, required this.pagination})
      : super._();
  @override
  GetVoicemailMessages200Response rebuild(
          void Function(GetVoicemailMessages200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVoicemailMessages200ResponseBuilder toBuilder() =>
      GetVoicemailMessages200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVoicemailMessages200Response &&
        messages == other.messages &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetVoicemailMessages200Response')
          ..add('messages', messages)
          ..add('pagination', pagination))
        .toString();
  }
}

class GetVoicemailMessages200ResponseBuilder
    implements
        Builder<GetVoicemailMessages200Response,
            GetVoicemailMessages200ResponseBuilder> {
  _$GetVoicemailMessages200Response? _$v;

  ListBuilder<GetVoicemailMessages200ResponseMessagesInner>? _messages;
  ListBuilder<GetVoicemailMessages200ResponseMessagesInner> get messages =>
      _$this._messages ??=
          ListBuilder<GetVoicemailMessages200ResponseMessagesInner>();
  set messages(
          ListBuilder<GetVoicemailMessages200ResponseMessagesInner>?
              messages) =>
      _$this._messages = messages;

  GetVoicemailMessages200ResponsePaginationBuilder? _pagination;
  GetVoicemailMessages200ResponsePaginationBuilder get pagination =>
      _$this._pagination ??= GetVoicemailMessages200ResponsePaginationBuilder();
  set pagination(
          GetVoicemailMessages200ResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  GetVoicemailMessages200ResponseBuilder() {
    GetVoicemailMessages200Response._defaults(this);
  }

  GetVoicemailMessages200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messages = $v.messages.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVoicemailMessages200Response other) {
    _$v = other as _$GetVoicemailMessages200Response;
  }

  @override
  void update(void Function(GetVoicemailMessages200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVoicemailMessages200Response build() => _build();

  _$GetVoicemailMessages200Response _build() {
    _$GetVoicemailMessages200Response _$result;
    try {
      _$result = _$v ??
          _$GetVoicemailMessages200Response._(
            messages: messages.build(),
            pagination: pagination.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        messages.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetVoicemailMessages200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
