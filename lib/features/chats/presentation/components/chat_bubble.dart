import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          margin: const EdgeInsets.only(top: 20, right: 36, left: 10),
          padding:
              const EdgeInsets.only(top: 16, right: 16, left: 8, bottom: 16),
          decoration: const BoxDecoration(
              color: AppColors.backGroundWhiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("kljjnnm n mn ",
                  style: Styles.mulish400Size12.copyWith(fontSize: 14)),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "09:45",
                style: Styles.mulish400Size12
                    .copyWith(color: AppColors.textGreyColor, fontSize: 10),
              )
            ],
          )),
    );
  }
}

class ChatBubble2 extends StatelessWidget {
  const ChatBubble2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 36, left: 10),
        padding: const EdgeInsets.only(top: 16, right: 16, left: 8, bottom: 16),
        decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Okay ya Brooooooooooo",
              style: Styles.mulish400Size12.copyWith(
                  fontSize: 14, color: AppColors.backGroundWhiteColor)),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "10:00",
            style: Styles.mulish400Size12
                .copyWith(color: AppColors.textGreyColor, fontSize: 10),
          ),
        ]),
      ),
    );
  }
}
