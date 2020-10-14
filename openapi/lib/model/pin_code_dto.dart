        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pin_code_dto.g.dart';

abstract class PinCodeDTO implements Built<PinCodeDTO, PinCodeDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'pinCode')
    String get pinCode;

    // Boilerplate code needed to wire-up generated code
    PinCodeDTO._();

    factory PinCodeDTO([updates(PinCodeDTOBuilder b)]) = _$PinCodeDTO;
    static Serializer<PinCodeDTO> get serializer => _$pinCodeDTOSerializer;

}

