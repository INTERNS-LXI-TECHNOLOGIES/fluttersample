        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_dto.g.dart';

abstract class AudioDTO implements Built<AudioDTO, AudioDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'recordedAudio')
    String get recordedAudio;
    
        @nullable
    @BuiltValueField(wireName: r'recordedAudioContentType')
    String get recordedAudioContentType;

    // Boilerplate code needed to wire-up generated code
    AudioDTO._();

    factory AudioDTO([updates(AudioDTOBuilder b)]) = _$AudioDTO;
    static Serializer<AudioDTO> get serializer => _$audioDTOSerializer;

}

