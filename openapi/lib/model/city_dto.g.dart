// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CityDTO> _$cityDTOSerializer = new _$CityDTOSerializer();

class _$CityDTOSerializer implements StructuredSerializer<CityDTO> {
  @override
  final Iterable<Type> types = const [CityDTO, _$CityDTO];
  @override
  final String wireName = 'CityDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, CityDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CityDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CityDTO extends CityDTO {
  @override
  final String city;
  @override
  final int id;

  factory _$CityDTO([void Function(CityDTOBuilder) updates]) =>
      (new CityDTOBuilder()..update(updates)).build();

  _$CityDTO._({this.city, this.id}) : super._();

  @override
  CityDTO rebuild(void Function(CityDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityDTOBuilder toBuilder() => new CityDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CityDTO && city == other.city && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, city.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CityDTO')
          ..add('city', city)
          ..add('id', id))
        .toString();
  }
}

class CityDTOBuilder implements Builder<CityDTO, CityDTOBuilder> {
  _$CityDTO _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  CityDTOBuilder();

  CityDTOBuilder get _$this {
    if (_$v != null) {
      _city = _$v.city;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CityDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CityDTO;
  }

  @override
  void update(void Function(CityDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CityDTO build() {
    final _$result = _$v ?? new _$CityDTO._(city: city, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
