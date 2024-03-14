part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileSuccess extends ProfileState {}

final class ProfileFailure extends ProfileState {
  final String errMessage;

  ProfileFailure({required this.errMessage});
}

final class UploadPicLoading extends ProfileState {}

final class UploadPicSuccess extends ProfileState {
  final String profilePic;

  UploadPicSuccess({required this.profilePic});
}

final class UploadPicFailure extends ProfileState {
  final String errMessage;

  UploadPicFailure({required this.errMessage});
}
