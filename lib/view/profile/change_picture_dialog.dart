// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChangePictureDialog extends StatelessWidget {
  const ChangePictureDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 2,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Change your picture",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          const SizedBox(height: 20),
          Divider(
            color: ConstColors.greyColor.withOpacity(0.2),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 60,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ConstColors.greyColor.withOpacity(0.1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 22,
                            child: SvgPicture.asset(
                              i == 0
                                  ? AppTheme.isLightTheme
                                      ? DefaultImages.p7
                                      : DefaultImages.Frame
                                  : i == 1
                                      ? AppTheme.isLightTheme
                                          ? DefaultImages.p5
                                          : DefaultImages.Frame2
                                      : DefaultImages.p6,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            i == 0
                                ? "Take a photo"
                                : i == 1
                                    ? "Choose from your file"
                                    : "Delete Photo",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: i == 2
                                          ? ConstColors.redColor
                                          : AppTheme.isLightTheme
                                              ? Colors.black
                                              : Colors.white,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
