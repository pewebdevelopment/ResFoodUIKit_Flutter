// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "Language",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                "Suggested Languages",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12,
                                  color: ConstColors.greyColor,
                    ),
                              
                              ),
                              const SizedBox(height: 20),
                              for (var i = 0; i < 3; i++)
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          i == 0
                                              ? "English (UK)"
                                              : i == 1
                                                  ? "English"
                                                  : "Bahasa Indonesia",
                                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                    ),
                                        
                                        ),
                                        i == 0
                                            ? Container(
                                                height: 24,
                                                width: 24,
                                                decoration: const BoxDecoration(
                                                  color:
                                                      ConstColors.primaryColor,
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
                      const SizedBox(height: 20),
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
                                "Other Languages",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                       fontSize: 12,
                                  color: ConstColors.greyColor,
                    ),
                               
                              ),
                              const SizedBox(height: 20),
                              for (var i = 0; i < 6; i++)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      i == 0
                                          ? "Chineses"
                                          : i == 1
                                              ? "Croatian"
                                              : i == 2
                                                  ? "Czech"
                                                  : i == 3
                                                      ? "Danish"
                                                      : i == 4
                                                          ? "Filipino"
                                                          : "Finland",
                                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                       fontSize: 16,
                    ),
                                     
                                    ),
                                    i == 5
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
                      const SizedBox(height: 50)
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
