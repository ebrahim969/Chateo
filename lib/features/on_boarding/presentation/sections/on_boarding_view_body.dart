import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/core/utils/assets.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/core/widgets/custom_btn.dart';
import 'package:Chateo/features/on_boarding/data/function/on_boarding_visited.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.h,
            ),
            Image.asset(Assets.imagesIllustration),
            SizedBox(
              height: 42.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.sp),
              child: Text(
                AppStrings.connecteasilywithyourfamilyandfriendsovercountries,
                style: Styles.mulish700Size24,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 126.h,
            ),
            Text(
              AppStrings.termsPrivacyPolicy,
              style: Styles.mulish600Size14,
            ),
            SizedBox(
              height: 18.h,
            ),
            CustomTextButton(
              txt: AppStrings.startMessaging,
              onPressed: () {
                customPushReplacementNavigate(context, "/EnterPhoneView");
                onBoardingVisited();
              },
            )
          ],
        ),
      ),
    );
  }
}
