// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDTO> _$productDTOSerializer = new _$ProductDTOSerializer();

class _$ProductDTOSerializer implements StructuredSerializer<ProductDTO> {
  @override
  final Iterable<Type> types = const [ProductDTO, _$ProductDTO];
  @override
  final String wireName = 'ProductDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.amcs != null) {
      result
        ..add('amcs')
        ..add(serializers.serialize(object.amcs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AMCDTO)])));
    }
    if (object.brandId != null) {
      result
        ..add('brandId')
        ..add(serializers.serialize(object.brandId,
            specifiedType: const FullType(int)));
    }
    if (object.categoryId != null) {
      result
        ..add('categoryId')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.extendtedWarranties != null) {
      result
        ..add('extendtedWarranties')
        ..add(serializers.serialize(object.extendtedWarranties,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ExtendedWarrantyDTO)])));
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
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(num)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(String)));
    }
    if (object.specification != null) {
      result
        ..add('specification')
        ..add(serializers.serialize(object.specification,
            specifiedType: const FullType(String)));
    }
    if (object.warranties != null) {
      result
        ..add('warranties')
        ..add(serializers.serialize(object.warranties,
            specifiedType: const FullType(
                BuiltList, const [const FullType(WarrantyDTO)])));
    }
    return result;
  }

  @override
  ProductDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'amcs':
          result.amcs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(AMCDTO)]))
              as BuiltList<Object>);
          break;
        case 'brandId':
          result.brandId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'extendtedWarranties':
          result.extendtedWarranties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExtendedWarrantyDTO)]))
              as BuiltList<Object>);
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
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specification':
          result.specification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'warranties':
          result.warranties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WarrantyDTO)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDTO extends ProductDTO {
  @override
  final BuiltList<AMCDTO> amcs;
  @override
  final int brandId;
  @override
  final int categoryId;
  @override
  final BuiltList<ExtendedWarrantyDTO> extendtedWarranties;
  @override
  final int id;
  @override
  final String image;
  @override
  final String imageContentType;
  @override
  final String model;
  @override
  final String name;
  @override
  final num price;
  @override
  final String productId;
  @override
  final String specification;
  @override
  final BuiltList<WarrantyDTO> warranties;

  factory _$ProductDTO([void Function(ProductDTOBuilder) updates]) =>
      (new ProductDTOBuilder()..update(updates)).build();

  _$ProductDTO._(
      {this.amcs,
      this.brandId,
      this.categoryId,
      this.extendtedWarranties,
      this.id,
      this.image,
      this.imageContentType,
      this.model,
      this.name,
      this.price,
      this.productId,
      this.specification,
      this.warranties})
      : super._();

  @override
  ProductDTO rebuild(void Function(ProductDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDTOBuilder toBuilder() => new ProductDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDTO &&
        amcs == other.amcs &&
        brandId == other.brandId &&
        categoryId == other.categoryId &&
        extendtedWarranties == other.extendtedWarranties &&
        id == other.id &&
        image == other.image &&
        imageContentType == other.imageContentType &&
        model == other.model &&
        name == other.name &&
        price == other.price &&
        productId == other.productId &&
        specification == other.specification &&
        warranties == other.warranties;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, amcs.hashCode),
                                                    brandId.hashCode),
                                                categoryId.hashCode),
                                            extendtedWarranties.hashCode),
                                        id.hashCode),
                                    image.hashCode),
                                imageContentType.hashCode),
                            model.hashCode),
                        name.hashCode),
                    price.hashCode),
                productId.hashCode),
            specification.hashCode),
        warranties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDTO')
          ..add('amcs', amcs)
          ..add('brandId', brandId)
          ..add('categoryId', categoryId)
          ..add('extendtedWarranties', extendtedWarranties)
          ..add('id', id)
          ..add('image', image)
          ..add('imageContentType', imageContentType)
          ..add('model', model)
          ..add('name', name)
          ..add('price', price)
          ..add('productId', productId)
          ..add('specification', specification)
          ..add('warranties', warranties))
        .toString();
  }
}

class ProductDTOBuilder implements Builder<ProductDTO, ProductDTOBuilder> {
  _$ProductDTO _$v;

  ListBuilder<AMCDTO> _amcs;
  ListBuilder<AMCDTO> get amcs => _$this._amcs ??= new ListBuilder<AMCDTO>();
  set amcs(ListBuilder<AMCDTO> amcs) => _$this._amcs = amcs;

  int _brandId;
  int get brandId => _$this._brandId;
  set brandId(int brandId) => _$this._brandId = brandId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  ListBuilder<ExtendedWarrantyDTO> _extendtedWarranties;
  ListBuilder<ExtendedWarrantyDTO> get extendtedWarranties =>
      _$this._extendtedWarranties ??= new ListBuilder<ExtendedWarrantyDTO>();
  set extendtedWarranties(
          ListBuilder<ExtendedWarrantyDTO> extendtedWarranties) =>
      _$this._extendtedWarranties = extendtedWarranties;

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

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  num _price;
  num get price => _$this._price;
  set price(num price) => _$this._price = price;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  String _specification;
  String get specification => _$this._specification;
  set specification(String specification) =>
      _$this._specification = specification;

  ListBuilder<WarrantyDTO> _warranties;
  ListBuilder<WarrantyDTO> get warranties =>
      _$this._warranties ??= new ListBuilder<WarrantyDTO>();
  set warranties(ListBuilder<WarrantyDTO> warranties) =>
      _$this._warranties = warranties;

  ProductDTOBuilder();

  ProductDTOBuilder get _$this {
    if (_$v != null) {
      _amcs = _$v.amcs?.toBuilder();
      _brandId = _$v.brandId;
      _categoryId = _$v.categoryId;
      _extendtedWarranties = _$v.extendtedWarranties?.toBuilder();
      _id = _$v.id;
      _image = _$v.image;
      _imageContentType = _$v.imageContentType;
      _model = _$v.model;
      _name = _$v.name;
      _price = _$v.price;
      _productId = _$v.productId;
      _specification = _$v.specification;
      _warranties = _$v.warranties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDTO;
  }

  @override
  void update(void Function(ProductDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDTO build() {
    _$ProductDTO _$result;
    try {
      _$result = _$v ??
          new _$ProductDTO._(
              amcs: _amcs?.build(),
              brandId: brandId,
              categoryId: categoryId,
              extendtedWarranties: _extendtedWarranties?.build(),
              id: id,
              image: image,
              imageContentType: imageContentType,
              model: model,
              name: name,
              price: price,
              productId: productId,
              specification: specification,
              warranties: _warranties?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'amcs';
        _amcs?.build();

        _$failedField = 'extendtedWarranties';
        _extendtedWarranties?.build();

        _$failedField = 'warranties';
        _warranties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
