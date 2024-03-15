import 'package:chateo_app/core/functions/custom_toast.dart';
import 'package:chateo_app/core/functions/navigation.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:chateo_app/features/more/logic/cubit/more_cubit.dart';
import 'package:chateo_app/features/more/presentation/sections/more_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.more,
          style: Styles.mulish600Size18,
        ),
        actions: [
          BlocConsumer<MoreCubit, MoreState>(
            listener: (context, state) {
              if (state is SignOutFailure) {
                showToast(state.errMesage);
              } else if (state is SignOutSuccess) {
                customPushReplacementNavigate(context, "/");
              }
            },
            builder: (context, state) {
              MoreCubit cubit = context.read<MoreCubit>();
              return state is SignOutLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : IconButton(
                      onPressed: () {
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.warning,
                          text: 'You make sure to delete your account?',
                          onConfirmBtnTap: () {
                            cubit.signOutUser();
                          },
                        );
                      },
                      icon: Text(
                        "Delete account",
                        style:
                            Styles.mulish600Size16.copyWith(color: Colors.red),
                      ));
            },
          )
        ],
      ),
      body: const MoreViewBody(),
    ));
  }
}
