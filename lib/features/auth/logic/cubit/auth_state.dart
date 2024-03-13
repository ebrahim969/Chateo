part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class PhoneAuthLoading extends AuthState {}

final class PhoneAuthSuccess extends AuthState {}

final class PhoneAuthFailure extends AuthState {
  final String errmessage;

  PhoneAuthFailure({required this.errmessage});
}
