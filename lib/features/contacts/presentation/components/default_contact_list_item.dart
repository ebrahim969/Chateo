import 'package:Chateo/core/utils/assets.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/contacts/presentation/components/custom_contact_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DefaultContactsListItem extends StatelessWidget {
  const DefaultContactsListItem({
    super.key,
    required this.thisChatsView,
  });

  final bool thisChatsView;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ContactsListItem(
            thisChatsView: thisChatsView,
          ),
          SizedBox(
            height: 32.h,
          ),
          SvgPicture.asset(
            Assets.imagesNotContacts,
            height: 200.h,
          ),
          Text(
            "No Contacts yet",
            style:
                Styles.mulish700Size24.copyWith(fontSize: 16),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Invite Friends",
              style: Styles.mulish600Size16
                  .copyWith(fontSize: 12),
            ),
          )
        ],
      );
  }
}