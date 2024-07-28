import 'package:bilal_store/screens/auth-ui/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/app-constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: AppConstant.appScendoryColor)),
      home: const SplashScreen(),
    );
  }
}
