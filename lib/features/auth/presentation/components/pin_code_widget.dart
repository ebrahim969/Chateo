import 'package:chateo_app/core/functions/navigation.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeWidget extends StatefulWidget {
  const PinCodeWidget({super.key});

  @override
  State<PinCodeWidget> createState() => _PinCodeWidgetState();
}

class _PinCodeWidgetState extends State<PinCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      validator: (s) {
        return s == '222222' ? null : 'Pin is incorrect';
      },
      showCursor: false,
      autoFocus: true,
      onCompleted: (pin) {
        customPushNavigate(context, "/EnterYourProfileView");
      },
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: const PinTheme.defaults(),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      keyboardType: TextInputType.number,
    );
  }
}
