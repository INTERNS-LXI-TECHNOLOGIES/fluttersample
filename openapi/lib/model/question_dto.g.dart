// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionDTO> _$questionDTOSerializer = new _$QuestionDTOSerializer();

class _$QuestionDTOSerializer implements StructuredSerializer<QuestionDTO> {
  @override
  final Iterable<Type> types = const [QuestionDTO, _$QuestionDTO];
  @override
  final String wireName = 'QuestionDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, QuestionDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.promotionalMessageId != null) {
      result
        ..add('promotionalMessageId')
        ..add(serializers.serialize(object.promotionalMessageId,
            specifiedType: const FullType(int)));
    }
    if (object.question != null) {
      result
        ..add('question')
        ..add(serializers.serialize(object.question,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  QuestionDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionDTOBuilder();

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
        case 'promotionalMessageId':
          result.promotionalMessageId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionDTO extends QuestionDTO {
  @override
  final int id;
  @override
  final int promotionalMessageId;
  @override
  final String question;

  factory _$QuestionDTO([void Function(QuestionDTOBuilder) updates]) =>
      (new QuestionDTOBuilder()..update(updates)).build();

  _$QuestionDTO._({this.id, this.promotionalMessageId, this.question})
      : super._();

  @override
  QuestionDTO rebuild(void Function(QuestionDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionDTOBuilder toBuilder() => new QuestionDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionDTO &&
        id == other.id &&
        promotionalMessageId == other.promotionalMessageId &&
        question == other.question;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), promotionalMessageId.hashCode),
        question.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuestionDTO')
          ..add('id', id)
          ..add('promotionalMessageId', promotionalMessageId)
          ..add('question', question))
        .toString();
  }
}

class QuestionDTOBuilder implements Builder<QuestionDTO, QuestionDTOBuilder> {
  _$QuestionDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _promotionalMessageId;
  int get promotionalMessageId => _$this._promotionalMessageId;
  set promotionalMessageId(int promotionalMessageId) =>
      _$this._promotionalMessageId = promotionalMessageId;

  String _question;
  String get question => _$this._question;
  set question(String question) => _$this._question = question;

  QuestionDTOBuilder();

  QuestionDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _promotionalMessageId = _$v.promotionalMessageId;
      _question = _$v.question;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$QuestionDTO;
  }

  @override
  void update(void Function(QuestionDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionDTO build() {
    final _$result = _$v ??
        new _$QuestionDTO._(
            id: id,
            promotionalMessageId: promotionalMessageId,
            question: question);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
