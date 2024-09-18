import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  final logo = "assets/images/logo.png";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), (() {
      Get.offAllNamed(Routes.dashboard);
    }));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              height: Get.height / 5,
            )
          ],
        ),
      ),
    );
  }
}
