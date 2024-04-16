
import 'package:Chateo/core/cache/cache_helper.dart';
import 'package:Chateo/core/services/service_locator.dart';

void onBoardingVisited()
{
  getIt<CacheHelper>().saveData(key: "OnBoardingVisited", value: true);
}