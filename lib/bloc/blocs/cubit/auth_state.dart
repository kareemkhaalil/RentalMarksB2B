part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthObsShow extends AuthState {}

class AuthObsHide extends AuthState {}

class AuthGoToSignUp extends AuthState {}

class AuthGoToSignIn extends AuthState {}
