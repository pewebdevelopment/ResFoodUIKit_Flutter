// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/home/checkout_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              text: "My Cart",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: SizedBox(
                              height: 90,
                              width: Get.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 86,
                                    width: 86,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          index == 0
                                              ? DefaultImages.h35
                                              : index == 1
                                                  ? DefaultImages.h33
                                                  : index == 2
                                                      ? DefaultImages.h34
                                                      : DefaultImages.h35,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 17.99,
                                              width: 19.95,
                                              child: SvgPicture.asset(
                                                DefaultImages.h37,
                                              ),
                                            ),
                                            Text(
                                              " 4.4",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                    fontSize: 12,
                                                    color: ConstColors
                                                        .primaryColor,
                                                  ),
                                            ),
                                            const SizedBox(width: 16),
                                            index == 0
                                                ? Container(
                                                    height: 28,
                                                    width: 66,
                                                    decoration: BoxDecoration(
                                                      color: ConstColors
                                                          .primaryColor
                                                          .withOpacity(0.16),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "25% Off",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1!
                                                            .copyWith(
                                                              fontSize: 12,
                                                              color: ConstColors
                                                                  .primaryColor,
                                                            ),
                                                      ),
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          index == 0
                                              ? "Pizza with Extra cheese"
                                              : index == 1
                                                  ? "Burger with extra meat"
                                                  : index == 2
                                                      ? "Sushi with extra combination"
                                                      : "Sushi ervabta with various\nChicken with Extra cheese",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 14,
                                                height: 1.4,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: ConstColors
                                                          .lightGreyColor
                                                          .withOpacity(0.2),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: AppTheme.isLightTheme
                                                        ? Colors.black
                                                        : Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Text(
                                                  "01",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                        fontSize: 16,
                                                      ),
                                                ),
                                                const SizedBox(width: 10),
                                                Container(
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: ConstColors
                                                          .lightGreyColor
                                                          .withOpacity(0.2),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: AppTheme.isLightTheme
                                                        ? Colors.black
                                                        : Colors.white,
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                        fontSize: 14,
                                                        color: ConstColors
                                                            .primaryColor,
                                                      ),
                                                ),
                                                Text(
                                                  index == 0
                                                      ? "48.32"
                                                      : index == 1
                                                          ? "28.00"
                                                          : "26.00",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                ),
                                              ],
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
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Order notes",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 18,
                            ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: TextEditingController(),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                        maxLines: null,
                        minLines: 5,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 20, right: 20, top: 50),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(
                              color: ConstColors.greyColor.withOpacity(0.3),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(
                              color: ConstColors.primaryColor,
                            ),
                          ),
                          hintText: "Type here...",
                          hintStyle:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 16,
                                    color: ConstColors.greyColor,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Payment Details",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 18,
                            ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: Get.width,
                        child: TextFormField(
                          controller: TextEditingController(),
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 16,
                                  ),
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, right: 14),
                              child: Text(
                                "Add",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: ConstColors.primaryColor,
                                    ),
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.only(left: 20, right: 20),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: ConstColors.greyColor.withOpacity(0.3),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: ConstColors.primaryColor,
                              ),
                            ),
                            hintText: "Enter Your Promo Code",
                            hintStyle:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                      color: ConstColors.greyColor,
                                    ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      row("Subtotal", "102.32", context),
                      const SizedBox(height: 20),
                      row("Delivery fee", "2.10", context),
                      const SizedBox(height: 20),
                      row("Total", "104.42", context),
                      const SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Checkout",
              color: ConstColors.primaryColor,
              onTap: () {
                Get.to(
                  const CheckoutScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget row(String text, String text1, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 16,
              color: ConstColors.greyColor,
            ),
      ),
      Row(
        children: [
          Text(
            "\$",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14,
                  color: ConstColors.primaryColor,
                ),
          ),
          Text(
            text1,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    ],
  );
}
