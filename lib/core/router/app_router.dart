import 'package:chateo_app/features/auth/presentation/screens/enter_code_view.dart';
import 'package:chateo_app/features/auth/presentation/screens/enter_phone_view.dart';
import 'package:chateo_app/features/auth/presentation/screens/enter_your_profile_view.dart';
import 'package:chateo_app/features/chats/presentation/screens/chat_view.dart';
import 'package:chateo_app/features/on_boarding/presentation/screens/on_boarding_view.dart';
import 'package:chateo_app/features/splash/splash_view.dart';
import 'package:chateo_app/main_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/OnBoardingView",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/EnterPhoneView",
      builder: (context, state) => const EnterPhoneView(),
    ),
    GoRoute(
      path: "/EnterCodeView",
      builder: (context, state) => const EnterCodeView(),
    ),
    GoRoute(
      path: "/EnterYourProfileView",
      builder: (context, state) => const EnterYourProfileView(),
    ),

    GoRoute(
      path: "/MainScreenView",
      builder: (context, state) => const MainScreenView(),
    ),

    GoRoute(
      path: "/ChatView",
      builder: (context, state) => const ChatView(),
    ),
  ],
);