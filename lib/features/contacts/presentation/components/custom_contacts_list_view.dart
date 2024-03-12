import 'package:chateo_app/features/contacts/presentation/components/custom_contact_list_item.dart';
import 'package:flutter/material.dart';

class CustomContactsListView extends StatelessWidget {
  const CustomContactsListView({
    super.key, required this.thisChatsView,
  });
  final bool thisChatsView;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ContactsListItem(
              thisChatsView: thisChatsView,
            );
          },
          separatorBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.symmetric(vertical: 13),
                child: const Divider());
          },
          itemCount: 5),
    );
  }
}
