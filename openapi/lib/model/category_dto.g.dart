// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryDTO> _$categoryDTOSerializer = new _$CategoryDTOSerializer();

class _$CategoryDTOSerializer implements StructuredSerializer<CategoryDTO> {
  @override
  final Iterable<Type> types = const [CategoryDTO, _$CategoryDTO];
  @override
  final String wireName = 'CategoryDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryDTO object,
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
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.imageContentType != null) {
      result
        ..add('imageContentType')
        ..add(serializers.serialize(object.imageContentType,
            specifiedType: const FullType(String)));
    }
    if (object.mainCategoryId != null) {
      result
        ..add('mainCategoryId')
        ..add(serializers.serialize(object.mainCategoryId,
            specifiedType: const FullType(int)));
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
  CategoryDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryDTOBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageContentType':
          result.imageContentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainCategoryId':
          result.mainCategoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$CategoryDTO extends CategoryDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String image;
  @override
  final String imageContentType;
  @override
  final int mainCategoryId;
  @override
  final String name;

  factory _$CategoryDTO([void Function(CategoryDTOBuilder) updates]) =>
      (new CategoryDTOBuilder()..update(updates)).build();

  _$CategoryDTO._(
      {this.description,
      this.id,
      this.image,
      this.imageContentType,
      this.mainCategoryId,
      this.name})
      : super._();

  @override
  CategoryDTO rebuild(void Function(CategoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryDTOBuilder toBuilder() => new CategoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryDTO &&
        description == other.description &&
        id == other.id &&
        image == other.image &&
        imageContentType == other.imageContentType &&
        mainCategoryId == other.mainCategoryId &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, description.hashCode), id.hashCode),
                    image.hashCode),
                imageContentType.hashCode),
            mainCategoryId.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('image', image)
          ..add('imageContentType', imageContentType)
          ..add('mainCategoryId', mainCategoryId)
          ..add('name', name))
        .toString();
  }
}

class CategoryDTOBuilder implements Builder<CategoryDTO, CategoryDTOBuilder> {
  _$CategoryDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _imageContentType;
  String get imageContentType => _$this._imageContentType;
  set imageContentType(String imageContentType) =>
      _$this._imageContentType = imageContentType;

  int _mainCategoryId;
  int get mainCategoryId => _$this._mainCategoryId;
  set mainCategoryId(int mainCategoryId) =>
      _$this._mainCategoryId = mainCategoryId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CategoryDTOBuilder();

  CategoryDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _image = _$v.image;
      _imageContentType = _$v.imageContentType;
      _mainCategoryId = _$v.mainCategoryId;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryDTO;
  }

  @override
  void update(void Function(CategoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryDTO build() {
    final _$result = _$v ??
        new _$CategoryDTO._(
            description: description,
            id: id,
            image: image,
            imageContentType: imageContentType,
            mainCategoryId: mainCategoryId,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
