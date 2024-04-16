import 'package:Chateo/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeaderSection extends StatelessWidget {
  const AuthHeaderSection({super.key, required this.txt1, required this.txt2});

  final String txt1, txt2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 103.h,
        ),
        Text(
          txt1,
          style: Styles.mulish700Size24,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          txt2,
          style: Styles.mulish400Size12.copyWith(fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}