import 'package:Chateo/core/functions/custom_toast.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/more/logic/cubit/more_cubit.dart';
import 'package:Chateo/features/more/presentation/components/more_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderMoreView extends StatelessWidget {
  const HeaderMoreView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoreCubit, MoreState>(
      listener: (context, state) {
        if (state is MoreFailure) {
          showToast(state.errMesage);
        }
      },
      builder: (context, state) {
        MoreCubit cubit = context.read<MoreCubit>();
        return state is MoreLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Row(
                children: [
                  MoreProfileAvatar(
                    profilePic: cubit.userData.profilePic ?? "",
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "${cubit.userData.fristName} ${cubit.userData.lastName ?? ""}",
                          style: Styles.mulish600Size14.copyWith(
                            color: AppColors.textBlackColor,
                          )),
                      Text(
                        cubit.userData.phoneNumber,
                        style: Styles.mulish400Size12
                            .copyWith(color: AppColors.textGreyColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              );
      },
    );
  }
}
