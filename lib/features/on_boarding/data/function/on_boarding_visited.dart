
import 'package:chateo_app/core/cache/cache_helper.dart';
import 'package:chateo_app/core/services/service_locator.dart';

void onBoardingVisited()
{
  getIt<CacheHelper>().saveData(key: "OnBoardingVisited", value: true);
}