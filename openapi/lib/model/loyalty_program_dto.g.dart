// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoyaltyProgramDTO> _$loyaltyProgramDTOSerializer =
    new _$LoyaltyProgramDTOSerializer();

class _$LoyaltyProgramDTOSerializer
    implements StructuredSerializer<LoyaltyProgramDTO> {
  @override
  final Iterable<Type> types = const [LoyaltyProgramDTO, _$LoyaltyProgramDTO];
  @override
  final String wireName = 'LoyaltyProgramDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, LoyaltyProgramDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.endingDate != null) {
      result
        ..add('endingDate')
        ..add(serializers.serialize(object.endingDate,
            specifiedType: const FullType(DateTime)));
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
    if (object.startingDate != null) {
      result
        ..add('startingDate')
        ..add(serializers.serialize(object.startingDate,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  LoyaltyProgramDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoyaltyProgramDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endingDate':
          result.endingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startingDate':
          result.startingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$LoyaltyProgramDTO extends LoyaltyProgramDTO {
  @override
  final String description;
  @override
  final DateTime endingDate;
  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime startingDate;

  factory _$LoyaltyProgramDTO(
          [void Function(LoyaltyProgramDTOBuilder) updates]) =>
      (new LoyaltyProgramDTOBuilder()..update(updates)).build();

  _$LoyaltyProgramDTO._(
      {this.description,
      this.endingDate,
      this.id,
      this.name,
      this.startingDate})
      : super._();

  @override
  LoyaltyProgramDTO rebuild(void Function(LoyaltyProgramDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoyaltyProgramDTOBuilder toBuilder() =>
      new LoyaltyProgramDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoyaltyProgramDTO &&
        description == other.description &&
        endingDate == other.endingDate &&
        id == other.id &&
        name == other.name &&
        startingDate == other.startingDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, description.hashCode), endingDate.hashCode),
                id.hashCode),
            name.hashCode),
        startingDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoyaltyProgramDTO')
          ..add('description', description)
          ..add('endingDate', endingDate)
          ..add('id', id)
          ..add('name', name)
          ..add('startingDate', startingDate))
        .toString();
  }
}

class LoyaltyProgramDTOBuilder
    implements Builder<LoyaltyProgramDTO, LoyaltyProgramDTOBuilder> {
  _$LoyaltyProgramDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _endingDate;
  DateTime get endingDate => _$this._endingDate;
  set endingDate(DateTime endingDate) => _$this._endingDate = endingDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _startingDate;
  DateTime get startingDate => _$this._startingDate;
  set startingDate(DateTime startingDate) =>
      _$this._startingDate = startingDate;

  LoyaltyProgramDTOBuilder();

  LoyaltyProgramDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _endingDate = _$v.endingDate;
      _id = _$v.id;
      _name = _$v.name;
      _startingDate = _$v.startingDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoyaltyProgramDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoyaltyProgramDTO;
  }

  @override
  void update(void Function(LoyaltyProgramDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoyaltyProgramDTO build() {
    final _$result = _$v ??
        new _$LoyaltyProgramDTO._(
            description: description,
            endingDate: endingDate,
            id: id,
            name: name,
            startingDate: startingDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
