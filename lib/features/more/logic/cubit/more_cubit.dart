// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/features/more/data/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'more_state.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit() : super(MoreInitial());

  late UserModel userData;
  Future<void> getCurrentUserData() async {
    try {
      emit(MoreLoading());
      await FirebaseFirestore.instance
          .collection(AppStrings.kUsersCollection)
          .doc(FirebaseAuth.instance.currentUser!.phoneNumber)
          .get()
          .then((value) {
        userData = UserModel.fromJson(value.data());
      });
      emit(MoreSuccess());
    } catch (e) {
      emit(MoreFailure(errMesage: e.toString()));
    }
  }

  Future<void> signOutUser() async {
    try {
      emit(SignOutLoading());
      await deleteUserInfoFromDb();
      await deleteUser();
      await signOut();
      emit(SignOutSuccess());
    } catch (e) {
      emit(SignOutFailure(errMesage: e.toString()));
    }
  }

  Future<void> deleteUserInfoFromDb() async {
    await FirebaseFirestore.instance
        .collection(AppStrings.kUsersCollection)
        .doc(FirebaseAuth.instance.currentUser!.phoneNumber)
        .delete();
  }

  Future<void> deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
