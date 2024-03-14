// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  final TextEditingController fristNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  String profilePic = "";
  Reference referenceRoot = FirebaseStorage.instance.ref();
  GlobalKey<FormState> formKey = GlobalKey();

  Future<void> uploadProfilePicToStorage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    if (file == null) return;
    String uniqeFileName = DateTime.now().microsecondsSinceEpoch.toString();

    //! Step2 : upload to firebase storage
    Reference referenceDirImage = referenceRoot.child('profile_pic');
    Reference referenceImageToUpload = referenceDirImage.child(uniqeFileName);
    try {
      emit(UploadPicLoading());
      await referenceImageToUpload.putFile(File(file.path));
      profilePic = await referenceImageToUpload.getDownloadURL();
      log(profilePic);
      emit(UploadPicSuccess(profilePic: profilePic));
    } catch (e) {
      UploadPicFailure(errMessage: e.toString());
    }
  }

  Future<void> addProfileInfo() async {
    try {
      emit(ProfileLoading());
      Map<String, dynamic> saveData = {
        'frist_name': fristNameController.text,
        'last_name': lastNameController.text,
        'phone_number': FirebaseAuth.instance.currentUser!.phoneNumber,
        'id': FirebaseAuth.instance.currentUser!.phoneNumber,
        'profile_pic': profilePic,
      };

      FirebaseFirestore.instance
          .collection(AppStrings.kUsersCollection)
          .doc(FirebaseAuth.instance.currentUser!.phoneNumber)
          .set(saveData);
      emit(ProfileSuccess());
    } catch (e) {
      emit(ProfileFailure(errMessage: e.toString()));
    }
  }
}
