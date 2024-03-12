import 'package:chateo_app/features/on_boarding/presentation/sections/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: OnBoardingViewBody(),
      ),
    );
  }
}