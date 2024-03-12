import 'package:chateo_app/features/chats/presentation/components/chat_bubble.dart';
import 'package:chateo_app/features/chats/presentation/components/chat_text_feild.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  ChatViewBody({super.key});

  final listController = ScrollController();
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: listController,
            reverse: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return index % 2 == 0 ? const ChatBubble() : const ChatBubble2();
            },
          ),
        ),
        ChatTextField(
            messegeController: controller,
            email: "email",
            listController: listController)
      ],
    );
  }
}
