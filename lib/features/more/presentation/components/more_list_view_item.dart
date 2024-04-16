import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/more/data/model/more_items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MoreListViewItem extends StatelessWidget {
  const MoreListViewItem({
    super.key,
    required this.model,
  });
  final MoreItemsModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          model.image,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          model.title,
          style:
              Styles.mulish600Size14.copyWith(color: AppColors.textBlackColor),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}
