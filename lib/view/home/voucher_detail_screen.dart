// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/home/tracking_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoucherDetailScreen extends StatefulWidget {
  const VoucherDetailScreen({super.key});

  @override
  State<VoucherDetailScreen> createState() => _VoucherDetailScreenState();
}

class _VoucherDetailScreenState extends State<VoucherDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomAppBar(
              text: "Voucher Detail",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
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
                    const SizedBox(height: 10),
                    Container(
                      height: 265,
                      width: Get.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            DefaultImages.h41,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 38,
                            width: 98,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ConstColors.primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                "Description",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: ConstColors.whiteColor,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            width: 98,
                            child: Center(
                              child: Text(
                                "How to Use",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            width: 98,
                            child: Center(
                              child: Text(
                                "T & C",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has been the\nindustry's standard dummy text ever since the 1500s, ",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              color: AppTheme.isLightTheme
                                  ? ConstColors.greyColor
                                  : Colors.white,
                              height: 1.9,
                            ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              color: AppTheme.isLightTheme
                                  ? ConstColors.greyColor
                                  : Colors.white,
                              height: 1.9,
                            ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: CustomButton(
              text: "Use Voucher",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const TrackingScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
