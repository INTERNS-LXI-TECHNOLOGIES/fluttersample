// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WarrantyDTO> _$warrantyDTOSerializer = new _$WarrantyDTOSerializer();

class _$WarrantyDTOSerializer implements StructuredSerializer<WarrantyDTO> {
  @override
  final Iterable<Type> types = const [WarrantyDTO, _$WarrantyDTO];
  @override
  final String wireName = 'WarrantyDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, WarrantyDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.periodInMonths != null) {
      result
        ..add('periodInMonths')
        ..add(serializers.serialize(object.periodInMonths,
            specifiedType: const FullType(int)));
    }
    if (object.periodInYear != null) {
      result
        ..add('periodInYear')
        ..add(serializers.serialize(object.periodInYear,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WarrantyDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarrantyDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'periodInMonths':
          result.periodInMonths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'periodInYear':
          result.periodInYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WarrantyDTO extends WarrantyDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String name;
  @override
  final int periodInMonths;
  @override
  final int periodInYear;

  factory _$WarrantyDTO([void Function(WarrantyDTOBuilder) updates]) =>
      (new WarrantyDTOBuilder()..update(updates)).build();

  _$WarrantyDTO._(
      {this.description,
      this.id,
      this.name,
      this.periodInMonths,
      this.periodInYear})
      : super._();

  @override
  WarrantyDTO rebuild(void Function(WarrantyDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarrantyDTOBuilder toBuilder() => new WarrantyDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WarrantyDTO &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        periodInMonths == other.periodInMonths &&
        periodInYear == other.periodInYear;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, description.hashCode), id.hashCode), name.hashCode),
            periodInMonths.hashCode),
        periodInYear.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WarrantyDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('name', name)
          ..add('periodInMonths', periodInMonths)
          ..add('periodInYear', periodInYear))
        .toString();
  }
}

class WarrantyDTOBuilder implements Builder<WarrantyDTO, WarrantyDTOBuilder> {
  _$WarrantyDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _periodInMonths;
  int get periodInMonths => _$this._periodInMonths;
  set periodInMonths(int periodInMonths) =>
      _$this._periodInMonths = periodInMonths;

  int _periodInYear;
  int get periodInYear => _$this._periodInYear;
  set periodInYear(int periodInYear) => _$this._periodInYear = periodInYear;

  WarrantyDTOBuilder();

  WarrantyDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _name = _$v.name;
      _periodInMonths = _$v.periodInMonths;
      _periodInYear = _$v.periodInYear;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WarrantyDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WarrantyDTO;
  }

  @override
  void update(void Function(WarrantyDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WarrantyDTO build() {
    final _$result = _$v ??
        new _$WarrantyDTO._(
            description: description,
            id: id,
            name: name,
            periodInMonths: periodInMonths,
            periodInYear: periodInYear);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
