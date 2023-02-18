// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/profile/add_address_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "My Address",
              widget: GestureDetector(
                onTap: () {
                  Get.to(
                    const AddAddressScreen(),
                    transition: Transition.rightToLeft,
                  );
                },
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ConstColors.greyColor,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppTheme.isLightTheme
                        ? ConstColors.greyColor
                        : Colors.white,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                index == 0 ? "Andy Andrew" : "Elevenia Kalia",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 16,
                                    ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "+1 3712 3789",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppTheme.isLightTheme
                                          ? ConstColors.greyColor
                                          : Colors.white,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "711 Leavenworth Apt. # 47 San\nFrancisco, CA 94109",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppTheme.isLightTheme
                                          ? ConstColors.greyColor
                                          : Colors.white,
                                      height: 1.4,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 30,
                                width: 131,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: ConstColors.primaryColor,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Change Address",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 12,
                                          color: ConstColors.primaryColor,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                            : Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ConstColors.greyColor,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
            ),
            CustomButton(
              text: "Select Address",
              color: ConstColors.primaryColor,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
