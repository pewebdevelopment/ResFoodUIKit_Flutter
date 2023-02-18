// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: AppTheme.isLightTheme ? Colors.white : HexColor("#171725"),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 40),
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
                      color: AppTheme.isLightTheme
                          ? ConstColors.greyColor
                          : Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Select a Language",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                      ),
                ),
                const SizedBox(
                  height: 48,
                  width: 48,
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 48,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppTheme.isLightTheme
                            ? Color(0xffF6F8FE)
                            : HexColor("#282837"),
                        border: Border.all(
                          color: index == 0
                              ? ConstColors.primaryColor
                              : HexColor("434E58"),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? ConstColors.primaryColor
                                    : ConstColors.transparentColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: index != 0
                                      ? ConstColors.greyColor.withOpacity(0.2)
                                      : ConstColors.transparentColor,
                                ),
                              ),
                              child: Icon(
                                Icons.check,
                                color: index == 0
                                    ? ConstColors.whiteColor
                                    : ConstColors.transparentColor,
                                size: 15,
                              ),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              index == 0
                                  ? "English (UK)"
                                  : index == 1
                                      ? "English"
                                      : index == 2
                                          ? "Bahasa Indonesia"
                                          : index == 3
                                              ? "Chineses"
                                              : index == 4
                                                  ? "Croatian"
                                                  : index == 5
                                                      ? "Czech"
                                                      : index == 6
                                                          ? "Danish"
                                                          : index == 7
                                                              ? "Filipino"
                                                              : "Finland",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
