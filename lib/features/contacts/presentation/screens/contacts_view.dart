import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/contacts/presentation/sections/contacts_view_body.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          AppStrings.contacts,
          style: Styles.mulish600Size18,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 28,
                color: Colors.black,
              ))
        ],
      ),
      body: const ContactsViewBody(),
    ));
  }
}
