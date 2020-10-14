import 'package:equatable/equatable.dart';
import 'package:openapi/model/user_dto.dart';

abstract class AuthState extends Equatable {
  UserDTO loggedInUser = UserDTO();
}

class ShowGuestHomeState extends AuthState {
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'ShowGuestHomeState{}';
  }
}

class UpdateSuccessAuthState extends AuthState {
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'UpdateSuccessAuthState{}';
  }
}


class RegisterSuccessAuthState extends AuthState {
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'RegisterSuccessAuthState{}';
  }
}

class RegisterAuthState extends AuthState {
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'RegisterAuthState{}';
  }
}

class LoggedOutAuthState extends AuthState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'LoggedOutAuthState{}';
  }
}

class CheckingAuthState extends AuthState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'CheckingAuthState{}';
  }
}

class SuccessFullyGeneratedOTPAuthState extends AuthState {
  @override
  // TODO: implement props
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'SuccessFullyGeneratedOTPAuthState{}';
  }
}

class SuccessFullyVerifiedOTPAuthState extends AuthState {
  @override
  // TODO: implement props
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'SuccessFullyVerifiedOTPAuthState{}';
  }
}

class LoggedInAuthState extends AuthState {
  @override
  // TODO: implement props
  List<Object> get props => [toString()];

  @override
  @override
  String toString() {
    return 'LoggedInAuthState{}';
  }
}

class ErrorAuthState extends AuthState {
  final String error;

  ErrorAuthState(this.error);

  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'ErrorAuthState{error: $error}';
  }
}
