import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
          cursorColor: AppColors.primaryColor,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 5),
              hintText: AppStrings.search,
              prefixIcon: const Icon(Icons.search),
              fillColor: AppColors.textFeildColor,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none))),
    );
  }
}