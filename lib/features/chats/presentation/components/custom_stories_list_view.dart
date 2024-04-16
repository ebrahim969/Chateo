import 'package:Chateo/features/chats/presentation/components/stories_list_view_item.dart';
import 'package:Chateo/features/chats/presentation/components/your_story_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStoriesListView extends StatelessWidget {
  const CustomStoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 12,
          );
        },
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 0
              ? const YourStoryItem()
              : const StoreisListViewItem();
        },
        itemCount: 2,
      ),
    );
  }
}
