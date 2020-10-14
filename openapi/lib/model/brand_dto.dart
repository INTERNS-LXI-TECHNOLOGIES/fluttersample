        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand_dto.g.dart';

abstract class BrandDTO implements Built<BrandDTO, BrandDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'logo')
    String get logo;
    
        @nullable
    @BuiltValueField(wireName: r'logoContentType')
    String get logoContentType;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    BrandDTO._();

    factory BrandDTO([updates(BrandDTOBuilder b)]) = _$BrandDTO;
    static Serializer<BrandDTO> get serializer => _$brandDTOSerializer;

}

