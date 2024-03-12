import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
    required this.messegeController,
    required this.email,
    required this.listController,
  });

  final TextEditingController messegeController;
  final String email;
  final ScrollController listController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backGroundWhiteColor,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: AppColors.textGreyColor,
              )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 32.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.textFeildColor),
              child: TextField(
                controller: messegeController,
                style: Styles.mulish600Size14
                    .copyWith(color: AppColors.textBlackColor),
                decoration: InputDecoration(
                    hintText: 'Messege',
                    hintStyle: Styles.mulish400Size12
                        .copyWith(color: AppColors.textGreyColor),
                    border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          IconButton(
            onPressed: () {
              // BlocProvider.of<ChatCubit>(context)
              //     .sendMessege(messege: messegeController.text, email: email);
              // messegeController.clear();
              // listController.animateTo(0,
              //     duration: const Duration(microseconds: 500),
              //     curve: Curves.decelerate);
            },
            icon: const Icon(
              Icons.send,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
