// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackDTO> _$feedbackDTOSerializer = new _$FeedbackDTOSerializer();

class _$FeedbackDTOSerializer implements StructuredSerializer<FeedbackDTO> {
  @override
  final Iterable<Type> types = const [FeedbackDTO, _$FeedbackDTO];
  @override
  final String wireName = 'FeedbackDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedbackDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branchId != null) {
      result
        ..add('branchId')
        ..add(serializers.serialize(object.branchId,
            specifiedType: const FullType(int)));
    }
    if (object.easeOfCommunication != null) {
      result
        ..add('easeOfCommunication')
        ..add(serializers.serialize(object.easeOfCommunication,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.qualityOfService != null) {
      result
        ..add('qualityOfService')
        ..add(serializers.serialize(object.qualityOfService,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.speedOfResponse != null) {
      result
        ..add('speedOfResponse')
        ..add(serializers.serialize(object.speedOfResponse,
            specifiedType: const FullType(int)));
    }
    if (object.suggestion != null) {
      result
        ..add('suggestion')
        ..add(serializers.serialize(object.suggestion,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FeedbackDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branchId':
          result.branchId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'easeOfCommunication':
          result.easeOfCommunication = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qualityOfService':
          result.qualityOfService = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'speedOfResponse':
          result.speedOfResponse = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'suggestion':
          result.suggestion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedbackDTO extends FeedbackDTO {
  @override
  final int branchId;
  @override
  final int easeOfCommunication;
  @override
  final int id;
  @override
  final int qualityOfService;
  @override
  final int score;
  @override
  final int speedOfResponse;
  @override
  final String suggestion;

  factory _$FeedbackDTO([void Function(FeedbackDTOBuilder) updates]) =>
      (new FeedbackDTOBuilder()..update(updates)).build();

  _$FeedbackDTO._(
      {this.branchId,
      this.easeOfCommunication,
      this.id,
      this.qualityOfService,
      this.score,
      this.speedOfResponse,
      this.suggestion})
      : super._();

  @override
  FeedbackDTO rebuild(void Function(FeedbackDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackDTOBuilder toBuilder() => new FeedbackDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackDTO &&
        branchId == other.branchId &&
        easeOfCommunication == other.easeOfCommunication &&
        id == other.id &&
        qualityOfService == other.qualityOfService &&
        score == other.score &&
        speedOfResponse == other.speedOfResponse &&
        suggestion == other.suggestion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, branchId.hashCode),
                            easeOfCommunication.hashCode),
                        id.hashCode),
                    qualityOfService.hashCode),
                score.hashCode),
            speedOfResponse.hashCode),
        suggestion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedbackDTO')
          ..add('branchId', branchId)
          ..add('easeOfCommunication', easeOfCommunication)
          ..add('id', id)
          ..add('qualityOfService', qualityOfService)
          ..add('score', score)
          ..add('speedOfResponse', speedOfResponse)
          ..add('suggestion', suggestion))
        .toString();
  }
}

class FeedbackDTOBuilder implements Builder<FeedbackDTO, FeedbackDTOBuilder> {
  _$FeedbackDTO _$v;

  int _branchId;
  int get branchId => _$this._branchId;
  set branchId(int branchId) => _$this._branchId = branchId;

  int _easeOfCommunication;
  int get easeOfCommunication => _$this._easeOfCommunication;
  set easeOfCommunication(int easeOfCommunication) =>
      _$this._easeOfCommunication = easeOfCommunication;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _qualityOfService;
  int get qualityOfService => _$this._qualityOfService;
  set qualityOfService(int qualityOfService) =>
      _$this._qualityOfService = qualityOfService;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _speedOfResponse;
  int get speedOfResponse => _$this._speedOfResponse;
  set speedOfResponse(int speedOfResponse) =>
      _$this._speedOfResponse = speedOfResponse;

  String _suggestion;
  String get suggestion => _$this._suggestion;
  set suggestion(String suggestion) => _$this._suggestion = suggestion;

  FeedbackDTOBuilder();

  FeedbackDTOBuilder get _$this {
    if (_$v != null) {
      _branchId = _$v.branchId;
      _easeOfCommunication = _$v.easeOfCommunication;
      _id = _$v.id;
      _qualityOfService = _$v.qualityOfService;
      _score = _$v.score;
      _speedOfResponse = _$v.speedOfResponse;
      _suggestion = _$v.suggestion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedbackDTO;
  }

  @override
  void update(void Function(FeedbackDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedbackDTO build() {
    final _$result = _$v ??
        new _$FeedbackDTO._(
            branchId: branchId,
            easeOfCommunication: easeOfCommunication,
            id: id,
            qualityOfService: qualityOfService,
            score: score,
            speedOfResponse: speedOfResponse,
            suggestion: suggestion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
