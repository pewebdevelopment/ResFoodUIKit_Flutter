import 'dart:async';

import 'package:conyfood/onborading/onbording_screen1.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  customInit() {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.off(
          // const OnBoardingScreen(),
          const OnBordingScreenScreen1(),
          transition: Transition.rightToLeft,
        );
      },
    );
  }
}
