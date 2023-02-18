// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/auth/otp_screen.dart';
import 'package:conyfood/view/auth/signin_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "Sign Up",
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
                      Center(
                        child: Text(
                          "Complet your account",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: Text(
                          "Lorem ipsum dolor sit amet",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    color: AppTheme.isLightTheme
                                        ? ConstColors.greyColor
                                        : Colors.white,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Enter your first name",
                        textEditingController: TextEditingController(),
                        sufix: const SizedBox(),
                        title: "First Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Enter your last name",
                        textEditingController: TextEditingController(),
                        sufix: const SizedBox(),
                        title: "Last Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Enter your email",
                        textEditingController: TextEditingController(),
                        sufix: const SizedBox(),
                        title: "E-mail",
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Enter your password",
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
                      CustomTextField(
                        text: "Enter your password",
                        textEditingController: TextEditingController(),
                        sufix: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            DefaultImages.a2,
                          ),
                        ),
                        title: "Confirm Password",
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: "Sign Up",
                        color: ConstColors.primaryColor,
                        onTap: () {
                          Get.to(
                            const OtpScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            const SignInScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
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
                              "Login",
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
