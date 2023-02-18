// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/controller/auth_controller.dart';
import 'package:conyfood/view/auth/signin_screen.dart';
import 'package:conyfood/view/auth/signup_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final authController = Get.put(AuthController());
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: Get.height / 2,
                      width: Get.width,
                      child: Image.asset(
                        authController.onBoard.value == 0
                            ? DefaultImages.a7
                            : authController.onBoard.value == 1
                                ? DefaultImages.a8
                                : authController.onBoard.value == 2
                                    ? DefaultImages.a6
                                    : DefaultImages.a5,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 30, top: 20),
                child: Container(
                  height: Get.height / 2.3,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: ConstColors.whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(
                          () => authController.onBoard.value == 3
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      authController.onBoard.value == 0
                                          ? Container(
                                              height: 8,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: ConstColors.primaryColor,
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor: ConstColors
                                                  .lightGreyColor
                                                  .withOpacity(0.5),
                                              radius: 4,
                                            ),
                                      const SizedBox(width: 6),
                                      authController.onBoard.value == 1
                                          ? Container(
                                              height: 8,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: ConstColors.primaryColor,
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor: ConstColors
                                                  .lightGreyColor
                                                  .withOpacity(0.5),
                                              radius: 4,
                                            ),
                                      const SizedBox(width: 6),
                                      authController.onBoard.value == 2
                                          ? Container(
                                              height: 8,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: ConstColors.primaryColor,
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor: ConstColors
                                                  .lightGreyColor
                                                  .withOpacity(0.5),
                                              radius: 4,
                                            ),
                                    ],
                                  ),
                                ),
                        ),
                        Text(
                          "Choose the food you\nlike easily",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  
                    ),
                       
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Obx(
                          () => Text(
                            authController.onBoard.value == 3
                                ? "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry."
                                : "Semper in cursus magna et eu varius nunc\nadipiscing. Elementum justo, laoreet id\nsem . ",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                              height: 1.4,
                              color: ConstColors.lightGreyColor,
                    ),
                          
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Obx(
                          () => SizedBox(
                            width: Get.width / 2,
                            child: CustomButton(
                              text: authController.onBoard.value == 3
                                  ? "Get Started"
                                  : "Continue",
                              color: ConstColors.primaryColor,
                              onTap: () {
                                authController.onBoard.value =
                                    authController.onBoard.value + 1;
                                if (authController.onBoard.value == 4) {
                                  Get.to(
                                    const SignInScreen(),
                                    transition: Transition.rightToLeft,
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Obx(
                          () => authController.onBoard.value == 3
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(
                                      const SignUpScreen(),
                                      transition: Transition.rightToLeft,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Don’t have an account? ",
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                                            color: ConstColors.greyColor,
                    ),
                                         
                                        ),
                                        Text(
                                          "Register",
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                                            color: ConstColors.primaryColor,
                    ),
                                          
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
