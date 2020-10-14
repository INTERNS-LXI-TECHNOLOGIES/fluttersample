// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageDTO> _$messageDTOSerializer = new _$MessageDTOSerializer();

class _$MessageDTOSerializer implements StructuredSerializer<MessageDTO> {
  @override
  final Iterable<Type> types = const [MessageDTO, _$MessageDTO];
  @override
  final String wireName = 'MessageDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, MessageDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.attachment != null) {
      result
        ..add('attachment')
        ..add(serializers.serialize(object.attachment,
            specifiedType: const FullType(String)));
    }
    if (object.attachmentContentType != null) {
      result
        ..add('attachmentContentType')
        ..add(serializers.serialize(object.attachmentContentType,
            specifiedType: const FullType(String)));
    }
    if (object.callCenterExecutiveId != null) {
      result
        ..add('callCenterExecutiveId')
        ..add(serializers.serialize(object.callCenterExecutiveId,
            specifiedType: const FullType(int)));
    }
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.serviceExecutiveId != null) {
      result
        ..add('serviceExecutiveId')
        ..add(serializers.serialize(object.serviceExecutiveId,
            specifiedType: const FullType(int)));
    }
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(String)));
    }
    if (object.ticketId != null) {
      result
        ..add('ticketId')
        ..add(serializers.serialize(object.ticketId,
            specifiedType: const FullType(int)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(DateTime)));
    }
    if (object.visibleToCustomer != null) {
      result
        ..add('visibleToCustomer')
        ..add(serializers.serialize(object.visibleToCustomer,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  MessageDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attachment':
          result.attachment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attachmentContentType':
          result.attachmentContentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'callCenterExecutiveId':
          result.callCenterExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceExecutiveId':
          result.serviceExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketId':
          result.ticketId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'visibleToCustomer':
          result.visibleToCustomer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$MessageDTO extends MessageDTO {
  @override
  final String attachment;
  @override
  final String attachmentContentType;
  @override
  final int callCenterExecutiveId;
  @override
  final int customerId;
  @override
  final int id;
  @override
  final String message;
  @override
  final int serviceExecutiveId;
  @override
  final String subject;
  @override
  final int ticketId;
  @override
  final DateTime time;
  @override
  final bool visibleToCustomer;

  factory _$MessageDTO([void Function(MessageDTOBuilder) updates]) =>
      (new MessageDTOBuilder()..update(updates)).build();

  _$MessageDTO._(
      {this.attachment,
      this.attachmentContentType,
      this.callCenterExecutiveId,
      this.customerId,
      this.id,
      this.message,
      this.serviceExecutiveId,
      this.subject,
      this.ticketId,
      this.time,
      this.visibleToCustomer})
      : super._();

  @override
  MessageDTO rebuild(void Function(MessageDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageDTOBuilder toBuilder() => new MessageDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageDTO &&
        attachment == other.attachment &&
        attachmentContentType == other.attachmentContentType &&
        callCenterExecutiveId == other.callCenterExecutiveId &&
        customerId == other.customerId &&
        id == other.id &&
        message == other.message &&
        serviceExecutiveId == other.serviceExecutiveId &&
        subject == other.subject &&
        ticketId == other.ticketId &&
        time == other.time &&
        visibleToCustomer == other.visibleToCustomer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, attachment.hashCode),
                                            attachmentContentType.hashCode),
                                        callCenterExecutiveId.hashCode),
                                    customerId.hashCode),
                                id.hashCode),
                            message.hashCode),
                        serviceExecutiveId.hashCode),
                    subject.hashCode),
                ticketId.hashCode),
            time.hashCode),
        visibleToCustomer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessageDTO')
          ..add('attachment', attachment)
          ..add('attachmentContentType', attachmentContentType)
          ..add('callCenterExecutiveId', callCenterExecutiveId)
          ..add('customerId', customerId)
          ..add('id', id)
          ..add('message', message)
          ..add('serviceExecutiveId', serviceExecutiveId)
          ..add('subject', subject)
          ..add('ticketId', ticketId)
          ..add('time', time)
          ..add('visibleToCustomer', visibleToCustomer))
        .toString();
  }
}

class MessageDTOBuilder implements Builder<MessageDTO, MessageDTOBuilder> {
  _$MessageDTO _$v;

  String _attachment;
  String get attachment => _$this._attachment;
  set attachment(String attachment) => _$this._attachment = attachment;

  String _attachmentContentType;
  String get attachmentContentType => _$this._attachmentContentType;
  set attachmentContentType(String attachmentContentType) =>
      _$this._attachmentContentType = attachmentContentType;

  int _callCenterExecutiveId;
  int get callCenterExecutiveId => _$this._callCenterExecutiveId;
  set callCenterExecutiveId(int callCenterExecutiveId) =>
      _$this._callCenterExecutiveId = callCenterExecutiveId;

  int _customerId;
  int get customerId => _$this._customerId;
  set customerId(int customerId) => _$this._customerId = customerId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _serviceExecutiveId;
  int get serviceExecutiveId => _$this._serviceExecutiveId;
  set serviceExecutiveId(int serviceExecutiveId) =>
      _$this._serviceExecutiveId = serviceExecutiveId;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  int _ticketId;
  int get ticketId => _$this._ticketId;
  set ticketId(int ticketId) => _$this._ticketId = ticketId;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  bool _visibleToCustomer;
  bool get visibleToCustomer => _$this._visibleToCustomer;
  set visibleToCustomer(bool visibleToCustomer) =>
      _$this._visibleToCustomer = visibleToCustomer;

  MessageDTOBuilder();

  MessageDTOBuilder get _$this {
    if (_$v != null) {
      _attachment = _$v.attachment;
      _attachmentContentType = _$v.attachmentContentType;
      _callCenterExecutiveId = _$v.callCenterExecutiveId;
      _customerId = _$v.customerId;
      _id = _$v.id;
      _message = _$v.message;
      _serviceExecutiveId = _$v.serviceExecutiveId;
      _subject = _$v.subject;
      _ticketId = _$v.ticketId;
      _time = _$v.time;
      _visibleToCustomer = _$v.visibleToCustomer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MessageDTO;
  }

  @override
  void update(void Function(MessageDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageDTO build() {
    final _$result = _$v ??
        new _$MessageDTO._(
            attachment: attachment,
            attachmentContentType: attachmentContentType,
            callCenterExecutiveId: callCenterExecutiveId,
            customerId: customerId,
            id: id,
            message: message,
            serviceExecutiveId: serviceExecutiveId,
            subject: subject,
            ticketId: ticketId,
            time: time,
            visibleToCustomer: visibleToCustomer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
