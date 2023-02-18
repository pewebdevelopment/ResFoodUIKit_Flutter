// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/widget/custom_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../config/theme.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

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
                  "Select a Location",
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
            searchField(
              "Search...",
              TextEditingController(),
              SvgPicture.asset(DefaultImages.search),
              Image.asset(
                DefaultImages.filter,
                color: AppTheme.isLightTheme
                    ? ConstColors.greyColor
                    : Colors.white,
              ),
              context,
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            index == 0
                                ? "Fairbanks, Alaska"
                                : index == 1
                                    ? "Indianapolis, Indiana"
                                    : index == 2
                                        ? "Attleboro, Massachusetts"
                                        : index == 3
                                            ? "Burlington, Vermont"
                                            : index == 4
                                                ? "Queens, New York"
                                                : index == 5
                                                    ? "Billings, Montana"
                                                    : index == 6
                                                        ? "Chattanooga, Tennessee"
                                                        : index == 7
                                                            ? "Wentworth, South Dakota"
                                                            : index == 8
                                                                ? "Worland, Wyoming"
                                                                : "White Plains, New York",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                          const Expanded(child: SizedBox()),
                          index == 0
                              ? Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    color: ConstColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: ConstColors.whiteColor,
                                    size: 15,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: ConstColors.lightGreyColor.withOpacity(0.2),
                      ),
                      const SizedBox(height: 10),
                    ],
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
