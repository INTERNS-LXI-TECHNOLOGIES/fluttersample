        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'purchased_product_dto.g.dart';

abstract class PurchasedProductDTO implements Built<PurchasedProductDTO, PurchasedProductDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    int get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'invoiceNo')
    String get invoiceNo;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'purchasedDate')
    DateTime get purchasedDate;
    
        @nullable
    @BuiltValueField(wireName: r'purchasedPrice')
    num get purchasedPrice;
    
        @nullable
    @BuiltValueField(wireName: r'serialNumber')
    String get serialNumber;

    // Boilerplate code needed to wire-up generated code
    PurchasedProductDTO._();

    factory PurchasedProductDTO([updates(PurchasedProductDTOBuilder b)]) = _$PurchasedProductDTO;
    static Serializer<PurchasedProductDTO> get serializer => _$purchasedProductDTOSerializer;

}

