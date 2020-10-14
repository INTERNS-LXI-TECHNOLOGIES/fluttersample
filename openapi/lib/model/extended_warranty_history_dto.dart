        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_warranty_history_dto.g.dart';

abstract class ExtendedWarrantyHistoryDTO implements Built<ExtendedWarrantyHistoryDTO, ExtendedWarrantyHistoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'extendedWarrantyId')
    int get extendedWarrantyId;
    
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
    ExtendedWarrantyHistoryDTO._();

    factory ExtendedWarrantyHistoryDTO([updates(ExtendedWarrantyHistoryDTOBuilder b)]) = _$ExtendedWarrantyHistoryDTO;
    static Serializer<ExtendedWarrantyHistoryDTO> get serializer => _$extendedWarrantyHistoryDTOSerializer;

}

