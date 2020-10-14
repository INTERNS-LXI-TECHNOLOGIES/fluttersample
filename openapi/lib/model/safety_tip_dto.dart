        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'safety_tip_dto.g.dart';

abstract class SafetyTipDTO implements Built<SafetyTipDTO, SafetyTipDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    // Boilerplate code needed to wire-up generated code
    SafetyTipDTO._();

    factory SafetyTipDTO([updates(SafetyTipDTOBuilder b)]) = _$SafetyTipDTO;
    static Serializer<SafetyTipDTO> get serializer => _$safetyTipDTOSerializer;

}

