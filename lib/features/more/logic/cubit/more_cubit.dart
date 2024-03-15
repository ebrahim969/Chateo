import 'package:bloc/bloc.dart';
import 'package:chateo_app/features/more/data/user_model.dart';
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
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.phoneNumber)
          .get()
          .then((value) {
        userData =UserModel.fromJson(value.data());
      });
      emit(MoreSuccess());
    } catch (e) {
      emit(MoreFailure(errMesage: e.toString()));
    }
  }
}
