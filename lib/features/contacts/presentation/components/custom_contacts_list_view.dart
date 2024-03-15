import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:chateo_app/features/contacts/logic/contacts/contacts_cubit.dart';
import 'package:chateo_app/features/contacts/presentation/components/custom_contact_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContactsListView extends StatelessWidget {
  const CustomContactsListView({
    super.key,
    required this.thisChatsView,
  });
  final bool thisChatsView;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: BlocBuilder<ContactsCubit, ContactsState>(
        builder: (context, state) {
          ContactsCubit cubit = context.read<ContactsCubit>();
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: cubit.contacts.isEmpty ? 1 : cubit.contacts.length,
            itemBuilder: (context, index) {
              return state is ContactsLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : cubit.contacts.isEmpty
                      ? Column(
                          children: [
                            ContactsListItem(
                              thisChatsView: thisChatsView,
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            Text(
                              "No Contacts yet",
                              style: Styles.mulish600Size18,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Invite Friends",
                                style: Styles.mulish600Size16
                                    .copyWith(color: AppColors.primaryColor),
                              ),
                            )
                          ],
                        )
                      : ContactsListItem(
                          thisChatsView: thisChatsView,
                        );
            },
            separatorBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  child: const Divider());
            },
          );
        },
      ),
    );
  }
}
