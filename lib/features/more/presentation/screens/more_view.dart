import 'package:Chateo/core/functions/custom_toast.dart';
import 'package:Chateo/core/functions/navigation.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/more/logic/cubit/more_cubit.dart';
import 'package:Chateo/features/more/presentation/sections/more_view_body.dart';
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
        toolbarHeight: 100,
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
                          showCancelBtn: true,
                          context: context,
                          type: QuickAlertType.warning,
                          confirmBtnText: 'Sign out',
                          onConfirmBtnTap: () {
                            cubit.signOut();
                          },
                          onCancelBtnTap: () {
                            
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.logout_outlined,
                        color: Colors.red,
                      ));
            },
          )
        ],
      ),
      body: const MoreViewBody(),
    ));
  }
}
