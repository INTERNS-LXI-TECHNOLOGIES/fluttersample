// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_warranty_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExtendedWarrantyHistoryDTO> _$extendedWarrantyHistoryDTOSerializer =
    new _$ExtendedWarrantyHistoryDTOSerializer();

class _$ExtendedWarrantyHistoryDTOSerializer
    implements StructuredSerializer<ExtendedWarrantyHistoryDTO> {
  @override
  final Iterable<Type> types = const [
    ExtendedWarrantyHistoryDTO,
    _$ExtendedWarrantyHistoryDTO
  ];
  @override
  final String wireName = 'ExtendedWarrantyHistoryDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExtendedWarrantyHistoryDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.extendedWarrantyId != null) {
      result
        ..add('extendedWarrantyId')
        ..add(serializers.serialize(object.extendedWarrantyId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.loggedDate != null) {
      result
        ..add('loggedDate')
        ..add(serializers.serialize(object.loggedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.purchasedProductId != null) {
      result
        ..add('purchasedProductId')
        ..add(serializers.serialize(object.purchasedProductId,
            specifiedType: const FullType(int)));
    }
    if (object.warrantyLog != null) {
      result
        ..add('warrantyLog')
        ..add(serializers.serialize(object.warrantyLog,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExtendedWarrantyHistoryDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExtendedWarrantyHistoryDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'extendedWarrantyId':
          result.extendedWarrantyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'loggedDate':
          result.loggedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'purchasedProductId':
          result.purchasedProductId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'warrantyLog':
          result.warrantyLog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExtendedWarrantyHistoryDTO extends ExtendedWarrantyHistoryDTO {
  @override
  final int extendedWarrantyId;
  @override
  final int id;
  @override
  final DateTime loggedDate;
  @override
  final int purchasedProductId;
  @override
  final String warrantyLog;

  factory _$ExtendedWarrantyHistoryDTO(
          [void Function(ExtendedWarrantyHistoryDTOBuilder) updates]) =>
      (new ExtendedWarrantyHistoryDTOBuilder()..update(updates)).build();

  _$ExtendedWarrantyHistoryDTO._(
      {this.extendedWarrantyId,
      this.id,
      this.loggedDate,
      this.purchasedProductId,
      this.warrantyLog})
      : super._();

  @override
  ExtendedWarrantyHistoryDTO rebuild(
          void Function(ExtendedWarrantyHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtendedWarrantyHistoryDTOBuilder toBuilder() =>
      new ExtendedWarrantyHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtendedWarrantyHistoryDTO &&
        extendedWarrantyId == other.extendedWarrantyId &&
        id == other.id &&
        loggedDate == other.loggedDate &&
        purchasedProductId == other.purchasedProductId &&
        warrantyLog == other.warrantyLog;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, extendedWarrantyId.hashCode), id.hashCode),
                loggedDate.hashCode),
            purchasedProductId.hashCode),
        warrantyLog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExtendedWarrantyHistoryDTO')
          ..add('extendedWarrantyId', extendedWarrantyId)
          ..add('id', id)
          ..add('loggedDate', loggedDate)
          ..add('purchasedProductId', purchasedProductId)
          ..add('warrantyLog', warrantyLog))
        .toString();
  }
}

class ExtendedWarrantyHistoryDTOBuilder
    implements
        Builder<ExtendedWarrantyHistoryDTO, ExtendedWarrantyHistoryDTOBuilder> {
  _$ExtendedWarrantyHistoryDTO _$v;

  int _extendedWarrantyId;
  int get extendedWarrantyId => _$this._extendedWarrantyId;
  set extendedWarrantyId(int extendedWarrantyId) =>
      _$this._extendedWarrantyId = extendedWarrantyId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _loggedDate;
  DateTime get loggedDate => _$this._loggedDate;
  set loggedDate(DateTime loggedDate) => _$this._loggedDate = loggedDate;

  int _purchasedProductId;
  int get purchasedProductId => _$this._purchasedProductId;
  set purchasedProductId(int purchasedProductId) =>
      _$this._purchasedProductId = purchasedProductId;

  String _warrantyLog;
  String get warrantyLog => _$this._warrantyLog;
  set warrantyLog(String warrantyLog) => _$this._warrantyLog = warrantyLog;

  ExtendedWarrantyHistoryDTOBuilder();

  ExtendedWarrantyHistoryDTOBuilder get _$this {
    if (_$v != null) {
      _extendedWarrantyId = _$v.extendedWarrantyId;
      _id = _$v.id;
      _loggedDate = _$v.loggedDate;
      _purchasedProductId = _$v.purchasedProductId;
      _warrantyLog = _$v.warrantyLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtendedWarrantyHistoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExtendedWarrantyHistoryDTO;
  }

  @override
  void update(void Function(ExtendedWarrantyHistoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExtendedWarrantyHistoryDTO build() {
    final _$result = _$v ??
        new _$ExtendedWarrantyHistoryDTO._(
            extendedWarrantyId: extendedWarrantyId,
            id: id,
            loggedDate: loggedDate,
            purchasedProductId: purchasedProductId,
            warrantyLog: warrantyLog);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
