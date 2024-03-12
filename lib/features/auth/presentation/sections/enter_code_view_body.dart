import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:chateo_app/features/auth/presentation/components/pin_code_widget.dart';
import 'package:chateo_app/features/auth/presentation/sections/auth_header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterCodeViewBody extends StatelessWidget {
  const EnterCodeViewBody({super.key});

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
              txt1: AppStrings.enterCode,
              txt2: AppStrings.wehavesentyouanSMSwiththecodeto,
            ),
            SizedBox(
              height: 48.h,
            ),
            const PinCodeWidget(),
            SizedBox(
              height: 77.h,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.resendCode,
                    style: Styles.mulish600Size16,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
