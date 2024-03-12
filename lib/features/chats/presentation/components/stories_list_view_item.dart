import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
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
              color: AppColors.lightPrimaryColor,
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
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
