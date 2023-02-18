// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 14,
            right: 14,
            top: MediaQuery.of(context).padding.top + 20,
            bottom: MediaQuery.of(context).padding.bottom + 16),
        child: Column(
          children: [
            CustomAppBar(
              text: "Checkout",
              widget: const SizedBox(height: 48, width: 10),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Row(
                    children: [
                      Image.asset(
                        DefaultImages.br10,
                        height: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Benda Restaurant",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 16,
                                width: 16,
                                child: SvgPicture.asset(
                                  DefaultImages.h4,
                                  color: AppTheme.isLightTheme
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                              Text(
                                "Uttar Pradesh, India",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: AppTheme.isLightTheme
                                          ? ConstColors.greyColor
                                          : Colors.white,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                DefaultImages.star,
                                height: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.4",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: Colors.yellow,
                                    ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(41 Reviews)",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: AppTheme.isLightTheme
                                          ? ConstColors.greyColor
                                          : Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Customer Info",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Name",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Text(
                        "Andy Lexian",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Email",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Text(
                        "Andylexian29@gmail.com",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Order Info",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Service Type",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Text(
                        " Casual Dining",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Book Time",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Text(
                        "June 12, 2022",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Total",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ConstColors.primaryColor,
                                    ),
                          ),
                          Text(
                            "320",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Promo Code",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                            "Input code",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                      color: ConstColors.lightGreyColor,
                                    ),
                          ),
                          Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Theme.of(context).primaryColor),
                              child: Center(
                                child: Text("Apply",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 16, color: Colors.white)),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Promo",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Text(
                        "- \$20",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: ConstColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Total Pay",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ConstColors.primaryColor,
                                    ),
                          ),
                          Text(
                            "300",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 66,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: ConstColors.greyColor.withOpacity(0.2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 14.55,
                            width: 44.85,
                            child: Image.asset(
                              DefaultImages.h40,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "•••• •••• •••• 87652",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                          const Expanded(child: SizedBox()),
                          Image.asset(
                            DefaultImages.check,
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 66,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: ConstColors.primaryColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 31,
                            width: 40,
                            child: Image.asset(
                              DefaultImages.h28,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "•••• •••• •••• 87652",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                          Expanded(child: SizedBox()),
                          Image.asset(
                            DefaultImages.check1,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomButton(
                      text: "Pay Now",
                      color: ConstColors.primaryColor,
                      onTap: () {
                        Get.to(
                          CheckoutScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                    ),
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
