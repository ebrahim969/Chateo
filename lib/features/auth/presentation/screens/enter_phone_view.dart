import 'package:Chateo/features/auth/presentation/sections/enter_phone_view_body.dart';
import 'package:flutter/material.dart';

class EnterPhoneView extends StatelessWidget {
  const EnterPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: EnterPhoneViewBody(),
    ));
  }
}
