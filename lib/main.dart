import 'package:chateo_app/core/cache/cache_helper.dart';
import 'package:chateo_app/core/router/app_router.dart';
import 'package:chateo_app/core/services/service_locator.dart';
import 'package:chateo_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:chateo_app/features/auth/logic/cubit/profile_cubit.dart';
import 'package:chateo_app/features/chats/logic/cubit/chat_cubit.dart';
import 'package:chateo_app/features/contacts/logic/contacts/contacts_cubit.dart';
import 'package:chateo_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Chateo());
}

class Chateo extends StatelessWidget {
  const Chateo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AuthCubit(),
            ),
            BlocProvider(create: (context) => ProfileCubit()),
            BlocProvider(create: (context) => ChatCubit()..getMessege()),
            BlocProvider(create: (context) => ContactsCubit()..getUserContacts())
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Mulish'),
            routerConfig: routes,
          ),
        );
      },
    );
  }
}
