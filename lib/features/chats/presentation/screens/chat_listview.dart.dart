import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/chats/presentation/sections/chats_listview_body.dart';
import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          AppStrings.chats,
          style: Styles.mulish600Size18,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_chat_unread_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          )
        ],
      ),
      body: const ChatListViewBody(),
    );
  }
}
