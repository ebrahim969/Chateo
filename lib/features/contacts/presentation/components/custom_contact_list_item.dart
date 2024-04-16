import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/contacts/presentation/components/lift_side_of_contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactsListItem extends StatelessWidget {
  const ContactsListItem({
    super.key,
    required this.thisChatsView,
  });

  final bool thisChatsView;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        customPushNavigate(context, "/ChatView");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LiftSideOfItem(),
          thisChatsView
              ? Column(
                  children: [
                    Text(
                      "Today",
                      style: Styles.mulish400Size12.copyWith(fontSize: 10),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.lightPrimaryColor,
                      child: Center(
                        child: Text(
                          "1",
                          style: Styles.mulish600Size14.copyWith(
                              fontSize: 10, color: AppColors.primaryColor),
                        ),
                      ),
                    )
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}


