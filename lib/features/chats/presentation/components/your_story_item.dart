import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourStoryItem extends StatelessWidget {
  const YourStoryItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
              color: AppColors.backGroundWhiteColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 2, color: AppColors.textGreyColor)),
          child: const Center(
            child: Icon(
              Icons.add,
              size: 20,
              color: AppColors.textGreyColor,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          AppStrings.yourStory,
          style: Styles.mulish400Size12.copyWith(fontSize: 10),
        )
      ],
    );
  }
}
