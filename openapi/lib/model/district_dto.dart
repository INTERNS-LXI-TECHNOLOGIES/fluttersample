        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'district_dto.g.dart';

abstract class DistrictDTO implements Built<DistrictDTO, DistrictDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'district')
    String get district;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    DistrictDTO._();

    factory DistrictDTO([updates(DistrictDTOBuilder b)]) = _$DistrictDTO;
    static Serializer<DistrictDTO> get serializer => _$districtDTOSerializer;

}

