import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/auth/logic/cubit/auth_cubit.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryCodeWidget extends StatefulWidget {
  const CountryCodeWidget({
    super.key,
    required this.cubit,
  });
  final AuthCubit cubit;
  @override
  State<CountryCodeWidget> createState() => _CountryCodeWidgetState();
}

class _CountryCodeWidgetState extends State<CountryCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.textFeildColor),
        child: CountryCodePicker(
          textStyle: Styles.mulish600Size14,
          padding: EdgeInsets.zero,
          onChanged: (country) {
            setState(() {
              widget.cubit.countryCode = country;
            });
          },
          initialSelection: 'IT',
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ));
  }
}
