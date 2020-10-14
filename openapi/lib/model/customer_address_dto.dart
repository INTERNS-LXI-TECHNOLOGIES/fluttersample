        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_address_dto.g.dart';

abstract class CustomerAddressDTO implements Built<CustomerAddressDTO, CustomerAddressDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'cityNameId')
    int get cityNameId;
    
        @nullable
    @BuiltValueField(wireName: r'districtNameId')
    int get districtNameId;
    
        @nullable
    @BuiltValueField(wireName: r'geoLocation')
    String get geoLocation;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'landMark')
    String get landMark;
    
        @nullable
    @BuiltValueField(wireName: r'locationAddressLineOne')
    String get locationAddressLineOne;
    
        @nullable
    @BuiltValueField(wireName: r'locationAddressLineTwo')
    String get locationAddressLineTwo;
    
        @nullable
    @BuiltValueField(wireName: r'pinCodeId')
    int get pinCodeId;
    
        @nullable
    @BuiltValueField(wireName: r'stateNameId')
    int get stateNameId;

    // Boilerplate code needed to wire-up generated code
    CustomerAddressDTO._();

    factory CustomerAddressDTO([updates(CustomerAddressDTOBuilder b)]) = _$CustomerAddressDTO;
    static Serializer<CustomerAddressDTO> get serializer => _$customerAddressDTOSerializer;

}

