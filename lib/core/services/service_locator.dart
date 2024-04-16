import 'package:Chateo/core/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator()
{
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}