import 'package:checkin/src/models/user.dart';
import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  AuthState([List props = const []]) : super(props);
}

class AuthUninitialized extends AuthState {
  @override
  String toString() => 'AuthUninitialized';
}

class AuthAuthenticated extends AuthState {
  User user;
  bool isFirstLogin;

  AuthAuthenticated({
    this.user,
    this.isFirstLogin
  }) : super([user, isFirstLogin]);

  @override
  String toString() => 'AuthAuthenticated';
}

class AuthUnauthenticated extends AuthState {
  Error error;

  AuthUnauthenticated({
    this.error,
  }) : super([error]);

  @override
  String toString() => 'AuthUnauthenticated';
}