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

  Future<void> deleteUser() async {
    try {
      emit(SignOutLoading());
      await FirebaseFirestore.instance
        .collection(AppStrings.kUsersCollection)
        .doc(FirebaseAuth.instance.currentUser!.phoneNumber)
        .delete();
        await FirebaseAuth.instance.currentUser!.delete();
        await FirebaseAuth.instance.signOut();
        emit(SignOutSuccess());
    } catch (e) {
      emit(SignOutFailure(errMesage: e.toString()));
    }
  }

  Future<void> signOut() async {
    try {
      emit(SignOutLoading());
      await FirebaseAuth.instance.signOut();
      await FirebaseAuth.instance.currentUser!.delete();
      emit(SignOutSuccess());
    } catch (e) {
      emit(SignOutFailure(errMesage: e.hashCode.toString()));
    }
  }
}
