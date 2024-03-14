import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/features/auth/logic/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        ProfileCubit cubit = context.read<ProfileCubit>();
        return Center(
          child: state is UploadPicSuccess
              ? CircleAvatar(
                  radius: 50.sp,
                  backgroundColor: AppColors.textFeildColor,
                  backgroundImage: NetworkImage(state.profilePic),
                )
              : InkWell(
                  onTap: () {
                    cubit.uploadProfilePicToStorage();
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 50.sp,
                        backgroundColor: AppColors.textFeildColor,
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: 60.sp,
                            color: AppColors.textBlackColor,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 5,
                          bottom: 5,
                          child: CircleAvatar(
                            radius: 10.sp,
                            backgroundColor: AppColors.textBlackColor,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15.sp,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
        );
      },
    );
  }
}
