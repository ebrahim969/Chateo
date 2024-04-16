import 'package:Chateo/core/functions/custom_toast.dart';
import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/features/auth/logic/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SmsAuthSuccess) {
          customPushReplacementNavigate(context, "/EnterYourProfileView");
        } else if (state is SmsAuthFailure) {
          showToast(state.errmessage);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = context.read<AuthCubit>();
        return state is SmsAuthLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : PinCodeTextField(
                appContext: context,
                validator: (sms) {
                  return sms == cubit.smsCode ? null : 'Pin is incorrect';
                },
                showCursor: false,
                autoFocus: true,
                onCompleted: (pin) {
                  cubit.smsCode = pin;
                  cubit.signInWithPhoneNumber();
                },
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: const PinTheme.defaults(),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
              );
      },
    );
  }
}
