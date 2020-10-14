        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'amcdto.g.dart';

abstract class AMCDTO implements Built<AMCDTO, AMCDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'periodInMonths')
    int get periodInMonths;
    
        @nullable
    @BuiltValueField(wireName: r'periodInYear')
    int get periodInYear;

    // Boilerplate code needed to wire-up generated code
    AMCDTO._();

    factory AMCDTO([updates(AMCDTOBuilder b)]) = _$AMCDTO;
    static Serializer<AMCDTO> get serializer => _$aMCDTOSerializer;

}

