import 'package:chateo_app/core/functions/navigation.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/widgets/custom_btn.dart';
import 'package:chateo_app/features/auth/presentation/components/country_code_widget.dart';
import 'package:chateo_app/features/auth/presentation/components/custom_txt_feild.dart';
import 'package:chateo_app/features/auth/presentation/sections/auth_header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterPhoneViewBody extends StatelessWidget {
  const EnterPhoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 19.h,
            ),
            const Icon(
              Icons.arrow_back_ios,
              size: 24,
            ),
            const AuthHeaderSection(
              txt1: AppStrings.enterYourPhoneNumber,
              txt2: AppStrings
                  .pleaseconfirmyourcountrycodeandenteryourphonenumber,
            ),
            SizedBox(
              height: 48.h,
            ),
            const Row(
              children: [
                Expanded(flex: 1, child: CountryCodeWidget()),
                Expanded(
                    flex: 3,
                    child: CustomTextFormField(
                      labelText: AppStrings.phoneNumber,
                      keyboardType: TextInputType.phone,
                    ))
              ],
            ),
            SizedBox(
              height: 81.h,
            ),
            CustomTextButton(
              txt: AppStrings.cContinue,
              onPressed: () {
                customNavigate(context, "/EnterCodeView");
              },
            ),
          ],
        ),
      ),
    );
  }
}
