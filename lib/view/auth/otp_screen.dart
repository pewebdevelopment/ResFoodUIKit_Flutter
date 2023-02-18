// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/auth/signin_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              text: "",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Enter OTP",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 24,
                              ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: Text(
                          "We have just sent you 4 digit code via your",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 14,
                                color: ConstColors.greyColor,
                              ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "email ",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 14,
                                  color: ConstColors.greyColor,
                                ),
                          ),
                          Text(
                            "example@gmail.com",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Pinput(
                        length: 4,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        defaultPinTheme: PinTheme(
                          textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 24,
                              ),
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: ConstColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        text: "Continue",
                        color: ConstColors.primaryColor,
                        onTap: () {
                          Get.dialog(
                            AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              content: Container(
                                height: Get.height / 1.8,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  // color: AppTheme.isLightTheme
                                  //     ? Colors.white
                                  //     : Colors.black,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Container(
                                      height: 104,
                                      width: 104,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            DefaultImages.a4,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Center(
                                      child: Text(
                                        "You have logged in\nsuccessfully",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 22,
                                              height: 1.4,
                                              color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Center(
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 14,
                                              color: AppTheme.isLightTheme ? ConstColors.greyColor : Colors.white,
                                              height: 1.4,
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    CustomButton(
                                      text: "Continue",
                                      color: ConstColors.primaryColor,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignInScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn’t receive code? ",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16,
                                  color: ConstColors.greyColor,
                                ),
                          ),
                          Text(
                            "Resend Code",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16,
                                  color: ConstColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
