import 'package:chateo_app/core/utils/assets.dart';
import 'package:chateo_app/core/utils/colors.dart';
import 'package:chateo_app/core/utils/strings.dart';
import 'package:chateo_app/core/utils/styles.dart';
import 'package:chateo_app/features/chats/presentation/screens/chat_listview.dart.dart';
import 'package:chateo_app/features/contacts/presentation/screens/contacts_view.dart';
import 'package:chateo_app/features/more/presentation/screens/more_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        screens: _buildScreens(),
        items: _navBarsItems(),
        controller: _controller,
        navBarStyle: NavBarStyle.style12,
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const ContactsView(),
    const ChatListView(),
    const MoreView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Text(
        AppStrings.contacts,
        style: Styles.mulish600Size14.copyWith(color: AppColors.textBlackColor),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.imagesCoolicon,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Text(
        AppStrings.chats,
        style: Styles.mulish600Size14.copyWith(color: AppColors.textBlackColor),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.imagesChatIcon,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Text(
        AppStrings.more,
        style: Styles.mulish600Size14.copyWith(color: AppColors.textBlackColor),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.imagesMoreIcon,
      ),
    )
  ];
}
