import 'package:Chateo/core/utils/assets.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  image: AssetImage(Assets.imagesChateoLogo),
                  fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 12.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chateo Groub",
              style: Styles.mulish600Size14
                  .copyWith(color: AppColors.textBlackColor),
            ),
            Text(
              "Last seen recently",
              style: Styles.mulish400Size12
                  .copyWith(color: AppColors.textGreyColor),
            )
          ],
        ),
      ],
    );
  }
}