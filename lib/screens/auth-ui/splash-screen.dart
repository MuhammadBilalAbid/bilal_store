import 'dart:async';

import 'package:bilal_store/screens/auth-ui/welcome-screen.dart';
import 'package:bilal_store/screens/user-panels/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Get.offAll(() => const WelcomeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      backgroundColor: AppConstant.appScendoryColor,
      body: Column(
        children: [
          Expanded(
              child: Container(
                  width: Get.width,
                  alignment: Alignment.center,
                  child: Lottie.asset("assets/images/splash-icon.json"))),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            width: Get.width,
            alignment: Alignment.center,
            child: Text(
              AppConstant.appPoweredBy,
              style: const TextStyle(
                  color: AppConstant.appTextColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
