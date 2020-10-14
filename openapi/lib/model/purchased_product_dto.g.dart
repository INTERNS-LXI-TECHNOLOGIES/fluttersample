// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchased_product_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PurchasedProductDTO> _$purchasedProductDTOSerializer =
    new _$PurchasedProductDTOSerializer();

class _$PurchasedProductDTOSerializer
    implements StructuredSerializer<PurchasedProductDTO> {
  @override
  final Iterable<Type> types = const [
    PurchasedProductDTO,
    _$PurchasedProductDTO
  ];
  @override
  final String wireName = 'PurchasedProductDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PurchasedProductDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.invoiceNo != null) {
      result
        ..add('invoiceNo')
        ..add(serializers.serialize(object.invoiceNo,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.purchasedDate != null) {
      result
        ..add('purchasedDate')
        ..add(serializers.serialize(object.purchasedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.purchasedPrice != null) {
      result
        ..add('purchasedPrice')
        ..add(serializers.serialize(object.purchasedPrice,
            specifiedType: const FullType(num)));
    }
    if (object.serialNumber != null) {
      result
        ..add('serialNumber')
        ..add(serializers.serialize(object.serialNumber,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PurchasedProductDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PurchasedProductDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'invoiceNo':
          result.invoiceNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'purchasedDate':
          result.purchasedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'purchasedPrice':
          result.purchasedPrice = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'serialNumber':
          result.serialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PurchasedProductDTO extends PurchasedProductDTO {
  @override
  final int customerId;
  @override
  final int id;
  @override
  final String invoiceNo;
  @override
  final int productId;
  @override
  final DateTime purchasedDate;
  @override
  final num purchasedPrice;
  @override
  final String serialNumber;

  factory _$PurchasedProductDTO(
          [void Function(PurchasedProductDTOBuilder) updates]) =>
      (new PurchasedProductDTOBuilder()..update(updates)).build();

  _$PurchasedProductDTO._(
      {this.customerId,
      this.id,
      this.invoiceNo,
      this.productId,
      this.purchasedDate,
      this.purchasedPrice,
      this.serialNumber})
      : super._();

  @override
  PurchasedProductDTO rebuild(
          void Function(PurchasedProductDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchasedProductDTOBuilder toBuilder() =>
      new PurchasedProductDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchasedProductDTO &&
        customerId == other.customerId &&
        id == other.id &&
        invoiceNo == other.invoiceNo &&
        productId == other.productId &&
        purchasedDate == other.purchasedDate &&
        purchasedPrice == other.purchasedPrice &&
        serialNumber == other.serialNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, customerId.hashCode), id.hashCode),
                        invoiceNo.hashCode),
                    productId.hashCode),
                purchasedDate.hashCode),
            purchasedPrice.hashCode),
        serialNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PurchasedProductDTO')
          ..add('customerId', customerId)
          ..add('id', id)
          ..add('invoiceNo', invoiceNo)
          ..add('productId', productId)
          ..add('purchasedDate', purchasedDate)
          ..add('purchasedPrice', purchasedPrice)
          ..add('serialNumber', serialNumber))
        .toString();
  }
}

class PurchasedProductDTOBuilder
    implements Builder<PurchasedProductDTO, PurchasedProductDTOBuilder> {
  _$PurchasedProductDTO _$v;

  int _customerId;
  int get customerId => _$this._customerId;
  set customerId(int customerId) => _$this._customerId = customerId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _invoiceNo;
  String get invoiceNo => _$this._invoiceNo;
  set invoiceNo(String invoiceNo) => _$this._invoiceNo = invoiceNo;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  DateTime _purchasedDate;
  DateTime get purchasedDate => _$this._purchasedDate;
  set purchasedDate(DateTime purchasedDate) =>
      _$this._purchasedDate = purchasedDate;

  num _purchasedPrice;
  num get purchasedPrice => _$this._purchasedPrice;
  set purchasedPrice(num purchasedPrice) =>
      _$this._purchasedPrice = purchasedPrice;

  String _serialNumber;
  String get serialNumber => _$this._serialNumber;
  set serialNumber(String serialNumber) => _$this._serialNumber = serialNumber;

  PurchasedProductDTOBuilder();

  PurchasedProductDTOBuilder get _$this {
    if (_$v != null) {
      _customerId = _$v.customerId;
      _id = _$v.id;
      _invoiceNo = _$v.invoiceNo;
      _productId = _$v.productId;
      _purchasedDate = _$v.purchasedDate;
      _purchasedPrice = _$v.purchasedPrice;
      _serialNumber = _$v.serialNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchasedProductDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PurchasedProductDTO;
  }

  @override
  void update(void Function(PurchasedProductDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PurchasedProductDTO build() {
    final _$result = _$v ??
        new _$PurchasedProductDTO._(
            customerId: customerId,
            id: id,
            invoiceNo: invoiceNo,
            productId: productId,
            purchasedDate: purchasedDate,
            purchasedPrice: purchasedPrice,
            serialNumber: serialNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
