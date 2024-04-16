import 'package:Chateo/core/utils/assets.dart';
import 'package:Chateo/core/utils/colors.dart';
import 'package:Chateo/core/utils/strings.dart';
import 'package:Chateo/core/utils/styles.dart';
import 'package:Chateo/features/chats/presentation/screens/chat_listview.dart.dart';
import 'package:Chateo/features/contacts/logic/contacts/contacts_cubit.dart';
import 'package:Chateo/features/contacts/presentation/screens/contacts_view.dart';
import 'package:Chateo/features/more/logic/cubit/more_cubit.dart';
import 'package:Chateo/features/more/presentation/screens/more_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    BlocProvider(
      create: (context) => ContactsCubit()..getUserContacts(),
      child: const ContactsView(),
    ),
    BlocProvider(
      create: (context) => ContactsCubit()..getUserContacts(),
      child: const ChatListView(),
    ),
    BlocProvider(
      create: (context) => MoreCubit()..getCurrentUserData(),
      child: const MoreView(),
    ),
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
