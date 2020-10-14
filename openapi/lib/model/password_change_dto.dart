        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_change_dto.g.dart';

abstract class PasswordChangeDTO implements Built<PasswordChangeDTO, PasswordChangeDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'currentPassword')
    String get currentPassword;
    
        @nullable
    @BuiltValueField(wireName: r'newPassword')
    String get newPassword;

    // Boilerplate code needed to wire-up generated code
    PasswordChangeDTO._();

    factory PasswordChangeDTO([updates(PasswordChangeDTOBuilder b)]) = _$PasswordChangeDTO;
    static Serializer<PasswordChangeDTO> get serializer => _$passwordChangeDTOSerializer;

}

