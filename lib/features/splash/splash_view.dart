import 'package:Chateo/core/cache/cache_helper.dart';
import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/core/services/service_locator.dart';
import 'package:Chateo/core/utils/assets.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool onBardingVisted =
        getIt<CacheHelper>().getData(key: "OnBoardingVisited") ?? false;
    if (onBardingVisted == true) {
      if (FirebaseAuth.instance.currentUser != null) {
        delayedNavigate(context, "/MainScreenView");
      } else {
        delayedNavigate(context, "/EnterPhoneView");
      }
    } else {
      delayedNavigate(context, "/OnBoardingView");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimaryColor,
      body: Center(
        child: SvgPicture.asset(Assets.imagesSplash, height: 200.h,),
      ),
    );
  }
}
