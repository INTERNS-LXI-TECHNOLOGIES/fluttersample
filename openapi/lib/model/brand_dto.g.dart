// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandDTO> _$brandDTOSerializer = new _$BrandDTOSerializer();

class _$BrandDTOSerializer implements StructuredSerializer<BrandDTO> {
  @override
  final Iterable<Type> types = const [BrandDTO, _$BrandDTO];
  @override
  final String wireName = 'BrandDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandDTO object,
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
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    if (object.logoContentType != null) {
      result
        ..add('logoContentType')
        ..add(serializers.serialize(object.logoContentType,
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
  BrandDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandDTOBuilder();

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
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logoContentType':
          result.logoContentType = serializers.deserialize(value,
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

class _$BrandDTO extends BrandDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String logo;
  @override
  final String logoContentType;
  @override
  final String name;

  factory _$BrandDTO([void Function(BrandDTOBuilder) updates]) =>
      (new BrandDTOBuilder()..update(updates)).build();

  _$BrandDTO._(
      {this.description, this.id, this.logo, this.logoContentType, this.name})
      : super._();

  @override
  BrandDTO rebuild(void Function(BrandDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandDTOBuilder toBuilder() => new BrandDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandDTO &&
        description == other.description &&
        id == other.id &&
        logo == other.logo &&
        logoContentType == other.logoContentType &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, description.hashCode), id.hashCode), logo.hashCode),
            logoContentType.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('logo', logo)
          ..add('logoContentType', logoContentType)
          ..add('name', name))
        .toString();
  }
}

class BrandDTOBuilder implements Builder<BrandDTO, BrandDTOBuilder> {
  _$BrandDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  String _logoContentType;
  String get logoContentType => _$this._logoContentType;
  set logoContentType(String logoContentType) =>
      _$this._logoContentType = logoContentType;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BrandDTOBuilder();

  BrandDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _logo = _$v.logo;
      _logoContentType = _$v.logoContentType;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandDTO;
  }

  @override
  void update(void Function(BrandDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandDTO build() {
    final _$result = _$v ??
        new _$BrandDTO._(
            description: description,
            id: id,
            logo: logo,
            logoContentType: logoContentType,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
