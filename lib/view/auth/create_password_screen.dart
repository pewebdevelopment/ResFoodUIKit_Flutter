// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/auth/select_language_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "",
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
                          "Create a\nNew Password",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 24,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: Text(
                          "Enter your new password",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: AppTheme.isLightTheme
                                        ? ConstColors.greyColor
                                        : Colors.white,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 40),
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
                      const SizedBox(height: 40),
                      CustomButton(
                        text: "Continue",
                        color: ConstColors.primaryColor,
                        onTap: () {
                          Get.to(
                            const SelectLanguageScreen(),
                            transition: Transition.rightToLeft,
                          );
                        },
                      ),
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
