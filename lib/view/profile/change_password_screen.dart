// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "Change Password",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        "The new password must be different\nfrom the current password",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                              height: 1.6,
                            ),
                      ),
                      const SizedBox(height: 30),
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
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: Color(0xff00C566),
                            size: 15,
                          ),
                          Text(
                            "  There must be at least 8 characters",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      color: const Color(0xff00C566),
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: Color(0xff00C566),
                            size: 15,
                          ),
                          Text(
                            "  There must be a unique code like @!#",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      color: const Color(0xff00C566),
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        text: "Enter your passwords",
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
                    ],
                  )
                ],
              ),
            ),
            CustomButton(
              text: "Submit",
              color: ConstColors.primaryColor,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
