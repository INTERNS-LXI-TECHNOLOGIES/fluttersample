        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'otp_response_dto.g.dart';

abstract class OtpResponseDTO implements Built<OtpResponseDTO, OtpResponseDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'details')
    String get details;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    // Boilerplate code needed to wire-up generated code
    OtpResponseDTO._();

    factory OtpResponseDTO([updates(OtpResponseDTOBuilder b)]) = _$OtpResponseDTO;
    static Serializer<OtpResponseDTO> get serializer => _$otpResponseDTOSerializer;

}

