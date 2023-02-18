// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/auth/forgot_password_screen.dart';
import 'package:conyfood/view/auth/signup_screen.dart';
import 'package:conyfood/view/tab_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "SignIn",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Enter your email address",
                        textEditingController: TextEditingController(),
                        sufix: const SizedBox(),
                        title: "Email Address",
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Enter your passwords",
                        textEditingController: TextEditingController(),
                        sufix: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            DefaultImages.a2,
                          ),
                        ),
                        title: "Password",
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppTheme.isLightTheme
                                    ? ConstColors.greyColor.withOpacity(0.5)
                                    : Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            "Remember Me",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: ConstColors.greyColor,
                                    ),
                          ),
                          const Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                const ForgotPasswordScreen(),
                                transition: Transition.rightToLeft,
                              );
                            },
                            child: Text(
                              "Forgot Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 14,
                                    color: ConstColors.redColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: "Sign In",
                        color: ConstColors.primaryColor,
                        onTap: () {
                          Get.offAll(
                            const TabScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1.5,
                                color: ConstColors.greyColor,
                              ),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              "Or continue with",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 14,
                                    color: AppTheme.isLightTheme
                                        ? ConstColors.greyColor
                                        : Colors.white,
                                  ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Container(
                                height: 1.5,
                                color: ConstColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      const BorderButton(
                        text: "Continue with Google",
                        image: DefaultImages.a1,
                      ),
                      const SizedBox(height: 15),
                      BorderButton(
                        text: "Continue with Apple",
                        image: AppTheme.isLightTheme
                            ? DefaultImages.a3
                            : DefaultImages.Apple,
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            const SignUpScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account? ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 16,
                                    color: AppTheme.isLightTheme
                                        ? ConstColors.greyColor
                                        : Colors.white,
                                  ),
                            ),
                            Text(
                              "Sign Up",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 16,
                                    color: ConstColors.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
