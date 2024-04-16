import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/features/auth/presentation/components/phone_auth_form.dart';
import 'package:Chateo/features/auth/presentation/sections/auth_header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterPhoneViewBody extends StatelessWidget {
  const EnterPhoneViewBody({super.key});

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
            const Icon(
              Icons.arrow_back_ios,
              size: 24,
            ),
            const AuthHeaderSection(
              txt1: AppStrings.enterYourPhoneNumber,
              txt2: AppStrings
                  .pleaseconfirmyourcountrycodeandenteryourphonenumber,
            ),
            SizedBox(
              height: 48.h,
            ),
            const PhoneAuthForm(),
          ],
        ),
      ),
    );
  }
}


