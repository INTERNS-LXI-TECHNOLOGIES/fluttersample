            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/service_executive_rating_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_dto.g.dart';

abstract class CustomerDTO implements Built<CustomerDTO, CustomerDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addressId')
    int get addressId;
    
        @nullable
    @BuiltValueField(wireName: r'customerRank')
    String get customerRank;
    
        @nullable
    @BuiltValueField(wireName: r'customerSince')
    DateTime get customerSince;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'esquireId')
    String get esquireId;
    
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
    @BuiltValueField(wireName: r'phoneVerified')
    bool get phoneVerified;
    
        @nullable
    @BuiltValueField(wireName: r'ratings')
    BuiltList<ServiceExecutiveRatingDTO> get ratings;
    
        @nullable
    @BuiltValueField(wireName: r'systemId')
    String get systemId;
    
        @nullable
    @BuiltValueField(wireName: r'userId')
    int get userId;
    
        @nullable
    @BuiltValueField(wireName: r'userLogin')
    String get userLogin;

    // Boilerplate code needed to wire-up generated code
    CustomerDTO._();

    factory CustomerDTO([updates(CustomerDTOBuilder b)]) = _$CustomerDTO;
    static Serializer<CustomerDTO> get serializer => _$customerDTOSerializer;

}

