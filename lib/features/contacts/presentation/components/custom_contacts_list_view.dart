import 'package:chateo_app/features/contacts/logic/contacts/contacts_cubit.dart';
import 'package:chateo_app/features/contacts/presentation/components/custom_contact_list_item.dart';
import 'package:chateo_app/features/contacts/presentation/components/default_contact_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                      ? DefaultContactsListItem(thisChatsView: thisChatsView)
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


