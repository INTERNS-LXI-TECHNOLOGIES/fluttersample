        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'call_center_executive_dto.g.dart';

abstract class CallCenterExecutiveDTO implements Built<CallCenterExecutiveDTO, CallCenterExecutiveDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'callCenterExecutiveId')
    String get callCenterExecutiveId;
    
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
    @BuiltValueField(wireName: r'phoneVerified')
    bool get phoneVerified;
    
        @nullable
    @BuiltValueField(wireName: r'userId')
    int get userId;
    
        @nullable
    @BuiltValueField(wireName: r'userLogin')
    String get userLogin;

    // Boilerplate code needed to wire-up generated code
    CallCenterExecutiveDTO._();

    factory CallCenterExecutiveDTO([updates(CallCenterExecutiveDTOBuilder b)]) = _$CallCenterExecutiveDTO;
    static Serializer<CallCenterExecutiveDTO> get serializer => _$callCenterExecutiveDTOSerializer;

}

