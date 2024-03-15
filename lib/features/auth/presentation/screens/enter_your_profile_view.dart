import 'package:chateo_app/features/auth/logic/cubit/profile_cubit.dart';
import 'package:chateo_app/features/auth/presentation/sections/enter_your_profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterYourProfileView extends StatelessWidget {
  const EnterYourProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocProvider(
        create: (context) => ProfileCubit(),
        child: const EnterYourProfileViewBody(),
      ),
    ));
  }
}
