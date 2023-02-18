// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color? textColor;
  final VoidCallback onTap;
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 56,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).primaryColor,
          border: Border.all(
            color: color == ConstColors.greyColor.withOpacity(0.1)
                ? ConstColors.transparentColor
                : ConstColors.primaryColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  color: textColor ?? ConstColors.whiteColor,
                ),
          ),
        ),
      ),
    );
  }
}

class BorderButton extends StatelessWidget {
  final String text;
  final String image;

  const BorderButton({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppTheme.isLightTheme
              ? ConstColors.greyColor.withOpacity(0.5)
              : Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              image,
            ),
          ),
          const SizedBox(width: 14),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                ),
          ),
        ],
      ),
    );
  }
}
