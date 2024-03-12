import 'package:chateo_app/core/functions/navigation.dart';
import 'package:chateo_app/core/utils/assets.dart';
import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
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

class LiftSideOfItem extends StatelessWidget {
  const LiftSideOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesIllustration),
                  fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 12.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Athalia Putri",
              style: Styles.mulish600Size14
                  .copyWith(color: AppColors.textBlackColor),
            ),
            Text(
              "Last seen yesterday",
              style: Styles.mulish400Size12
                  .copyWith(color: AppColors.textGreyColor),
            )
          ],
        ),
      ],
    );
  }
}
