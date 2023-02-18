// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/profile/add_card_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              text: "My Payment",
              widget: GestureDetector(
                onTap: () {
                  Get.to(
                    const AddCardScreen(),
                    transition: Transition.rightToLeft,
                  );
                },
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF2F2F5),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppTheme.isLightTheme ? Colors.black : Colors.white,
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xffF2F2F5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image.asset(
                                index == 0
                                    ? AppTheme.isLightTheme
                                        ? DefaultImages.h40
                                        : DefaultImages.mpl1
                                    : AppTheme.isLightTheme
                                        ? DefaultImages.h28
                                        : DefaultImages.mpl2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BCA (Bank Central Asia)",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 16,
                                    ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "•••• •••• •••• 87652",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: ConstColors.greyColor,
                                    ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Brooklyn Simmons",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: ConstColors.greyColor,
                                    ),
                              ),
                              const SizedBox(height: 15),
                              Divider(
                                color: ConstColors.greyColor.withOpacity(0.2),
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
                            : const SizedBox(),
                      ],
                    ),
                  );
                },
              ),
            ),
            CustomButton(
              text: "Select Payment",
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
