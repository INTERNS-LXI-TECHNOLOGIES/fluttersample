        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loyalty_program_dto.g.dart';

abstract class LoyaltyProgramDTO implements Built<LoyaltyProgramDTO, LoyaltyProgramDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'endingDate')
    DateTime get endingDate;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'startingDate')
    DateTime get startingDate;

    // Boilerplate code needed to wire-up generated code
    LoyaltyProgramDTO._();

    factory LoyaltyProgramDTO([updates(LoyaltyProgramDTOBuilder b)]) = _$LoyaltyProgramDTO;
    static Serializer<LoyaltyProgramDTO> get serializer => _$loyaltyProgramDTOSerializer;

}

