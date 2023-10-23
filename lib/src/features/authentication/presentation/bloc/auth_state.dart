part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSucces extends AuthState {
  final UserAccount userAccount;
  final bool isRegister;

  AuthSucces({
    required this.userAccount,
    required this.isRegister,
  });
}
