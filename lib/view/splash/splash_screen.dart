// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashController = Get.put(SplashController());
  @override
  void initState() {
    splashController.customInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          color: ConstColors.primaryColor,
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: Get.height / 5),
              child: Container(
                height: Get.height,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: ConstColors.primaryColor,
                  image: DecorationImage(
                    image: AssetImage(
                      DefaultImages.splash,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "ResFood",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 40,
                          color: ConstColors.whiteColor,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
