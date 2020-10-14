        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_executive_rating_dto.g.dart';

abstract class ServiceExecutiveRatingDTO implements Built<ServiceExecutiveRatingDTO, ServiceExecutiveRatingDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'easeOfCommunication')
    double get easeOfCommunication;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'overallRating')
    double get overallRating;
    
        @nullable
    @BuiltValueField(wireName: r'qualityOfService')
    double get qualityOfService;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutiveId')
    int get serviceExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'speedOfResponse')
    double get speedOfResponse;
    
        @nullable
    @BuiltValueField(wireName: r'totalFeedbacks')
    int get totalFeedbacks;

    // Boilerplate code needed to wire-up generated code
    ServiceExecutiveRatingDTO._();

    factory ServiceExecutiveRatingDTO([updates(ServiceExecutiveRatingDTOBuilder b)]) = _$ServiceExecutiveRatingDTO;
    static Serializer<ServiceExecutiveRatingDTO> get serializer => _$serviceExecutiveRatingDTOSerializer;

}

