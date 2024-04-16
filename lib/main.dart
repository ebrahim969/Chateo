
import 'package:Chateo/core/cache/cache_helper.dart';
import 'package:Chateo/core/services/service_locator.dart';
import 'package:Chateo/features/app/chateo_app.dart';
import 'package:Chateo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Chateo());
}

