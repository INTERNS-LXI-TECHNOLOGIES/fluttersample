// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attempt_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttemptHistoryDTO> _$attemptHistoryDTOSerializer =
    new _$AttemptHistoryDTOSerializer();

class _$AttemptHistoryDTOSerializer
    implements StructuredSerializer<AttemptHistoryDTO> {
  @override
  final Iterable<Type> types = const [AttemptHistoryDTO, _$AttemptHistoryDTO];
  @override
  final String wireName = 'AttemptHistoryDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, AttemptHistoryDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.pointsCollected != null) {
      result
        ..add('pointsCollected')
        ..add(serializers.serialize(object.pointsCollected,
            specifiedType: const FullType(int)));
    }
    if (object.promotionalMessageId != null) {
      result
        ..add('promotionalMessageId')
        ..add(serializers.serialize(object.promotionalMessageId,
            specifiedType: const FullType(int)));
    }
    if (object.timeStamp != null) {
      result
        ..add('timeStamp')
        ..add(serializers.serialize(object.timeStamp,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  AttemptHistoryDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttemptHistoryDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pointsCollected':
          result.pointsCollected = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'promotionalMessageId':
          result.promotionalMessageId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'timeStamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$AttemptHistoryDTO extends AttemptHistoryDTO {
  @override
  final String address;
  @override
  final String email;
  @override
  final int id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final int pointsCollected;
  @override
  final int promotionalMessageId;
  @override
  final DateTime timeStamp;

  factory _$AttemptHistoryDTO(
          [void Function(AttemptHistoryDTOBuilder) updates]) =>
      (new AttemptHistoryDTOBuilder()..update(updates)).build();

  _$AttemptHistoryDTO._(
      {this.address,
      this.email,
      this.id,
      this.name,
      this.phoneNumber,
      this.pointsCollected,
      this.promotionalMessageId,
      this.timeStamp})
      : super._();

  @override
  AttemptHistoryDTO rebuild(void Function(AttemptHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttemptHistoryDTOBuilder toBuilder() =>
      new AttemptHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttemptHistoryDTO &&
        address == other.address &&
        email == other.email &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        pointsCollected == other.pointsCollected &&
        promotionalMessageId == other.promotionalMessageId &&
        timeStamp == other.timeStamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, address.hashCode), email.hashCode),
                            id.hashCode),
                        name.hashCode),
                    phoneNumber.hashCode),
                pointsCollected.hashCode),
            promotionalMessageId.hashCode),
        timeStamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttemptHistoryDTO')
          ..add('address', address)
          ..add('email', email)
          ..add('id', id)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('pointsCollected', pointsCollected)
          ..add('promotionalMessageId', promotionalMessageId)
          ..add('timeStamp', timeStamp))
        .toString();
  }
}

class AttemptHistoryDTOBuilder
    implements Builder<AttemptHistoryDTO, AttemptHistoryDTOBuilder> {
  _$AttemptHistoryDTO _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _pointsCollected;
  int get pointsCollected => _$this._pointsCollected;
  set pointsCollected(int pointsCollected) =>
      _$this._pointsCollected = pointsCollected;

  int _promotionalMessageId;
  int get promotionalMessageId => _$this._promotionalMessageId;
  set promotionalMessageId(int promotionalMessageId) =>
      _$this._promotionalMessageId = promotionalMessageId;

  DateTime _timeStamp;
  DateTime get timeStamp => _$this._timeStamp;
  set timeStamp(DateTime timeStamp) => _$this._timeStamp = timeStamp;

  AttemptHistoryDTOBuilder();

  AttemptHistoryDTOBuilder get _$this {
    if (_$v != null) {
      _address = _$v.address;
      _email = _$v.email;
      _id = _$v.id;
      _name = _$v.name;
      _phoneNumber = _$v.phoneNumber;
      _pointsCollected = _$v.pointsCollected;
      _promotionalMessageId = _$v.promotionalMessageId;
      _timeStamp = _$v.timeStamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttemptHistoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttemptHistoryDTO;
  }

  @override
  void update(void Function(AttemptHistoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttemptHistoryDTO build() {
    final _$result = _$v ??
        new _$AttemptHistoryDTO._(
            address: address,
            email: email,
            id: id,
            name: name,
            phoneNumber: phoneNumber,
            pointsCollected: pointsCollected,
            promotionalMessageId: promotionalMessageId,
            timeStamp: timeStamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
