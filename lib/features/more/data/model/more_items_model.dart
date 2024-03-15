import 'package:chateo_app/core/utils/assets.dart';
import 'package:chateo_app/core/utils/strings.dart';

class MoreItemsModel {
  final String title;
  final String image;

  MoreItemsModel({required this.title, required this.image});
}

List<MoreItemsModel> moreData = [
  MoreItemsModel(title: AppStrings.account, image: Assets.imagesPerson),
  MoreItemsModel(title: AppStrings.chats, image: Assets.imagesChatIcon),
  MoreItemsModel(title: AppStrings.appereance, image: Assets.imagesAppereance),
  MoreItemsModel(
      title: AppStrings.notification, image: Assets.imagesNotifications),
  MoreItemsModel(title: AppStrings.privacy, image: Assets.imagesPrivacy),
  MoreItemsModel(title: AppStrings.dataUsage, image: Assets.imagesData),
  MoreItemsModel(title: AppStrings.help, image: Assets.imagesHelp),
  MoreItemsModel(
      title: AppStrings.inviteYourFriends, image: Assets.imagesInvite)
];
