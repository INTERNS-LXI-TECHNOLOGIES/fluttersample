// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_code_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PinCodeDTO> _$pinCodeDTOSerializer = new _$PinCodeDTOSerializer();

class _$PinCodeDTOSerializer implements StructuredSerializer<PinCodeDTO> {
  @override
  final Iterable<Type> types = const [PinCodeDTO, _$PinCodeDTO];
  @override
  final String wireName = 'PinCodeDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, PinCodeDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.pinCode != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(object.pinCode,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinCodeDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PinCodeDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinCodeDTO extends PinCodeDTO {
  @override
  final int id;
  @override
  final String pinCode;

  factory _$PinCodeDTO([void Function(PinCodeDTOBuilder) updates]) =>
      (new PinCodeDTOBuilder()..update(updates)).build();

  _$PinCodeDTO._({this.id, this.pinCode}) : super._();

  @override
  PinCodeDTO rebuild(void Function(PinCodeDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinCodeDTOBuilder toBuilder() => new PinCodeDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinCodeDTO && id == other.id && pinCode == other.pinCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), pinCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PinCodeDTO')
          ..add('id', id)
          ..add('pinCode', pinCode))
        .toString();
  }
}

class PinCodeDTOBuilder implements Builder<PinCodeDTO, PinCodeDTOBuilder> {
  _$PinCodeDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _pinCode;
  String get pinCode => _$this._pinCode;
  set pinCode(String pinCode) => _$this._pinCode = pinCode;

  PinCodeDTOBuilder();

  PinCodeDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _pinCode = _$v.pinCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PinCodeDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PinCodeDTO;
  }

  @override
  void update(void Function(PinCodeDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PinCodeDTO build() {
    final _$result = _$v ?? new _$PinCodeDTO._(id: id, pinCode: pinCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
