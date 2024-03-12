import 'package:chateo_app/core/functions/navigation.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/widgets/custom_btn.dart';
import 'package:chateo_app/features/auth/presentation/components/custom_txt_feild.dart';
import 'package:chateo_app/features/auth/presentation/components/profile_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterYourProfileFormSection extends StatelessWidget {
  const EnterYourProfileFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileAvatarWidget(),
        SizedBox(
          height: 31.h,
        ),
        const CustomTextFormField(labelText: AppStrings.firstNameRequired),
        SizedBox(
          height: 12.h,
        ),
        const CustomTextFormField(labelText: AppStrings.lastNameOptional),
        SizedBox(
          height: 68.h,
        ),
        CustomTextButton(
          txt: AppStrings.save,
          onPressed: () {
            customPushReplacementNavigate(context, "/MainScreenView");
          },
        )
      ],
    );
  }
}
