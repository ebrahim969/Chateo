import 'package:chateo_app/core/utils/assets.dart';
import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:chateo_app/features/more/presentation/components/more_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            const HeaderMoreView(),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const MoreListViewItem();
                },
                itemCount: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MoreListViewItem extends StatelessWidget {
  const MoreListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesChatIcon),
        SizedBox(
          width: 8.w,
        ),
        Text(
          "Chats",
          style:
              Styles.mulish600Size14.copyWith(color: AppColors.textBlackColor),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}

class HeaderMoreView extends StatelessWidget {
  const HeaderMoreView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MoreProfileAvatar(),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ebrahim Elnemr",
                style: Styles.mulish600Size14.copyWith(
                  color: AppColors.textBlackColor,
                )),
            Text(
              "+20 1016393895",
              style: Styles.mulish400Size12
                  .copyWith(color: AppColors.textGreyColor),
            ),
          ],
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}
