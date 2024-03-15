import 'package:chateo_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreProfileAvatar extends StatelessWidget {
  const MoreProfileAvatar({super.key, required this.profilePic});
  final String profilePic;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35.sp,
      backgroundColor: AppColors.textFeildColor,
      backgroundImage:profilePic =="" ? null:NetworkImage(profilePic),
      child: Center(
        child: Icon(
          Icons.person,
          size: 40.sp,
          color: AppColors.textBlackColor,
        ),
      ),
    );
  }
}
