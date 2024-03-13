import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  CountryCode? countryCode;
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> phoneFormKey = GlobalKey();
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signInWithPhoneNumber() async {
    emit(PhoneAuthLoading());
    await auth.verifyPhoneNumber(
      phoneNumber: "$countryCode$phoneController",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        emit(PhoneAuthSuccess());
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          emit(PhoneAuthFailure(errmessage: e.code));
        } else if (e.code == 'phone-number-already-exists') {
          emit(PhoneAuthFailure(errmessage: e.code));
        } else {
          emit(PhoneAuthFailure(
              errmessage: "Something went wrong, please ty later"));
        }
      },
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
