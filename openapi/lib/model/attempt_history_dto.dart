        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attempt_history_dto.g.dart';

abstract class AttemptHistoryDTO implements Built<AttemptHistoryDTO, AttemptHistoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'address')
    String get address;
    
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
    @BuiltValueField(wireName: r'phoneNumber')
    String get phoneNumber;
    
        @nullable
    @BuiltValueField(wireName: r'pointsCollected')
    int get pointsCollected;
    
        @nullable
    @BuiltValueField(wireName: r'promotionalMessageId')
    int get promotionalMessageId;
    
        @nullable
    @BuiltValueField(wireName: r'timeStamp')
    DateTime get timeStamp;

    // Boilerplate code needed to wire-up generated code
    AttemptHistoryDTO._();

    factory AttemptHistoryDTO([updates(AttemptHistoryDTOBuilder b)]) = _$AttemptHistoryDTO;
    static Serializer<AttemptHistoryDTO> get serializer => _$attemptHistoryDTOSerializer;

}

