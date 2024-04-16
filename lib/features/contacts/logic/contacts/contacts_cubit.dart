// ignore_for_file: depend_on_referenced_packages, avoid_function_literals_in_foreach_calls

import 'package:bloc/bloc.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/features/contacts/data/model/contact_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(ContactsInitial());
  List<ContactModel> contacts = [];
  Future<void> getUserContacts() async {
    try {
      emit(ContactsLoading());
      await FirebaseFirestore.instance
          .collection(AppStrings.kUsersCollection)
          .doc(FirebaseAuth.instance.currentUser!.phoneNumber)
          .collection("contacts")
          .get()
          .then((value) => value.docs.forEach((element) {
                contacts.add(ContactModel.fromJson(element.data()));
              }));
      emit(ContactsSuccess());
    } catch (e) {
      emit(ContactsFailure(errMessage: e.toString()));
    }
  }
}
