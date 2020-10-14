        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_executive_dto.g.dart';

abstract class ServiceExecutiveDTO implements Built<ServiceExecutiveDTO, ServiceExecutiveDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'alternatePhoneNumberOne')
    String get alternatePhoneNumberOne;
    
        @nullable
    @BuiltValueField(wireName: r'alternatePhoneNumberTwo')
    String get alternatePhoneNumberTwo;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'phone')
    String get phone;
    
        @nullable
    @BuiltValueField(wireName: r'phoneNumbersVerified')
    bool get phoneNumbersVerified;
    
        @nullable
    @BuiltValueField(wireName: r'serviceEngineerId')
    String get serviceEngineerId;
    
        @nullable
    @BuiltValueField(wireName: r'userId')
    int get userId;
    
        @nullable
    @BuiltValueField(wireName: r'userLogin')
    String get userLogin;

    // Boilerplate code needed to wire-up generated code
    ServiceExecutiveDTO._();

    factory ServiceExecutiveDTO([updates(ServiceExecutiveDTOBuilder b)]) = _$ServiceExecutiveDTO;
    static Serializer<ServiceExecutiveDTO> get serializer => _$serviceExecutiveDTOSerializer;

}

