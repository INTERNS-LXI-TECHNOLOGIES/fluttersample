// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AudioDTO> _$audioDTOSerializer = new _$AudioDTOSerializer();

class _$AudioDTOSerializer implements StructuredSerializer<AudioDTO> {
  @override
  final Iterable<Type> types = const [AudioDTO, _$AudioDTO];
  @override
  final String wireName = 'AudioDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, AudioDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.recordedAudio != null) {
      result
        ..add('recordedAudio')
        ..add(serializers.serialize(object.recordedAudio,
            specifiedType: const FullType(String)));
    }
    if (object.recordedAudioContentType != null) {
      result
        ..add('recordedAudioContentType')
        ..add(serializers.serialize(object.recordedAudioContentType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AudioDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AudioDTOBuilder();

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
        case 'recordedAudio':
          result.recordedAudio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recordedAudioContentType':
          result.recordedAudioContentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AudioDTO extends AudioDTO {
  @override
  final int id;
  @override
  final String recordedAudio;
  @override
  final String recordedAudioContentType;

  factory _$AudioDTO([void Function(AudioDTOBuilder) updates]) =>
      (new AudioDTOBuilder()..update(updates)).build();

  _$AudioDTO._({this.id, this.recordedAudio, this.recordedAudioContentType})
      : super._();

  @override
  AudioDTO rebuild(void Function(AudioDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AudioDTOBuilder toBuilder() => new AudioDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AudioDTO &&
        id == other.id &&
        recordedAudio == other.recordedAudio &&
        recordedAudioContentType == other.recordedAudioContentType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), recordedAudio.hashCode),
        recordedAudioContentType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AudioDTO')
          ..add('id', id)
          ..add('recordedAudio', recordedAudio)
          ..add('recordedAudioContentType', recordedAudioContentType))
        .toString();
  }
}

class AudioDTOBuilder implements Builder<AudioDTO, AudioDTOBuilder> {
  _$AudioDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _recordedAudio;
  String get recordedAudio => _$this._recordedAudio;
  set recordedAudio(String recordedAudio) =>
      _$this._recordedAudio = recordedAudio;

  String _recordedAudioContentType;
  String get recordedAudioContentType => _$this._recordedAudioContentType;
  set recordedAudioContentType(String recordedAudioContentType) =>
      _$this._recordedAudioContentType = recordedAudioContentType;

  AudioDTOBuilder();

  AudioDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _recordedAudio = _$v.recordedAudio;
      _recordedAudioContentType = _$v.recordedAudioContentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AudioDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AudioDTO;
  }

  @override
  void update(void Function(AudioDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AudioDTO build() {
    final _$result = _$v ??
        new _$AudioDTO._(
            id: id,
            recordedAudio: recordedAudio,
            recordedAudioContentType: recordedAudioContentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
