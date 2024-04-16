import 'package:Chateo/core/utils/assets.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreisListViewItem extends StatelessWidget {
  const StoreisListViewItem({
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
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesPersonImage),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 2, color: AppColors.primaryColor)),
        ),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          width: 48.w,
          child: Text(
            "Salsabila",
            style: Styles.mulish400Size12.copyWith(fontSize: 10),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
