        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_warranty_dto.g.dart';

abstract class ExtendedWarrantyDTO implements Built<ExtendedWarrantyDTO, ExtendedWarrantyDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'periodInMonths')
    int get periodInMonths;
    
        @nullable
    @BuiltValueField(wireName: r'periodInYear')
    int get periodInYear;

    // Boilerplate code needed to wire-up generated code
    ExtendedWarrantyDTO._();

    factory ExtendedWarrantyDTO([updates(ExtendedWarrantyDTOBuilder b)]) = _$ExtendedWarrantyDTO;
    static Serializer<ExtendedWarrantyDTO> get serializer => _$extendedWarrantyDTOSerializer;

}

