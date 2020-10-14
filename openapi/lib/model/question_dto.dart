        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_dto.g.dart';

abstract class QuestionDTO implements Built<QuestionDTO, QuestionDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'promotionalMessageId')
    int get promotionalMessageId;
    
        @nullable
    @BuiltValueField(wireName: r'question')
    String get question;

    // Boilerplate code needed to wire-up generated code
    QuestionDTO._();

    factory QuestionDTO([updates(QuestionDTOBuilder b)]) = _$QuestionDTO;
    static Serializer<QuestionDTO> get serializer => _$questionDTOSerializer;

}

