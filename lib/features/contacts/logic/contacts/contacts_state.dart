part of 'contacts_cubit.dart';

@immutable
sealed class ContactsState {}

final class ContactsInitial extends ContactsState {}

final class ContactsLoading extends ContactsState {}

final class ContactsSuccess extends ContactsState {}

final class ContactsFailure extends ContactsState {
  final String errMessage;

  ContactsFailure({required this.errMessage});
}
