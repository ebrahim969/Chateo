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
  String? vId;
  String? smsCode;
  String? phoneNumber;
  GlobalKey<FormState> phoneFormKey = GlobalKey();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> sendCodeWithPhoneNumber() async {
    emit(PhoneAuthLoading());
    await auth.verifyPhoneNumber(
      phoneNumber: "$countryCode$phoneNumber",
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          emit(PhoneAuthFailure(errmessage: e.code));
        } else if (e.code == 'phone-number-already-exists') {
          emit(PhoneAuthFailure(errmessage: e.code));
        } else {
          print("/////////////////$e//////////////////");
          emit(PhoneAuthFailure(errmessage: e.toString()));
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        vId = verificationId;
        emit(PhoneAuthSuccess());
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> signInWithPhoneNumber() async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: vId!, smsCode: smsCode!);
    try {
      emit(SmsAuthLoading());
      await auth.signInWithCredential(credential);
      emit(SmsAuthSuccess());
    } catch (e) {
      emit(SmsAuthFailure(errmessage: e.toString()));
    }
  }
}
