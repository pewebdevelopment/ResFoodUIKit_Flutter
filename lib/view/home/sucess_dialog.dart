// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/home/voucher_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessDialog extends StatelessWidget {
  const SucessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 2.2,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 134.33,
            width: 140.45,
            child: Image.asset(
              DefaultImages.h19,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Order Successful",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 24,
                  color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12,
                  color: ConstColors.greyColor,
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
        ],
      ),
    );
  }
}
