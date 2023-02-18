// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/auth/language_view.dart';
import 'package:conyfood/view/auth/select_location_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 30),
            Center(
              child: Text(
                "Select your Language",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 24,
                    ),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      color: AppTheme.isLightTheme
                          ? ConstColors.lightGreyColor
                          : Colors.white,
                      height: 1.4,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Languange",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    color: ConstColors.greyColor,
                  ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.showBottomSheet(
                  (context) => const LanguageView(),
                );
              },
              child: Container(
                height: 52,
                width: Get.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    // assign the color to the border color
                    color: AppTheme.isLightTheme
                        ? Color(0xffF6F8FE)
                        : HexColor("#78828A"),
                  ),
                  borderRadius: BorderRadius.circular(24),
                  color: AppTheme.isLightTheme
                      ? Color(0xffF6F8FE)
                      : HexColor("#171725"),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                              color: ConstColors.lightGreyColor,
                            ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: ConstColors.lightGreyColor,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(
                text: "Continue",
                color: ConstColors.primaryColor,
                onTap: () {
                  Get.to(
                    const SelectLocationScreen(),
                    transition: Transition.rightToLeft,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
