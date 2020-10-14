        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'city_dto.g.dart';

abstract class CityDTO implements Built<CityDTO, CityDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    CityDTO._();

    factory CityDTO([updates(CityDTOBuilder b)]) = _$CityDTO;
    static Serializer<CityDTO> get serializer => _$cityDTOSerializer;

}

