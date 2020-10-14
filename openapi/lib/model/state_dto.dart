        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'state_dto.g.dart';

abstract class StateDTO implements Built<StateDTO, StateDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    // Boilerplate code needed to wire-up generated code
    StateDTO._();

    factory StateDTO([updates(StateDTOBuilder b)]) = _$StateDTO;
    static Serializer<StateDTO> get serializer => _$stateDTOSerializer;

}

