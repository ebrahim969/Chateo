import 'package:chateo_app/features/auth/presentation/sections/enter_your_profile_view_body.dart';
import 'package:flutter/material.dart';

class EnterYourProfileView extends StatelessWidget {
  const EnterYourProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: EnterYourProfileViewBody(),
    ));
  }
}
