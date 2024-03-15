part of 'more_cubit.dart';

@immutable
sealed class MoreState {}

final class MoreInitial extends MoreState {}

final class MoreLoading extends MoreState {}

final class MoreSuccess extends MoreState {}

final class MoreFailure extends MoreState {
  final String errMesage;

  MoreFailure({required this.errMesage});
}

final class SignOutLoading extends MoreState {}

final class SignOutSuccess extends MoreState {}

final class SignOutFailure extends MoreState {
  final String errMesage;

  SignOutFailure({required this.errMesage});
}
