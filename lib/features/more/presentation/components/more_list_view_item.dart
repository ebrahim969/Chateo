import 'package:chateo_app/core/utils/assets.dart';
import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MoreListViewItem extends StatelessWidget {
  const MoreListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesChatIcon),
        SizedBox(
          width: 8.w,
        ),
        Text(
          "Chats",
          style:
              Styles.mulish600Size14.copyWith(color: AppColors.textBlackColor),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}