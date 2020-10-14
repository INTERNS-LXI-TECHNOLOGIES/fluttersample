        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'promotional_message_dto.g.dart';

abstract class PromotionalMessageDTO implements Built<PromotionalMessageDTO, PromotionalMessageDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'imageContentType')
    String get imageContentType;
    
        @nullable
    @BuiltValueField(wireName: r'loyaltyProgramId')
    int get loyaltyProgramId;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    // Boilerplate code needed to wire-up generated code
    PromotionalMessageDTO._();

    factory PromotionalMessageDTO([updates(PromotionalMessageDTOBuilder b)]) = _$PromotionalMessageDTO;
    static Serializer<PromotionalMessageDTO> get serializer => _$promotionalMessageDTOSerializer;

}

