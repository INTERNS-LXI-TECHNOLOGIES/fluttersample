// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_type_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceTypeDTO> _$serviceTypeDTOSerializer =
    new _$ServiceTypeDTOSerializer();

class _$ServiceTypeDTOSerializer
    implements StructuredSerializer<ServiceTypeDTO> {
  @override
  final Iterable<Type> types = const [ServiceTypeDTO, _$ServiceTypeDTO];
  @override
  final String wireName = 'ServiceTypeDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, ServiceTypeDTO object,
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
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ServiceTypeDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceTypeDTOBuilder();

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
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceTypeDTO extends ServiceTypeDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String location;
  @override
  final String name;

  factory _$ServiceTypeDTO([void Function(ServiceTypeDTOBuilder) updates]) =>
      (new ServiceTypeDTOBuilder()..update(updates)).build();

  _$ServiceTypeDTO._({this.description, this.id, this.location, this.name})
      : super._();

  @override
  ServiceTypeDTO rebuild(void Function(ServiceTypeDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceTypeDTOBuilder toBuilder() =>
      new ServiceTypeDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceTypeDTO &&
        description == other.description &&
        id == other.id &&
        location == other.location &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), id.hashCode), location.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceTypeDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('location', location)
          ..add('name', name))
        .toString();
  }
}

class ServiceTypeDTOBuilder
    implements Builder<ServiceTypeDTO, ServiceTypeDTOBuilder> {
  _$ServiceTypeDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ServiceTypeDTOBuilder();

  ServiceTypeDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _location = _$v.location;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceTypeDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceTypeDTO;
  }

  @override
  void update(void Function(ServiceTypeDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceTypeDTO build() {
    final _$result = _$v ??
        new _$ServiceTypeDTO._(
            description: description, id: id, location: location, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
