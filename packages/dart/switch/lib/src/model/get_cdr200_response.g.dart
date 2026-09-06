// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cdr200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCdr200Response extends GetCdr200Response {
  @override
  final GetCdr200ResponseCdr? cdr;
  @override
  final BuiltList<GetCdr200ResponseCallFlowInner>? callFlow;

  factory _$GetCdr200Response(
          [void Function(GetCdr200ResponseBuilder)? updates]) =>
      (GetCdr200ResponseBuilder()..update(updates))._build();

  _$GetCdr200Response._({this.cdr, this.callFlow}) : super._();
  @override
  GetCdr200Response rebuild(void Function(GetCdr200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCdr200ResponseBuilder toBuilder() =>
      GetCdr200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCdr200Response &&
        cdr == other.cdr &&
        callFlow == other.callFlow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cdr.hashCode);
    _$hash = $jc(_$hash, callFlow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCdr200Response')
          ..add('cdr', cdr)
          ..add('callFlow', callFlow))
        .toString();
  }
}

class GetCdr200ResponseBuilder
    implements Builder<GetCdr200Response, GetCdr200ResponseBuilder> {
  _$GetCdr200Response? _$v;

  GetCdr200ResponseCdrBuilder? _cdr;
  GetCdr200ResponseCdrBuilder get cdr =>
      _$this._cdr ??= GetCdr200ResponseCdrBuilder();
  set cdr(GetCdr200ResponseCdrBuilder? cdr) => _$this._cdr = cdr;

  ListBuilder<GetCdr200ResponseCallFlowInner>? _callFlow;
  ListBuilder<GetCdr200ResponseCallFlowInner> get callFlow =>
      _$this._callFlow ??= ListBuilder<GetCdr200ResponseCallFlowInner>();
  set callFlow(ListBuilder<GetCdr200ResponseCallFlowInner>? callFlow) =>
      _$this._callFlow = callFlow;

  GetCdr200ResponseBuilder() {
    GetCdr200Response._defaults(this);
  }

  GetCdr200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cdr = $v.cdr?.toBuilder();
      _callFlow = $v.callFlow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCdr200Response other) {
    _$v = other as _$GetCdr200Response;
  }

  @override
  void update(void Function(GetCdr200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCdr200Response build() => _build();

  _$GetCdr200Response _build() {
    _$GetCdr200Response _$result;
    try {
      _$result = _$v ??
          _$GetCdr200Response._(
            cdr: _cdr?.build(),
            callFlow: _callFlow?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cdr';
        _cdr?.build();
        _$failedField = 'callFlow';
        _callFlow?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetCdr200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
