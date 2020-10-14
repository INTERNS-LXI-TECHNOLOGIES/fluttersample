        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warranty_dto.g.dart';

abstract class WarrantyDTO implements Built<WarrantyDTO, WarrantyDTOBuilder> {

    
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
    WarrantyDTO._();

    factory WarrantyDTO([updates(WarrantyDTOBuilder b)]) = _$WarrantyDTO;
    static Serializer<WarrantyDTO> get serializer => _$warrantyDTOSerializer;

}

