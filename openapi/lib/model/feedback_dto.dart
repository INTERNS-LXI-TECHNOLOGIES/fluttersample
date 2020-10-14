        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback_dto.g.dart';

abstract class FeedbackDTO implements Built<FeedbackDTO, FeedbackDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'branchId')
    int get branchId;
    
        @nullable
    @BuiltValueField(wireName: r'easeOfCommunication')
    int get easeOfCommunication;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'qualityOfService')
    int get qualityOfService;
    
        @nullable
    @BuiltValueField(wireName: r'score')
    int get score;
    
        @nullable
    @BuiltValueField(wireName: r'speedOfResponse')
    int get speedOfResponse;
    
        @nullable
    @BuiltValueField(wireName: r'suggestion')
    String get suggestion;

    // Boilerplate code needed to wire-up generated code
    FeedbackDTO._();

    factory FeedbackDTO([updates(FeedbackDTOBuilder b)]) = _$FeedbackDTO;
    static Serializer<FeedbackDTO> get serializer => _$feedbackDTOSerializer;

}

