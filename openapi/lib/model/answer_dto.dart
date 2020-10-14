        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_dto.g.dart';

abstract class AnswerDTO implements Built<AnswerDTO, AnswerDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'answer')
    String get answer;
    
        @nullable
    @BuiltValueField(wireName: r'correctAnswer')
    bool get correctAnswer;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'questionId')
    int get questionId;

    // Boilerplate code needed to wire-up generated code
    AnswerDTO._();

    factory AnswerDTO([updates(AnswerDTOBuilder b)]) = _$AnswerDTO;
    static Serializer<AnswerDTO> get serializer => _$answerDTOSerializer;

}

