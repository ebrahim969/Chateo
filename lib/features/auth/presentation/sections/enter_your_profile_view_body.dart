import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/auth/presentation/sections/enter_your_profile_form_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterYourProfileViewBody extends StatelessWidget {
  const EnterYourProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                Text(
                  AppStrings.yourProfile,
                  style: Styles.mulish600Size18,
                )
              ],
            ),
            SizedBox(
              height: 59.h,
            ),
            const EnterYourProfileFormSection()
          ],
        ),
      ),
    );
  }
}




