// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/view/auth/signin_screen.dart';
import 'package:conyfood/view/home/voucher_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 3.2,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Are you sure you want\nto logout?",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                  height: 1.4,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: "Continue",
            color: ConstColors.primaryColor,
            onTap: () {
              Get.back();
              Get.to(
                const VoucherScreen(),
                transition: Transition.rightToLeft,
              );
            },
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.offAll(
                const SignInScreen(),
                transition: Transition.rightToLeft,
              );
            },
            child: Text(
              "Log Out",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    color: ConstColors.redColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
