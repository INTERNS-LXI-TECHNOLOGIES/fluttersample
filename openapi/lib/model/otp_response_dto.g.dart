// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OtpResponseDTO> _$otpResponseDTOSerializer =
    new _$OtpResponseDTOSerializer();

class _$OtpResponseDTOSerializer
    implements StructuredSerializer<OtpResponseDTO> {
  @override
  final Iterable<Type> types = const [OtpResponseDTO, _$OtpResponseDTO];
  @override
  final String wireName = 'OtpResponseDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, OtpResponseDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.details != null) {
      result
        ..add('details')
        ..add(serializers.serialize(object.details,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OtpResponseDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtpResponseDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OtpResponseDTO extends OtpResponseDTO {
  @override
  final String details;
  @override
  final String status;

  factory _$OtpResponseDTO([void Function(OtpResponseDTOBuilder) updates]) =>
      (new OtpResponseDTOBuilder()..update(updates)).build();

  _$OtpResponseDTO._({this.details, this.status}) : super._();

  @override
  OtpResponseDTO rebuild(void Function(OtpResponseDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtpResponseDTOBuilder toBuilder() =>
      new OtpResponseDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtpResponseDTO &&
        details == other.details &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, details.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OtpResponseDTO')
          ..add('details', details)
          ..add('status', status))
        .toString();
  }
}

class OtpResponseDTOBuilder
    implements Builder<OtpResponseDTO, OtpResponseDTOBuilder> {
  _$OtpResponseDTO _$v;

  String _details;
  String get details => _$this._details;
  set details(String details) => _$this._details = details;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  OtpResponseDTOBuilder();

  OtpResponseDTOBuilder get _$this {
    if (_$v != null) {
      _details = _$v.details;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtpResponseDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OtpResponseDTO;
  }

  @override
  void update(void Function(OtpResponseDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtpResponseDTO build() {
    final _$result =
        _$v ?? new _$OtpResponseDTO._(details: details, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
