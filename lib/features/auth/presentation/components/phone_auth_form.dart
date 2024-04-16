import 'package:Chateo/core/functions/custom_toast.dart';
import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/widgets/custom_btn.dart';
import 'package:Chateo/features/auth/logic/cubit/auth_cubit.dart';
import 'package:Chateo/features/auth/presentation/components/country_code_widget.dart';
import 'package:Chateo/features/auth/presentation/components/custom_txt_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneAuthForm extends StatelessWidget {
  const PhoneAuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is PhoneAuthSuccess) {
          customPushReplacementNavigate(context, "/EnterCodeView");
        } else if (state is PhoneAuthFailure) {
          showToast(state.errmessage);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = context.read<AuthCubit>();
        return Form(
          key: cubit.phoneFormKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CountryCodeWidget(
                        cubit: cubit,
                      )),
                  Expanded(
                      flex: 3,
                      child: CustomTextFormField(
                        onChanged: (phoneNumber) {
                          cubit.phoneNumber = phoneNumber;
                        },
                        labelText: AppStrings.phoneNumber,
                        keyboardType: TextInputType.phone,
                      ))
                ],
              ),
              SizedBox(
                height: 81.h,
              ),
              state is PhoneAuthLoading
                  ? const Center(child: CircularProgressIndicator())
                  : CustomTextButton(
                      txt: AppStrings.cContinue,
                      onPressed: () {
                        if (cubit.phoneFormKey.currentState!.validate()) {
                          cubit.sendCodeWithPhoneNumber();
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
