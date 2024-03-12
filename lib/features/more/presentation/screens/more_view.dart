import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:chateo_app/features/more/presentation/sections/more_view_body.dart';
import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text(AppStrings.more, style: Styles.mulish600Size18,),),
      body: const MoreViewBody(),
    ));
  }
}
