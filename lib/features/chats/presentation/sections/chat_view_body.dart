import 'package:chateo_app/features/chats/logic/cubit/chat_cubit.dart';
import 'package:chateo_app/features/chats/presentation/components/chat_bubble.dart';
import 'package:chateo_app/features/chats/presentation/components/chat_text_feild.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatViewBody extends StatelessWidget {
  ChatViewBody({
    super.key,
  });
  final listController = ScrollController();
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              var messageList = BlocProvider.of<ChatCubit>(context).messageList;
              return ListView.builder(
                controller: listController,
                reverse: true,
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  return messageList[index].id == FirebaseAuth.instance.currentUser!.phoneNumber
                      ? ChatBubble(
                          messageModel: messageList[index],
                        )
                      : ChatBubble2(
                          messageModel: messageList[index],
                        );
                },
              );
            },
          ),
        ),
        ChatTextField(
            messegeController: controller,
            listController: listController)
      ],
    );
  }
}
