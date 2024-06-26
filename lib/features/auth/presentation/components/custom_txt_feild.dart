import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText,
    this.suffixIcon,
    this.keyboardType,
    this.controller, this.validator,
  });
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: SizedBox(
        height: 45.h,
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.name,
          validator: validator?? (value) {
            if (value!.isEmpty) {
              return "This field is required";
            } else {
              return null;
            }
          },
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            fillColor: AppColors.textFeildColor,
            filled: true,
            labelText: labelText,
            labelStyle: Styles.mulish600Size14,
            suffixIcon: suffixIcon,
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder getBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: AppColors.textFeildColor));
  }
}
