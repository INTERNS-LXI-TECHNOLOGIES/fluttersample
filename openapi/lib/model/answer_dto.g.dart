// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnswerDTO> _$answerDTOSerializer = new _$AnswerDTOSerializer();

class _$AnswerDTOSerializer implements StructuredSerializer<AnswerDTO> {
  @override
  final Iterable<Type> types = const [AnswerDTO, _$AnswerDTO];
  @override
  final String wireName = 'AnswerDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, AnswerDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.answer != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(object.answer,
            specifiedType: const FullType(String)));
    }
    if (object.correctAnswer != null) {
      result
        ..add('correctAnswer')
        ..add(serializers.serialize(object.correctAnswer,
            specifiedType: const FullType(bool)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.questionId != null) {
      result
        ..add('questionId')
        ..add(serializers.serialize(object.questionId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AnswerDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswerDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'correctAnswer':
          result.correctAnswer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'questionId':
          result.questionId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AnswerDTO extends AnswerDTO {
  @override
  final String answer;
  @override
  final bool correctAnswer;
  @override
  final int id;
  @override
  final int questionId;

  factory _$AnswerDTO([void Function(AnswerDTOBuilder) updates]) =>
      (new AnswerDTOBuilder()..update(updates)).build();

  _$AnswerDTO._({this.answer, this.correctAnswer, this.id, this.questionId})
      : super._();

  @override
  AnswerDTO rebuild(void Function(AnswerDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerDTOBuilder toBuilder() => new AnswerDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerDTO &&
        answer == other.answer &&
        correctAnswer == other.correctAnswer &&
        id == other.id &&
        questionId == other.questionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, answer.hashCode), correctAnswer.hashCode), id.hashCode),
        questionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnswerDTO')
          ..add('answer', answer)
          ..add('correctAnswer', correctAnswer)
          ..add('id', id)
          ..add('questionId', questionId))
        .toString();
  }
}

class AnswerDTOBuilder implements Builder<AnswerDTO, AnswerDTOBuilder> {
  _$AnswerDTO _$v;

  String _answer;
  String get answer => _$this._answer;
  set answer(String answer) => _$this._answer = answer;

  bool _correctAnswer;
  bool get correctAnswer => _$this._correctAnswer;
  set correctAnswer(bool correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _questionId;
  int get questionId => _$this._questionId;
  set questionId(int questionId) => _$this._questionId = questionId;

  AnswerDTOBuilder();

  AnswerDTOBuilder get _$this {
    if (_$v != null) {
      _answer = _$v.answer;
      _correctAnswer = _$v.correctAnswer;
      _id = _$v.id;
      _questionId = _$v.questionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnswerDTO;
  }

  @override
  void update(void Function(AnswerDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnswerDTO build() {
    final _$result = _$v ??
        new _$AnswerDTO._(
            answer: answer,
            correctAnswer: correctAnswer,
            id: id,
            questionId: questionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
