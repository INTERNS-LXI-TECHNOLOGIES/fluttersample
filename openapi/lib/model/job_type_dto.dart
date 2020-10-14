        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_type_dto.g.dart';

abstract class JobTypeDTO implements Built<JobTypeDTO, JobTypeDTOBuilder> {

    
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
    JobTypeDTO._();

    factory JobTypeDTO([updates(JobTypeDTOBuilder b)]) = _$JobTypeDTO;
    static Serializer<JobTypeDTO> get serializer => _$jobTypeDTOSerializer;

}

