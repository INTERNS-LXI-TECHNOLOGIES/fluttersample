        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_dto.g.dart';

abstract class MessageDTO implements Built<MessageDTO, MessageDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'attachment')
    String get attachment;
    
        @nullable
    @BuiltValueField(wireName: r'attachmentContentType')
    String get attachmentContentType;
    
        @nullable
    @BuiltValueField(wireName: r'callCenterExecutiveId')
    int get callCenterExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    int get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutiveId')
    int get serviceExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'subject')
    String get subject;
    
        @nullable
    @BuiltValueField(wireName: r'ticketId')
    int get ticketId;
    
        @nullable
    @BuiltValueField(wireName: r'time')
    DateTime get time;
    
        @nullable
    @BuiltValueField(wireName: r'visibleToCustomer')
    bool get visibleToCustomer;

    // Boilerplate code needed to wire-up generated code
    MessageDTO._();

    factory MessageDTO([updates(MessageDTOBuilder b)]) = _$MessageDTO;
    static Serializer<MessageDTO> get serializer => _$messageDTOSerializer;

}

