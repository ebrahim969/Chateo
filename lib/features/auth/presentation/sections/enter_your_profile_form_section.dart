import 'package:chateo_app/core/functions/custom_toast.dart';
import 'package:chateo_app/core/functions/navigation.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/widgets/custom_btn.dart';
import 'package:chateo_app/features/auth/logic/cubit/profile_cubit.dart';
import 'package:chateo_app/features/auth/presentation/components/custom_txt_feild.dart';
import 'package:chateo_app/features/auth/presentation/components/profile_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterYourProfileFormSection extends StatelessWidget {
  const EnterYourProfileFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileSuccess) {
          customPushReplacementNavigate(context, "/MainScreenView");
        } else if (state is ProfileFailure) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        ProfileCubit cubit = context.read<ProfileCubit>();
        return Form(
          key: cubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileAvatarWidget(),
              SizedBox(
                height: 31.h,
              ),
              CustomTextFormField(
                labelText: AppStrings.firstNameRequired,
                onChanged: (firstName) {
                  cubit.fristNameController.text = firstName;
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextFormField(
                validator: (value) {},
                labelText: AppStrings.lastNameOptional,
                onChanged: (lastName) {
                  cubit.lastNameController.text = lastName;
                },
              ),
              SizedBox(
                height: 68.h,
              ),
              state is ProfileLoading
                  ? const Center(child: CircularProgressIndicator())
                  : CustomTextButton(
                      txt: AppStrings.save,
                      onPressed: () {
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.addProfileInfo();
                        }
                      },
                    )
            ],
          ),
        );
      },
    );
  }
}
