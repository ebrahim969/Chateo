// ignore_for_file: depend_on_referenced_packages, unused_catch_clause, empty_catches

import 'package:bloc/bloc.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/features/chats/data/model/message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference messeges =
      FirebaseFirestore.instance.collection(AppStrings.kMessagesCollection);
  List<MessageModel> messageList = [];
  void sendMessege({required String messege}) {
    try {
      messeges.add({
        'message': messege,
        'message_time': "${DateTime.now().hour}:${DateTime.now().minute}",
        'createdAt': DateTime.now(),
        'id': FirebaseAuth.instance.currentUser!.phoneNumber,
      });
    } on Exception catch (e) {
    }
  }

  void getMessege() {
    try {
      emit(ChatLoading());
      messeges
          .orderBy('createdAt', descending: true)
          .snapshots()
          .listen((event) {
        messageList.clear();
        for (var doc in event.docs) {
          messageList.add(MessageModel.fromJson(doc));
        }
        emit(ChatSuccess(messagesList: messageList));
      });
    } catch (e) {
      emit(ChatFailure(errMessage: e.toString()));
    }
  }
}
