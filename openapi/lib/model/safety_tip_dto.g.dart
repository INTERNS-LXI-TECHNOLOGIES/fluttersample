// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_tip_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SafetyTipDTO> _$safetyTipDTOSerializer =
    new _$SafetyTipDTOSerializer();

class _$SafetyTipDTOSerializer implements StructuredSerializer<SafetyTipDTO> {
  @override
  final Iterable<Type> types = const [SafetyTipDTO, _$SafetyTipDTO];
  @override
  final String wireName = 'SafetyTipDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, SafetyTipDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SafetyTipDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SafetyTipDTOBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SafetyTipDTO extends SafetyTipDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String title;

  factory _$SafetyTipDTO([void Function(SafetyTipDTOBuilder) updates]) =>
      (new SafetyTipDTOBuilder()..update(updates)).build();

  _$SafetyTipDTO._({this.description, this.id, this.title}) : super._();

  @override
  SafetyTipDTO rebuild(void Function(SafetyTipDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SafetyTipDTOBuilder toBuilder() => new SafetyTipDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SafetyTipDTO &&
        description == other.description &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, description.hashCode), id.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SafetyTipDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class SafetyTipDTOBuilder
    implements Builder<SafetyTipDTO, SafetyTipDTOBuilder> {
  _$SafetyTipDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  SafetyTipDTOBuilder();

  SafetyTipDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SafetyTipDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SafetyTipDTO;
  }

  @override
  void update(void Function(SafetyTipDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SafetyTipDTO build() {
    final _$result = _$v ??
        new _$SafetyTipDTO._(description: description, id: id, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
