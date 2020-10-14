        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'amc_history_dto.g.dart';

abstract class AMCHistoryDTO implements Built<AMCHistoryDTO, AMCHistoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amcId')
    int get amcId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'loggedDate')
    DateTime get loggedDate;
    
        @nullable
    @BuiltValueField(wireName: r'purchasedProductId')
    int get purchasedProductId;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyLog')
    String get warrantyLog;

    // Boilerplate code needed to wire-up generated code
    AMCHistoryDTO._();

    factory AMCHistoryDTO([updates(AMCHistoryDTOBuilder b)]) = _$AMCHistoryDTO;
    static Serializer<AMCHistoryDTO> get serializer => _$aMCHistoryDTOSerializer;

}

