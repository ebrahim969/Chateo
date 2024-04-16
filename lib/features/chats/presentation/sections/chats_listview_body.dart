import 'package:Chateo/features/chats/presentation/sections/chats_header_section.dart';
import 'package:Chateo/features/contacts/presentation/components/custom_contacts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListViewBody extends StatelessWidget {
  const ChatListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: ChatsHeaderSection(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.h,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomContactsListView(
              thisChatsView: true,
            ),
          )
        ],
      ),
    );
  }
}


