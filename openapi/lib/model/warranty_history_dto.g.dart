// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WarrantyHistoryDTO> _$warrantyHistoryDTOSerializer =
    new _$WarrantyHistoryDTOSerializer();

class _$WarrantyHistoryDTOSerializer
    implements StructuredSerializer<WarrantyHistoryDTO> {
  @override
  final Iterable<Type> types = const [WarrantyHistoryDTO, _$WarrantyHistoryDTO];
  @override
  final String wireName = 'WarrantyHistoryDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, WarrantyHistoryDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.warrantyId != null) {
      result
        ..add('warrantyId')
        ..add(serializers.serialize(object.warrantyId,
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
  WarrantyHistoryDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarrantyHistoryDTOBuilder();

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
        case 'loggedDate':
          result.loggedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'purchasedProductId':
          result.purchasedProductId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'warrantyId':
          result.warrantyId = serializers.deserialize(value,
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

class _$WarrantyHistoryDTO extends WarrantyHistoryDTO {
  @override
  final int id;
  @override
  final DateTime loggedDate;
  @override
  final int purchasedProductId;
  @override
  final int warrantyId;
  @override
  final String warrantyLog;

  factory _$WarrantyHistoryDTO(
          [void Function(WarrantyHistoryDTOBuilder) updates]) =>
      (new WarrantyHistoryDTOBuilder()..update(updates)).build();

  _$WarrantyHistoryDTO._(
      {this.id,
      this.loggedDate,
      this.purchasedProductId,
      this.warrantyId,
      this.warrantyLog})
      : super._();

  @override
  WarrantyHistoryDTO rebuild(
          void Function(WarrantyHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarrantyHistoryDTOBuilder toBuilder() =>
      new WarrantyHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WarrantyHistoryDTO &&
        id == other.id &&
        loggedDate == other.loggedDate &&
        purchasedProductId == other.purchasedProductId &&
        warrantyId == other.warrantyId &&
        warrantyLog == other.warrantyLog;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), loggedDate.hashCode),
                purchasedProductId.hashCode),
            warrantyId.hashCode),
        warrantyLog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WarrantyHistoryDTO')
          ..add('id', id)
          ..add('loggedDate', loggedDate)
          ..add('purchasedProductId', purchasedProductId)
          ..add('warrantyId', warrantyId)
          ..add('warrantyLog', warrantyLog))
        .toString();
  }
}

class WarrantyHistoryDTOBuilder
    implements Builder<WarrantyHistoryDTO, WarrantyHistoryDTOBuilder> {
  _$WarrantyHistoryDTO _$v;

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

  int _warrantyId;
  int get warrantyId => _$this._warrantyId;
  set warrantyId(int warrantyId) => _$this._warrantyId = warrantyId;

  String _warrantyLog;
  String get warrantyLog => _$this._warrantyLog;
  set warrantyLog(String warrantyLog) => _$this._warrantyLog = warrantyLog;

  WarrantyHistoryDTOBuilder();

  WarrantyHistoryDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _loggedDate = _$v.loggedDate;
      _purchasedProductId = _$v.purchasedProductId;
      _warrantyId = _$v.warrantyId;
      _warrantyLog = _$v.warrantyLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WarrantyHistoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WarrantyHistoryDTO;
  }

  @override
  void update(void Function(WarrantyHistoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WarrantyHistoryDTO build() {
    final _$result = _$v ??
        new _$WarrantyHistoryDTO._(
            id: id,
            loggedDate: loggedDate,
            purchasedProductId: purchasedProductId,
            warrantyId: warrantyId,
            warrantyLog: warrantyLog);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
