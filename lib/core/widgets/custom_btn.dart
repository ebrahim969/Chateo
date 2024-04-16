import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.txt, this.onPressed,
  });

  final String txt;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(8),
      height: 52.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            txt,
            style: Styles.mulish600Size14.copyWith(fontSize: 16.sp, color: AppColors.textFeildColor)
          )),
    );
  }
}