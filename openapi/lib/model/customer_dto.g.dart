// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerDTO> _$customerDTOSerializer = new _$CustomerDTOSerializer();

class _$CustomerDTOSerializer implements StructuredSerializer<CustomerDTO> {
  @override
  final Iterable<Type> types = const [CustomerDTO, _$CustomerDTO];
  @override
  final String wireName = 'CustomerDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomerDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressId != null) {
      result
        ..add('addressId')
        ..add(serializers.serialize(object.addressId,
            specifiedType: const FullType(int)));
    }
    if (object.customerRank != null) {
      result
        ..add('customerRank')
        ..add(serializers.serialize(object.customerRank,
            specifiedType: const FullType(String)));
    }
    if (object.customerSince != null) {
      result
        ..add('customerSince')
        ..add(serializers.serialize(object.customerSince,
            specifiedType: const FullType(DateTime)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.esquireId != null) {
      result
        ..add('esquireId')
        ..add(serializers.serialize(object.esquireId,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.phoneVerified != null) {
      result
        ..add('phoneVerified')
        ..add(serializers.serialize(object.phoneVerified,
            specifiedType: const FullType(bool)));
    }
    if (object.ratings != null) {
      result
        ..add('ratings')
        ..add(serializers.serialize(object.ratings,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ServiceExecutiveRatingDTO)])));
    }
    if (object.systemId != null) {
      result
        ..add('systemId')
        ..add(serializers.serialize(object.systemId,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.userLogin != null) {
      result
        ..add('userLogin')
        ..add(serializers.serialize(object.userLogin,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CustomerDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressId':
          result.addressId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'customerRank':
          result.customerRank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerSince':
          result.customerSince = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'esquireId':
          result.esquireId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneVerified':
          result.phoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ratings':
          result.ratings.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ServiceExecutiveRatingDTO)
              ])) as BuiltList<Object>);
          break;
        case 'systemId':
          result.systemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userLogin':
          result.userLogin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomerDTO extends CustomerDTO {
  @override
  final int addressId;
  @override
  final String customerRank;
  @override
  final DateTime customerSince;
  @override
  final String email;
  @override
  final String esquireId;
  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final bool phoneVerified;
  @override
  final BuiltList<ServiceExecutiveRatingDTO> ratings;
  @override
  final String systemId;
  @override
  final int userId;
  @override
  final String userLogin;

  factory _$CustomerDTO([void Function(CustomerDTOBuilder) updates]) =>
      (new CustomerDTOBuilder()..update(updates)).build();

  _$CustomerDTO._(
      {this.addressId,
      this.customerRank,
      this.customerSince,
      this.email,
      this.esquireId,
      this.id,
      this.name,
      this.phone,
      this.phoneVerified,
      this.ratings,
      this.systemId,
      this.userId,
      this.userLogin})
      : super._();

  @override
  CustomerDTO rebuild(void Function(CustomerDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerDTOBuilder toBuilder() => new CustomerDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerDTO &&
        addressId == other.addressId &&
        customerRank == other.customerRank &&
        customerSince == other.customerSince &&
        email == other.email &&
        esquireId == other.esquireId &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        phoneVerified == other.phoneVerified &&
        ratings == other.ratings &&
        systemId == other.systemId &&
        userId == other.userId &&
        userLogin == other.userLogin;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, addressId.hashCode),
                                                    customerRank.hashCode),
                                                customerSince.hashCode),
                                            email.hashCode),
                                        esquireId.hashCode),
                                    id.hashCode),
                                name.hashCode),
                            phone.hashCode),
                        phoneVerified.hashCode),
                    ratings.hashCode),
                systemId.hashCode),
            userId.hashCode),
        userLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomerDTO')
          ..add('addressId', addressId)
          ..add('customerRank', customerRank)
          ..add('customerSince', customerSince)
          ..add('email', email)
          ..add('esquireId', esquireId)
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('phoneVerified', phoneVerified)
          ..add('ratings', ratings)
          ..add('systemId', systemId)
          ..add('userId', userId)
          ..add('userLogin', userLogin))
        .toString();
  }
}

class CustomerDTOBuilder implements Builder<CustomerDTO, CustomerDTOBuilder> {
  _$CustomerDTO _$v;

  int _addressId;
  int get addressId => _$this._addressId;
  set addressId(int addressId) => _$this._addressId = addressId;

  String _customerRank;
  String get customerRank => _$this._customerRank;
  set customerRank(String customerRank) => _$this._customerRank = customerRank;

  DateTime _customerSince;
  DateTime get customerSince => _$this._customerSince;
  set customerSince(DateTime customerSince) =>
      _$this._customerSince = customerSince;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _esquireId;
  String get esquireId => _$this._esquireId;
  set esquireId(String esquireId) => _$this._esquireId = esquireId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  bool _phoneVerified;
  bool get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  ListBuilder<ServiceExecutiveRatingDTO> _ratings;
  ListBuilder<ServiceExecutiveRatingDTO> get ratings =>
      _$this._ratings ??= new ListBuilder<ServiceExecutiveRatingDTO>();
  set ratings(ListBuilder<ServiceExecutiveRatingDTO> ratings) =>
      _$this._ratings = ratings;

  String _systemId;
  String get systemId => _$this._systemId;
  set systemId(String systemId) => _$this._systemId = systemId;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _userLogin;
  String get userLogin => _$this._userLogin;
  set userLogin(String userLogin) => _$this._userLogin = userLogin;

  CustomerDTOBuilder();

  CustomerDTOBuilder get _$this {
    if (_$v != null) {
      _addressId = _$v.addressId;
      _customerRank = _$v.customerRank;
      _customerSince = _$v.customerSince;
      _email = _$v.email;
      _esquireId = _$v.esquireId;
      _id = _$v.id;
      _name = _$v.name;
      _phone = _$v.phone;
      _phoneVerified = _$v.phoneVerified;
      _ratings = _$v.ratings?.toBuilder();
      _systemId = _$v.systemId;
      _userId = _$v.userId;
      _userLogin = _$v.userLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CustomerDTO;
  }

  @override
  void update(void Function(CustomerDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomerDTO build() {
    _$CustomerDTO _$result;
    try {
      _$result = _$v ??
          new _$CustomerDTO._(
              addressId: addressId,
              customerRank: customerRank,
              customerSince: customerSince,
              email: email,
              esquireId: esquireId,
              id: id,
              name: name,
              phone: phone,
              phoneVerified: phoneVerified,
              ratings: _ratings?.build(),
              systemId: systemId,
              userId: userId,
              userLogin: userLogin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ratings';
        _ratings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CustomerDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
