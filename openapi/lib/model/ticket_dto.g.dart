// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketDTO> _$ticketDTOSerializer = new _$TicketDTOSerializer();

class _$TicketDTOSerializer implements StructuredSerializer<TicketDTO> {
  @override
  final Iterable<Type> types = const [TicketDTO, _$TicketDTO];
  @override
  final String wireName = 'TicketDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, TicketDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.attachedAudioId != null) {
      result
        ..add('attachedAudioId')
        ..add(serializers.serialize(object.attachedAudioId,
            specifiedType: const FullType(int)));
    }
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(int)));
    }
    if (object.feedbackId != null) {
      result
        ..add('feedbackId')
        ..add(serializers.serialize(object.feedbackId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.preferredAppointmentTime != null) {
      result
        ..add('preferredAppointmentTime')
        ..add(serializers.serialize(object.preferredAppointmentTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.ticketDescription != null) {
      result
        ..add('ticketDescription')
        ..add(serializers.serialize(object.ticketDescription,
            specifiedType: const FullType(String)));
    }
    if (object.ticketNumber != null) {
      result
        ..add('ticketNumber')
        ..add(serializers.serialize(object.ticketNumber,
            specifiedType: const FullType(String)));
    }
    if (object.ticketTitle != null) {
      result
        ..add('ticketTitle')
        ..add(serializers.serialize(object.ticketTitle,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TicketDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attachedAudioId':
          result.attachedAudioId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'feedbackId':
          result.feedbackId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'preferredAppointmentTime':
          result.preferredAppointmentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ticketDescription':
          result.ticketDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketNumber':
          result.ticketNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketTitle':
          result.ticketTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TicketDTO extends TicketDTO {
  @override
  final int attachedAudioId;
  @override
  final int customerId;
  @override
  final int feedbackId;
  @override
  final int id;
  @override
  final DateTime preferredAppointmentTime;
  @override
  final String ticketDescription;
  @override
  final String ticketNumber;
  @override
  final String ticketTitle;

  factory _$TicketDTO([void Function(TicketDTOBuilder) updates]) =>
      (new TicketDTOBuilder()..update(updates)).build();

  _$TicketDTO._(
      {this.attachedAudioId,
      this.customerId,
      this.feedbackId,
      this.id,
      this.preferredAppointmentTime,
      this.ticketDescription,
      this.ticketNumber,
      this.ticketTitle})
      : super._();

  @override
  TicketDTO rebuild(void Function(TicketDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketDTOBuilder toBuilder() => new TicketDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketDTO &&
        attachedAudioId == other.attachedAudioId &&
        customerId == other.customerId &&
        feedbackId == other.feedbackId &&
        id == other.id &&
        preferredAppointmentTime == other.preferredAppointmentTime &&
        ticketDescription == other.ticketDescription &&
        ticketNumber == other.ticketNumber &&
        ticketTitle == other.ticketTitle;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, attachedAudioId.hashCode),
                                customerId.hashCode),
                            feedbackId.hashCode),
                        id.hashCode),
                    preferredAppointmentTime.hashCode),
                ticketDescription.hashCode),
            ticketNumber.hashCode),
        ticketTitle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TicketDTO')
          ..add('attachedAudioId', attachedAudioId)
          ..add('customerId', customerId)
          ..add('feedbackId', feedbackId)
          ..add('id', id)
          ..add('preferredAppointmentTime', preferredAppointmentTime)
          ..add('ticketDescription', ticketDescription)
          ..add('ticketNumber', ticketNumber)
          ..add('ticketTitle', ticketTitle))
        .toString();
  }
}

class TicketDTOBuilder implements Builder<TicketDTO, TicketDTOBuilder> {
  _$TicketDTO _$v;

  int _attachedAudioId;
  int get attachedAudioId => _$this._attachedAudioId;
  set attachedAudioId(int attachedAudioId) =>
      _$this._attachedAudioId = attachedAudioId;

  int _customerId;
  int get customerId => _$this._customerId;
  set customerId(int customerId) => _$this._customerId = customerId;

  int _feedbackId;
  int get feedbackId => _$this._feedbackId;
  set feedbackId(int feedbackId) => _$this._feedbackId = feedbackId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _preferredAppointmentTime;
  DateTime get preferredAppointmentTime => _$this._preferredAppointmentTime;
  set preferredAppointmentTime(DateTime preferredAppointmentTime) =>
      _$this._preferredAppointmentTime = preferredAppointmentTime;

  String _ticketDescription;
  String get ticketDescription => _$this._ticketDescription;
  set ticketDescription(String ticketDescription) =>
      _$this._ticketDescription = ticketDescription;

  String _ticketNumber;
  String get ticketNumber => _$this._ticketNumber;
  set ticketNumber(String ticketNumber) => _$this._ticketNumber = ticketNumber;

  String _ticketTitle;
  String get ticketTitle => _$this._ticketTitle;
  set ticketTitle(String ticketTitle) => _$this._ticketTitle = ticketTitle;

  TicketDTOBuilder();

  TicketDTOBuilder get _$this {
    if (_$v != null) {
      _attachedAudioId = _$v.attachedAudioId;
      _customerId = _$v.customerId;
      _feedbackId = _$v.feedbackId;
      _id = _$v.id;
      _preferredAppointmentTime = _$v.preferredAppointmentTime;
      _ticketDescription = _$v.ticketDescription;
      _ticketNumber = _$v.ticketNumber;
      _ticketTitle = _$v.ticketTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TicketDTO;
  }

  @override
  void update(void Function(TicketDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TicketDTO build() {
    final _$result = _$v ??
        new _$TicketDTO._(
            attachedAudioId: attachedAudioId,
            customerId: customerId,
            feedbackId: feedbackId,
            id: id,
            preferredAppointmentTime: preferredAppointmentTime,
            ticketDescription: ticketDescription,
            ticketNumber: ticketNumber,
            ticketTitle: ticketTitle);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
