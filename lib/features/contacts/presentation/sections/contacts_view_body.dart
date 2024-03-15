import 'package:chateo_app/features/contacts/presentation/components/custo_search_bar.dart';
import 'package:chateo_app/features/contacts/presentation/components/custom_contacts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactsViewBody extends StatelessWidget {
  const ContactsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.h,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomSearchBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24.h,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomContactsListView(
              thisChatsView: false,
            ),
          )
        ],
      ),
    );
  }
}
