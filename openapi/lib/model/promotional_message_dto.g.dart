// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotional_message_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PromotionalMessageDTO> _$promotionalMessageDTOSerializer =
    new _$PromotionalMessageDTOSerializer();

class _$PromotionalMessageDTOSerializer
    implements StructuredSerializer<PromotionalMessageDTO> {
  @override
  final Iterable<Type> types = const [
    PromotionalMessageDTO,
    _$PromotionalMessageDTO
  ];
  @override
  final String wireName = 'PromotionalMessageDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PromotionalMessageDTO object,
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
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.imageContentType != null) {
      result
        ..add('imageContentType')
        ..add(serializers.serialize(object.imageContentType,
            specifiedType: const FullType(String)));
    }
    if (object.loyaltyProgramId != null) {
      result
        ..add('loyaltyProgramId')
        ..add(serializers.serialize(object.loyaltyProgramId,
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
  PromotionalMessageDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PromotionalMessageDTOBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageContentType':
          result.imageContentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loyaltyProgramId':
          result.loyaltyProgramId = serializers.deserialize(value,
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

class _$PromotionalMessageDTO extends PromotionalMessageDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String image;
  @override
  final String imageContentType;
  @override
  final int loyaltyProgramId;
  @override
  final String title;

  factory _$PromotionalMessageDTO(
          [void Function(PromotionalMessageDTOBuilder) updates]) =>
      (new PromotionalMessageDTOBuilder()..update(updates)).build();

  _$PromotionalMessageDTO._(
      {this.description,
      this.id,
      this.image,
      this.imageContentType,
      this.loyaltyProgramId,
      this.title})
      : super._();

  @override
  PromotionalMessageDTO rebuild(
          void Function(PromotionalMessageDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromotionalMessageDTOBuilder toBuilder() =>
      new PromotionalMessageDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromotionalMessageDTO &&
        description == other.description &&
        id == other.id &&
        image == other.image &&
        imageContentType == other.imageContentType &&
        loyaltyProgramId == other.loyaltyProgramId &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, description.hashCode), id.hashCode),
                    image.hashCode),
                imageContentType.hashCode),
            loyaltyProgramId.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PromotionalMessageDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('image', image)
          ..add('imageContentType', imageContentType)
          ..add('loyaltyProgramId', loyaltyProgramId)
          ..add('title', title))
        .toString();
  }
}

class PromotionalMessageDTOBuilder
    implements Builder<PromotionalMessageDTO, PromotionalMessageDTOBuilder> {
  _$PromotionalMessageDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _imageContentType;
  String get imageContentType => _$this._imageContentType;
  set imageContentType(String imageContentType) =>
      _$this._imageContentType = imageContentType;

  int _loyaltyProgramId;
  int get loyaltyProgramId => _$this._loyaltyProgramId;
  set loyaltyProgramId(int loyaltyProgramId) =>
      _$this._loyaltyProgramId = loyaltyProgramId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  PromotionalMessageDTOBuilder();

  PromotionalMessageDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _image = _$v.image;
      _imageContentType = _$v.imageContentType;
      _loyaltyProgramId = _$v.loyaltyProgramId;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromotionalMessageDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PromotionalMessageDTO;
  }

  @override
  void update(void Function(PromotionalMessageDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PromotionalMessageDTO build() {
    final _$result = _$v ??
        new _$PromotionalMessageDTO._(
            description: description,
            id: id,
            image: image,
            imageContentType: imageContentType,
            loyaltyProgramId: loyaltyProgramId,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
