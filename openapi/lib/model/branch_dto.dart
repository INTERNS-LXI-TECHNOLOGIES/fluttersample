        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_dto.g.dart';

abstract class BranchDTO implements Built<BranchDTO, BranchDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'address')
    String get address;
    
        @nullable
    @BuiltValueField(wireName: r'alternatePhoneNumber')
    String get alternatePhoneNumber;
    
        @nullable
    @BuiltValueField(wireName: r'branchLocation')
    String get branchLocation;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'geoLocation')
    String get geoLocation;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'phoneNumber')
    String get phoneNumber;

    // Boilerplate code needed to wire-up generated code
    BranchDTO._();

    factory BranchDTO([updates(BranchDTOBuilder b)]) = _$BranchDTO;
    static Serializer<BranchDTO> get serializer => _$branchDTOSerializer;

}

