// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/home/review_bottomsheet.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  DefaultImages.h26,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: MediaQuery.of(context).padding.top + 15),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ConstColors.lightGreyColor.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: ConstColors.fontColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 2),
            child: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                color:
                    AppTheme.isLightTheme ? Colors.white : HexColor("#171725"),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 56,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          DefaultImages.h24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Justin Kenter",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 16,
                                              ),
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                          height: 23,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffE3E7EC),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Driver - B 678 EA",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                    fontSize: 10,
                                                    color:
                                                        const Color(0xff00C566),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: ConstColors.greyColor
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        DefaultImages.tr1,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: ConstColors.greyColor
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        DefaultImages.tr2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: SvgPicture.asset(
                                          DefaultImages.h38,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: SvgPicture.asset(
                                          DefaultImages.h30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Estimated Time",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "25 Minute",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 10,
                                              color: ConstColors.greyColor,
                                            ),
                                      ),
                                      const SizedBox(height: 30),
                                      Text(
                                        "Jl. Veteran No. 4 Surabaya",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Home  |  14.30",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 10,
                                              color: ConstColors.greyColor,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: "Order Receiped",
                      color: ConstColors.primaryColor,
                      onTap: () {
                        Get.bottomSheet(
                          const ReviewBottomSheet(),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
