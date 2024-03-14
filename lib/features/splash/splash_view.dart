import 'package:chateo_app/core/cache/cache_helper.dart';
import 'package:chateo_app/core/functions/navigation.dart';
import 'package:chateo_app/core/services/service_locator.dart';
import 'package:chateo_app/core/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool onBardingVisted = getIt<CacheHelper>().getData(key: "OnBoardingVisited")?? false;
    if(onBardingVisted == true)
    {
      if(FirebaseAuth.instance.currentUser != null)
      {
        delayedNavigate(context, "/MainScreenView");
      }else
      {
        delayedNavigate(context, "/EnterPhoneView");
      }
    }else
    {
      delayedNavigate(context, "/OnBoardingView");
      
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
    );
  }
}