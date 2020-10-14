// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StateDTO> _$stateDTOSerializer = new _$StateDTOSerializer();

class _$StateDTOSerializer implements StructuredSerializer<StateDTO> {
  @override
  final Iterable<Type> types = const [StateDTO, _$StateDTO];
  @override
  final String wireName = 'StateDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, StateDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StateDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StateDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StateDTO extends StateDTO {
  @override
  final int id;
  @override
  final String state;

  factory _$StateDTO([void Function(StateDTOBuilder) updates]) =>
      (new StateDTOBuilder()..update(updates)).build();

  _$StateDTO._({this.id, this.state}) : super._();

  @override
  StateDTO rebuild(void Function(StateDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StateDTOBuilder toBuilder() => new StateDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StateDTO && id == other.id && state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StateDTO')
          ..add('id', id)
          ..add('state', state))
        .toString();
  }
}

class StateDTOBuilder implements Builder<StateDTO, StateDTOBuilder> {
  _$StateDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  StateDTOBuilder();

  StateDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StateDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StateDTO;
  }

  @override
  void update(void Function(StateDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StateDTO build() {
    final _$result = _$v ?? new _$StateDTO._(id: id, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
