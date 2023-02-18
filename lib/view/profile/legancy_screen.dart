// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/controller/profile_controller.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LegancyScreen extends StatefulWidget {
  const LegancyScreen({super.key});

  @override
  State<LegancyScreen> createState() => _LegancyScreenState();
}

class _LegancyScreenState extends State<LegancyScreen> {
  final profileController = Get.put(ProfileController());
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
              text: "Notifications",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ConstColors.greyColor.withOpacity(0.2),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Messages Notifications",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: ConstColors.greyColor,
                                    ),
                              ),
                              const SizedBox(height: 20),
                              for (var i = 0; i < 4; i++)
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          i == 0
                                              ? "Payment"
                                              : i == 1
                                                  ? "Delivery"
                                                  : i == 2
                                                      ? "Message"
                                                      : "Order",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 16,
                                              ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: CupertinoSwitch(
                                            activeColor:
                                                ConstColors.primaryColor,
                                            value: i == 0
                                                ? profileController
                                                    .isPayment.value
                                                : i == 1
                                                    ? profileController
                                                        .isDelivery.value
                                                    : i == 2
                                                        ? profileController
                                                            .isMessage.value
                                                        : profileController
                                                            .isOrder.value,
                                            onChanged: (v) {
                                              setState(() {
                                                if (i == 0) {
                                                  profileController
                                                      .isPayment.value = v;
                                                } else if (i == 1) {
                                                  profileController
                                                      .isDelivery.value = v;
                                                } else if (i == 2) {
                                                  profileController
                                                      .isMessage.value = v;
                                                } else if (i == 3) {
                                                  profileController
                                                      .isOrder.value = v;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    i == 3
                                        ? const SizedBox(height: 10)
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, bottom: 15),
                                            child: Divider(
                                              color: ConstColors.greyColor
                                                  .withOpacity(0.2),
                                            ),
                                          ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
