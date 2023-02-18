// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.6,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppTheme.isLightTheme ? Colors.white : HexColor("#171725"),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ConstColors.lightGreyColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.close,
                      color:
                          AppTheme.isLightTheme ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Give a Review",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                      ),
                ),
                const SizedBox(
                  height: 48,
                  width: 48,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              DefaultImages.h37,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              DefaultImages.h37,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              DefaultImages.h37,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              DefaultImages.h37,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              DefaultImages.h37,
                              color: ConstColors.greyColor.withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Detail Review",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: AppTheme.isLightTheme
                                ? ConstColors.greyColor
                                : Colors.white),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: TextEditingController(
                            text:
                                "the place is very beautiful, it doesn't disappoint"),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                              color: AppTheme.isLightTheme
                                  ? ConstColors.greyColor
                                  : Colors.white,
                              height: 1.6,
                            ),
                        maxLines: null,
                        minLines: 3,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 20, right: 20, top: 30),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(
                              color: ConstColors.primaryColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(
                              color: ConstColors.primaryColor,
                            ),
                          ),
                          hintText: "Type here...",
                          hintStyle:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 16,
                                    color: ConstColors.greyColor,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Submit",
              color: ConstColors.primaryColor,
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
