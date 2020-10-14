        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_type_dto.g.dart';

abstract class ServiceTypeDTO implements Built<ServiceTypeDTO, ServiceTypeDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'location')
    String get location;
        //enum locationEnum {  ONSITE,  INHOUSE,  };
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    ServiceTypeDTO._();

    factory ServiceTypeDTO([updates(ServiceTypeDTOBuilder b)]) = _$ServiceTypeDTO;
    static Serializer<ServiceTypeDTO> get serializer => _$serviceTypeDTOSerializer;

}

