        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_history_dto.g.dart';

abstract class TicketHistoryDTO implements Built<TicketHistoryDTO, TicketHistoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'assignedByCallCenterExecutiveId')
    int get assignedByCallCenterExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'callCenterExecutiveId')
    int get callCenterExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'loggedDate')
    DateTime get loggedDate;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutiveId')
    int get serviceExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'serviceStatus')
    String get serviceStatus;
        //enum serviceStatusEnum {  OPEN,  INPROGRESS,  PENDING,  REPAIR_PENDING,  CANCELLED,  ELIGIBLETOCLOSE,  CLOSED,  VERIFIED,  };
    
        @nullable
    @BuiltValueField(wireName: r'ticketId')
    int get ticketId;
    
        @nullable
    @BuiltValueField(wireName: r'ticketLog')
    String get ticketLog;
    
        @nullable
    @BuiltValueField(wireName: r'verifiedStatus')
    String get verifiedStatus;
        //enum verifiedStatusEnum {  OPEN,  APPROVED,  VERIFIED,  NEEDSDOUBLECHECK,  NOTAPPROVED,  };

    // Boilerplate code needed to wire-up generated code
    TicketHistoryDTO._();

    factory TicketHistoryDTO([updates(TicketHistoryDTOBuilder b)]) = _$TicketHistoryDTO;
    static Serializer<TicketHistoryDTO> get serializer => _$ticketHistoryDTOSerializer;

}

