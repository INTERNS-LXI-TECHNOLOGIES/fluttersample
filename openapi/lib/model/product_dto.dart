            import 'package:openapi/model/extended_warranty_dto.dart';
            import 'package:openapi/model/warranty_dto.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/amcdto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_dto.g.dart';

abstract class ProductDTO implements Built<ProductDTO, ProductDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amcs')
    BuiltList<AMCDTO> get amcs;
    
        @nullable
    @BuiltValueField(wireName: r'brandId')
    int get brandId;
    
        @nullable
    @BuiltValueField(wireName: r'categoryId')
    int get categoryId;
    
        @nullable
    @BuiltValueField(wireName: r'extendtedWarranties')
    BuiltList<ExtendedWarrantyDTO> get extendtedWarranties;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'imageContentType')
    String get imageContentType;
    
        @nullable
    @BuiltValueField(wireName: r'model')
    String get model;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'price')
    num get price;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    String get productId;
    
        @nullable
    @BuiltValueField(wireName: r'specification')
    String get specification;
    
        @nullable
    @BuiltValueField(wireName: r'warranties')
    BuiltList<WarrantyDTO> get warranties;

    // Boilerplate code needed to wire-up generated code
    ProductDTO._();

    factory ProductDTO([updates(ProductDTOBuilder b)]) = _$ProductDTO;
    static Serializer<ProductDTO> get serializer => _$productDTOSerializer;

}

