// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerAddressDTO> _$customerAddressDTOSerializer =
    new _$CustomerAddressDTOSerializer();

class _$CustomerAddressDTOSerializer
    implements StructuredSerializer<CustomerAddressDTO> {
  @override
  final Iterable<Type> types = const [CustomerAddressDTO, _$CustomerAddressDTO];
  @override
  final String wireName = 'CustomerAddressDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomerAddressDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cityNameId != null) {
      result
        ..add('cityNameId')
        ..add(serializers.serialize(object.cityNameId,
            specifiedType: const FullType(int)));
    }
    if (object.districtNameId != null) {
      result
        ..add('districtNameId')
        ..add(serializers.serialize(object.districtNameId,
            specifiedType: const FullType(int)));
    }
    if (object.geoLocation != null) {
      result
        ..add('geoLocation')
        ..add(serializers.serialize(object.geoLocation,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.landMark != null) {
      result
        ..add('landMark')
        ..add(serializers.serialize(object.landMark,
            specifiedType: const FullType(String)));
    }
    if (object.locationAddressLineOne != null) {
      result
        ..add('locationAddressLineOne')
        ..add(serializers.serialize(object.locationAddressLineOne,
            specifiedType: const FullType(String)));
    }
    if (object.locationAddressLineTwo != null) {
      result
        ..add('locationAddressLineTwo')
        ..add(serializers.serialize(object.locationAddressLineTwo,
            specifiedType: const FullType(String)));
    }
    if (object.pinCodeId != null) {
      result
        ..add('pinCodeId')
        ..add(serializers.serialize(object.pinCodeId,
            specifiedType: const FullType(int)));
    }
    if (object.stateNameId != null) {
      result
        ..add('stateNameId')
        ..add(serializers.serialize(object.stateNameId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CustomerAddressDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerAddressDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cityNameId':
          result.cityNameId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'districtNameId':
          result.districtNameId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'geoLocation':
          result.geoLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'landMark':
          result.landMark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locationAddressLineOne':
          result.locationAddressLineOne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locationAddressLineTwo':
          result.locationAddressLineTwo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pinCodeId':
          result.pinCodeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stateNameId':
          result.stateNameId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomerAddressDTO extends CustomerAddressDTO {
  @override
  final int cityNameId;
  @override
  final int districtNameId;
  @override
  final String geoLocation;
  @override
  final int id;
  @override
  final String landMark;
  @override
  final String locationAddressLineOne;
  @override
  final String locationAddressLineTwo;
  @override
  final int pinCodeId;
  @override
  final int stateNameId;

  factory _$CustomerAddressDTO(
          [void Function(CustomerAddressDTOBuilder) updates]) =>
      (new CustomerAddressDTOBuilder()..update(updates)).build();

  _$CustomerAddressDTO._(
      {this.cityNameId,
      this.districtNameId,
      this.geoLocation,
      this.id,
      this.landMark,
      this.locationAddressLineOne,
      this.locationAddressLineTwo,
      this.pinCodeId,
      this.stateNameId})
      : super._();

  @override
  CustomerAddressDTO rebuild(
          void Function(CustomerAddressDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerAddressDTOBuilder toBuilder() =>
      new CustomerAddressDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerAddressDTO &&
        cityNameId == other.cityNameId &&
        districtNameId == other.districtNameId &&
        geoLocation == other.geoLocation &&
        id == other.id &&
        landMark == other.landMark &&
        locationAddressLineOne == other.locationAddressLineOne &&
        locationAddressLineTwo == other.locationAddressLineTwo &&
        pinCodeId == other.pinCodeId &&
        stateNameId == other.stateNameId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, cityNameId.hashCode),
                                    districtNameId.hashCode),
                                geoLocation.hashCode),
                            id.hashCode),
                        landMark.hashCode),
                    locationAddressLineOne.hashCode),
                locationAddressLineTwo.hashCode),
            pinCodeId.hashCode),
        stateNameId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomerAddressDTO')
          ..add('cityNameId', cityNameId)
          ..add('districtNameId', districtNameId)
          ..add('geoLocation', geoLocation)
          ..add('id', id)
          ..add('landMark', landMark)
          ..add('locationAddressLineOne', locationAddressLineOne)
          ..add('locationAddressLineTwo', locationAddressLineTwo)
          ..add('pinCodeId', pinCodeId)
          ..add('stateNameId', stateNameId))
        .toString();
  }
}

class CustomerAddressDTOBuilder
    implements Builder<CustomerAddressDTO, CustomerAddressDTOBuilder> {
  _$CustomerAddressDTO _$v;

  int _cityNameId;
  int get cityNameId => _$this._cityNameId;
  set cityNameId(int cityNameId) => _$this._cityNameId = cityNameId;

  int _districtNameId;
  int get districtNameId => _$this._districtNameId;
  set districtNameId(int districtNameId) =>
      _$this._districtNameId = districtNameId;

  String _geoLocation;
  String get geoLocation => _$this._geoLocation;
  set geoLocation(String geoLocation) => _$this._geoLocation = geoLocation;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _landMark;
  String get landMark => _$this._landMark;
  set landMark(String landMark) => _$this._landMark = landMark;

  String _locationAddressLineOne;
  String get locationAddressLineOne => _$this._locationAddressLineOne;
  set locationAddressLineOne(String locationAddressLineOne) =>
      _$this._locationAddressLineOne = locationAddressLineOne;

  String _locationAddressLineTwo;
  String get locationAddressLineTwo => _$this._locationAddressLineTwo;
  set locationAddressLineTwo(String locationAddressLineTwo) =>
      _$this._locationAddressLineTwo = locationAddressLineTwo;

  int _pinCodeId;
  int get pinCodeId => _$this._pinCodeId;
  set pinCodeId(int pinCodeId) => _$this._pinCodeId = pinCodeId;

  int _stateNameId;
  int get stateNameId => _$this._stateNameId;
  set stateNameId(int stateNameId) => _$this._stateNameId = stateNameId;

  CustomerAddressDTOBuilder();

  CustomerAddressDTOBuilder get _$this {
    if (_$v != null) {
      _cityNameId = _$v.cityNameId;
      _districtNameId = _$v.districtNameId;
      _geoLocation = _$v.geoLocation;
      _id = _$v.id;
      _landMark = _$v.landMark;
      _locationAddressLineOne = _$v.locationAddressLineOne;
      _locationAddressLineTwo = _$v.locationAddressLineTwo;
      _pinCodeId = _$v.pinCodeId;
      _stateNameId = _$v.stateNameId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerAddressDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CustomerAddressDTO;
  }

  @override
  void update(void Function(CustomerAddressDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomerAddressDTO build() {
    final _$result = _$v ??
        new _$CustomerAddressDTO._(
            cityNameId: cityNameId,
            districtNameId: districtNameId,
            geoLocation: geoLocation,
            id: id,
            landMark: landMark,
            locationAddressLineOne: locationAddressLineOne,
            locationAddressLineTwo: locationAddressLineTwo,
            pinCodeId: pinCodeId,
            stateNameId: stateNameId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
