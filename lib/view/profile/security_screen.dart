// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/controller/profile_controller.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  final profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "Security",
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
                            children: [
                              for (var i = 0; i < 3; i++)
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          i == 0
                                              ? "Face ID"
                                              : i == 1
                                                  ? "Remember Password"
                                                  : "Touch ID",
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
                                                ? profileController.isFace.value
                                                : i == 1
                                                    ? profileController
                                                        .isRemember.value
                                                    : profileController
                                                        .isTouch.value,
                                            onChanged: (v) {
                                              setState(() {
                                                if (i == 0) {
                                                  profileController
                                                      .isFace.value = v;
                                                } else if (i == 1) {
                                                  profileController
                                                      .isRemember.value = v;
                                                } else if (i == 2) {
                                                  profileController
                                                      .isTouch.value = v;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    i == 2
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
