        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_dto.g.dart';

abstract class TicketDTO implements Built<TicketDTO, TicketDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'attachedAudioId')
    int get attachedAudioId;
    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    int get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'feedbackId')
    int get feedbackId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'preferredAppointmentTime')
    DateTime get preferredAppointmentTime;
    
        @nullable
    @BuiltValueField(wireName: r'ticketDescription')
    String get ticketDescription;
    
        @nullable
    @BuiltValueField(wireName: r'ticketNumber')
    String get ticketNumber;
    
        @nullable
    @BuiltValueField(wireName: r'ticketTitle')
    String get ticketTitle;

    // Boilerplate code needed to wire-up generated code
    TicketDTO._();

    factory TicketDTO([updates(TicketDTOBuilder b)]) = _$TicketDTO;
    static Serializer<TicketDTO> get serializer => _$ticketDTOSerializer;

}

