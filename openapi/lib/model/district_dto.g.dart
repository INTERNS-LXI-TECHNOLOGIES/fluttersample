// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DistrictDTO> _$districtDTOSerializer = new _$DistrictDTOSerializer();

class _$DistrictDTOSerializer implements StructuredSerializer<DistrictDTO> {
  @override
  final Iterable<Type> types = const [DistrictDTO, _$DistrictDTO];
  @override
  final String wireName = 'DistrictDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, DistrictDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.district != null) {
      result
        ..add('district')
        ..add(serializers.serialize(object.district,
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
  DistrictDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DistrictDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'district':
          result.district = serializers.deserialize(value,
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

class _$DistrictDTO extends DistrictDTO {
  @override
  final String district;
  @override
  final int id;

  factory _$DistrictDTO([void Function(DistrictDTOBuilder) updates]) =>
      (new DistrictDTOBuilder()..update(updates)).build();

  _$DistrictDTO._({this.district, this.id}) : super._();

  @override
  DistrictDTO rebuild(void Function(DistrictDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistrictDTOBuilder toBuilder() => new DistrictDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DistrictDTO && district == other.district && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, district.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DistrictDTO')
          ..add('district', district)
          ..add('id', id))
        .toString();
  }
}

class DistrictDTOBuilder implements Builder<DistrictDTO, DistrictDTOBuilder> {
  _$DistrictDTO _$v;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DistrictDTOBuilder();

  DistrictDTOBuilder get _$this {
    if (_$v != null) {
      _district = _$v.district;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DistrictDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DistrictDTO;
  }

  @override
  void update(void Function(DistrictDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DistrictDTO build() {
    final _$result = _$v ?? new _$DistrictDTO._(district: district, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
