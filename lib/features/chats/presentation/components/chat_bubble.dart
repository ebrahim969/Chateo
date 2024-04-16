import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/chats/data/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.messageModel,
  });

  final MessageModel messageModel;
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
              Text(messageModel.message,
                  style: Styles.mulish400Size12.copyWith(fontSize: 14)),
              SizedBox(
                height: 5.h,
              ),
              Text(
                messageModel.messageTime,
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
    required this.messageModel,
  });

  final MessageModel messageModel;

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
          Text(messageModel.message,
              style: Styles.mulish400Size12.copyWith(
                  fontSize: 14, color: AppColors.backGroundWhiteColor)),
          SizedBox(
            height: 5.h,
          ),
          Text(
            messageModel.messageTime,
            style: Styles.mulish400Size12
                .copyWith(color: AppColors.textGreyColor, fontSize: 10),
          ),
        ]),
      ),
    );
  }
}
