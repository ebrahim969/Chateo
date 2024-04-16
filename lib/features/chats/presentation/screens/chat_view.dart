import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/chats/presentation/sections/chat_view_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backGroundWhiteColor,
        title: Text(
          "Chateo Group",
          style: Styles.mulish600Size18,
        ),
        leading: IconButton(
          onPressed: () {
            customPopNavigate(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
        ],
      ),
      body: ChatViewBody(),
    ));
  }
}
