import 'package:Chateo/features/chats/presentation/components/custom_stories_list_view.dart';
import 'package:Chateo/features/contacts/presentation/components/custo_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsHeaderSection extends StatelessWidget {
  const ChatsHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        const CustomStoriesListView(),
        const Divider(),
        SizedBox(
          height: 16.h,
        ),
        const CustomSearchBar(),
      ],
    );
  }
}
