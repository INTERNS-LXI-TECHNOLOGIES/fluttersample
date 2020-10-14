import 'package:equatable/equatable.dart';
import 'package:openapi/model/login_vm.dart';
import 'package:openapi/model/managed_user_vm.dart';
import 'package:openapi/model/user_dto.dart';

abstract class AuthEvent extends Equatable {}

class RegisterAuthEvent extends AuthEvent {
  final ManagedUserVM registerUser;

  RegisterAuthEvent(this.registerUser);

  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'RegisterAuthEvent{}';
  }
}


class UpdateUserAuthEvent extends AuthEvent {
  final UserDTO updateUser;

  UpdateUserAuthEvent(this.updateUser);

  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'UpdateUserAuthEvent{}';
  }
}

class SuccessfullyLoggedInAuthEvent extends AuthEvent {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'SuccessfullyLoggedInAuthEvent{}';
  }
}

class GuestAuthEvent extends AuthEvent {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'GuestAuthEvent{}';
  }
}

class GoToGuestHomeEvent extends AuthEvent {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'GoToGuestHomeEvent{}';
  }
}

class LoginAuthEvent extends AuthEvent {
  final LoginVM loginUser;

  LoginAuthEvent(this.loginUser);

  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'LoginAuthEvent{loginUser: $loginUser}';
  }
}

class LogoutAuthEvent extends AuthEvent {
  final LoginVM loginUser;

  LogoutAuthEvent(this.loginUser);

  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'LogoutAuthEvent{loginUser: $loginUser}';
  }
}

class OTPAuthEvent extends AuthEvent {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'OTPAuthEvent{}';
  }
}

class OTPVerifyAuthEvent extends AuthEvent {
  final String otp;

  OTPVerifyAuthEvent(this.otp);

  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'OTPVerifyAuthEvent{otp: $otp}';
  }
}
