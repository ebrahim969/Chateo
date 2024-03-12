import 'package:chateo_app/features/auth/presentation/sections/enter_code_view_body.dart';
import 'package:flutter/material.dart';

class EnterCodeView extends StatelessWidget {
  const EnterCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: EnterCodeViewBody(),
    ));
  }
}
