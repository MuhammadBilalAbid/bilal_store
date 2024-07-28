import 'package:bilal_store/screens/auth-ui/sign-in-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app-constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Welcome to my app",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Lottie.asset('assets/images/splash-icon.json'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: const Text(
              "Happy Shopping",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 12,
          ),
          Container(
            width: Get.width / 1.2,
            height: Get.height / 12,
            decoration: BoxDecoration(
              color: AppConstant.appScendoryColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton.icon(
              icon: Image.asset(
                'assets/images/final-google-logo.png',
                width: Get.width / 16,
                height: Get.height / 16,
              ),
              label: const Text(
                "Sign in with google",
                style: TextStyle(color: AppConstant.appTextColor),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: Get.height / 50,
          ),
          Container(
            width: Get.width / 1.2,
            height: Get.height / 12,
            decoration: BoxDecoration(
              color: AppConstant.appScendoryColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton.icon(
              icon: const Icon(
                Icons.email,
                color: AppConstant.appTextColor,
              ),
              label: const Text(
                "Sign in with email",
                style: TextStyle(color: AppConstant.appTextColor),
              ),
              onPressed: () {
                Get.offAll(() => const SignInScreen());
              },
            ),
          )
        ],
      ),
    );
  }
}
