// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_call_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerCallPostRequest extends AnswerCallPostRequest {
  @override
  final String id;

  factory _$AnswerCallPostRequest(
          [void Function(AnswerCallPostRequestBuilder)? updates]) =>
      (AnswerCallPostRequestBuilder()..update(updates))._build();

  _$AnswerCallPostRequest._({required this.id}) : super._();
  @override
  AnswerCallPostRequest rebuild(
          void Function(AnswerCallPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerCallPostRequestBuilder toBuilder() =>
      AnswerCallPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerCallPostRequest && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswerCallPostRequest')
          ..add('id', id))
        .toString();
  }
}

class AnswerCallPostRequestBuilder
    implements Builder<AnswerCallPostRequest, AnswerCallPostRequestBuilder> {
  _$AnswerCallPostRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AnswerCallPostRequestBuilder() {
    AnswerCallPostRequest._defaults(this);
  }

  AnswerCallPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerCallPostRequest other) {
    _$v = other as _$AnswerCallPostRequest;
  }

  @override
  void update(void Function(AnswerCallPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerCallPostRequest build() => _build();

  _$AnswerCallPostRequest _build() {
    final _$result = _$v ??
        _$AnswerCallPostRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AnswerCallPostRequest', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
