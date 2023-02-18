// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/main.dart';
import 'package:conyfood/view/profile/address_screen.dart';
import 'package:conyfood/view/profile/change_password_screen.dart';
import 'package:conyfood/view/profile/edit_profile_screen.dart';
import 'package:conyfood/view/profile/forgot_password_screen.dart';
import 'package:conyfood/view/profile/help_screen.dart';
import 'package:conyfood/view/profile/language_screen.dart';
import 'package:conyfood/view/profile/legancy_screen.dart';
import 'package:conyfood/view/profile/logout_dialog.dart';
import 'package:conyfood/view/profile/payment_screen.dart';
import 'package:conyfood/view/profile/policy_screen.dart';
import 'package:conyfood/view/profile/security_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isdark = !AppTheme.isLightTheme;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Row(
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      DefaultImages.h1,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Andy Lexsian",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "@Andy1999",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: ConstColors.greyColor,
                          ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    const EditProfileScreen(),
                    transition: Transition.rightToLeft,
                  );
                },
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    DefaultImages.p4,
                    color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ],
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
                    Text(
                      "Personal Info",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    const SizedBox(height: 20),
                    row(DefaultImages.p1, "My Cart", () {}, context),
                    const SizedBox(height: 25),
                    row(DefaultImages.p11, "My Address", () {
                      Get.to(
                        const AddressScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 25),
                    row(DefaultImages.p15, "Payment Method", () {
                      Get.to(
                        const PaymentScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 30),
                    Text(
                      "Security",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    const SizedBox(height: 20),
                    row(DefaultImages.p9, "Change Password", () {
                      Get.to(
                        const ChangePasswordScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 25),
                    row(DefaultImages.p9, "Forgot Password", () {
                      Get.to(
                        const ForgotPasswordScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 25),
                    row(DefaultImages.p13, "Security", () {
                      Get.to(
                        const SecurityScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 30),
                    Text(
                      "General",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    const SizedBox(height: 20),
                    row(DefaultImages.p8, "Language", () {
                      Get.to(
                        const LanguageScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 25),
                    rowWithWidget(
                        DefaultImages.p16,
                        "Clear Cache",
                        Text(
                          "88 MB",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    color: ConstColors.greyColor,
                                  ),
                        ), () {
                      // Get.to(
                      //   const LegancyScreen(),
                      //   transition: Transition.rightToLeft,
                      // );
                    }, context),
                    const SizedBox(height: 30),
                    Text(
                      "About",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    const SizedBox(height: 20),
                    row(DefaultImages.p14, "Legal and Policies", () {
                      Get.to(
                        const PolicyScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 25),
                    row(DefaultImages.p10, "Help & Support", () {
                      Get.to(
                        const HelpScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset(
                            DefaultImages.p2,
                            color: AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          "Dark Mode",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        Spacer(),
                        CupertinoSwitch(
                          value: isdark,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (value) {
                            setState(() {
                              isdark = value;
                            });
                            if (isdark) {
                              MyApp.setCustomeTheme(context, 7);
                            } else {
                              MyApp.setCustomeTheme(context, 6);
                            }
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    row(
                        AppTheme.isLightTheme
                            ? DefaultImages.NotificationSVG
                            : DefaultImages.notificationDark,
                        "Notifications", () {
                      Get.to(
                        const LegancyScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }, context),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: "Log Out",
                      color: ConstColors.transparentColor,
                      textColor: Colors.white,
                      onTap: () {
                        Get.dialog(
                          AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            content: const LogoutDialog(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget row(
    String image, String text, VoidCallback onTap, BuildContext context) {
  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            image,
            color: AppTheme.isLightTheme ? Colors.black : Colors.white,
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                ),
          ),
        ),
        SizedBox(
          height: 15,
          width: 15,
          child: SvgPicture.asset(
            DefaultImages.h39,
            color: ConstColors.greyColor,
          ),
        ),
      ],
    ),
  );
}

Widget rowWithWidget(String image, String text, Widget widget,
    VoidCallback onTap, BuildContext context,
    {bool isCupertinoBtn = false}) {
  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            image,
            color: AppTheme.isLightTheme ? Colors.black : Colors.white,
          ),
        ),
        const SizedBox(width: 14),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
              ),
        ),
        Spacer(),
        isCupertinoBtn
            ? CupertinoSwitch(
                value: AppTheme.isLightTheme,
                activeColor: Theme.of(context).primaryColor,
                onChanged: (value) {
                  // setState(() {
                  //   isdark = value!;
                  // });
                  // if (isdark) {
                  //   MyApp.setCustomeTheme(context, 7);
                  // } else {
                  //   MyApp.setCustomeTheme(context, 6);
                  // }
                },
              )
            : Image.asset(
                DefaultImages.h1,
                height: 25,
              )
      ],
    ),
  );
}
