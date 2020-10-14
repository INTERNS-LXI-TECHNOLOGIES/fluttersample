// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_center_executive_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CallCenterExecutiveDTO> _$callCenterExecutiveDTOSerializer =
    new _$CallCenterExecutiveDTOSerializer();

class _$CallCenterExecutiveDTOSerializer
    implements StructuredSerializer<CallCenterExecutiveDTO> {
  @override
  final Iterable<Type> types = const [
    CallCenterExecutiveDTO,
    _$CallCenterExecutiveDTO
  ];
  @override
  final String wireName = 'CallCenterExecutiveDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CallCenterExecutiveDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.callCenterExecutiveId != null) {
      result
        ..add('callCenterExecutiveId')
        ..add(serializers.serialize(object.callCenterExecutiveId,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
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
  CallCenterExecutiveDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CallCenterExecutiveDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'callCenterExecutiveId':
          result.callCenterExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$CallCenterExecutiveDTO extends CallCenterExecutiveDTO {
  @override
  final String callCenterExecutiveId;
  @override
  final String email;
  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final bool phoneVerified;
  @override
  final int userId;
  @override
  final String userLogin;

  factory _$CallCenterExecutiveDTO(
          [void Function(CallCenterExecutiveDTOBuilder) updates]) =>
      (new CallCenterExecutiveDTOBuilder()..update(updates)).build();

  _$CallCenterExecutiveDTO._(
      {this.callCenterExecutiveId,
      this.email,
      this.id,
      this.name,
      this.phone,
      this.phoneVerified,
      this.userId,
      this.userLogin})
      : super._();

  @override
  CallCenterExecutiveDTO rebuild(
          void Function(CallCenterExecutiveDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallCenterExecutiveDTOBuilder toBuilder() =>
      new CallCenterExecutiveDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallCenterExecutiveDTO &&
        callCenterExecutiveId == other.callCenterExecutiveId &&
        email == other.email &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        phoneVerified == other.phoneVerified &&
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
                            $jc($jc(0, callCenterExecutiveId.hashCode),
                                email.hashCode),
                            id.hashCode),
                        name.hashCode),
                    phone.hashCode),
                phoneVerified.hashCode),
            userId.hashCode),
        userLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CallCenterExecutiveDTO')
          ..add('callCenterExecutiveId', callCenterExecutiveId)
          ..add('email', email)
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('phoneVerified', phoneVerified)
          ..add('userId', userId)
          ..add('userLogin', userLogin))
        .toString();
  }
}

class CallCenterExecutiveDTOBuilder
    implements Builder<CallCenterExecutiveDTO, CallCenterExecutiveDTOBuilder> {
  _$CallCenterExecutiveDTO _$v;

  String _callCenterExecutiveId;
  String get callCenterExecutiveId => _$this._callCenterExecutiveId;
  set callCenterExecutiveId(String callCenterExecutiveId) =>
      _$this._callCenterExecutiveId = callCenterExecutiveId;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

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

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _userLogin;
  String get userLogin => _$this._userLogin;
  set userLogin(String userLogin) => _$this._userLogin = userLogin;

  CallCenterExecutiveDTOBuilder();

  CallCenterExecutiveDTOBuilder get _$this {
    if (_$v != null) {
      _callCenterExecutiveId = _$v.callCenterExecutiveId;
      _email = _$v.email;
      _id = _$v.id;
      _name = _$v.name;
      _phone = _$v.phone;
      _phoneVerified = _$v.phoneVerified;
      _userId = _$v.userId;
      _userLogin = _$v.userLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallCenterExecutiveDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CallCenterExecutiveDTO;
  }

  @override
  void update(void Function(CallCenterExecutiveDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CallCenterExecutiveDTO build() {
    final _$result = _$v ??
        new _$CallCenterExecutiveDTO._(
            callCenterExecutiveId: callCenterExecutiveId,
            email: email,
            id: id,
            name: name,
            phone: phone,
            phoneVerified: phoneVerified,
            userId: userId,
            userLogin: userLogin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
