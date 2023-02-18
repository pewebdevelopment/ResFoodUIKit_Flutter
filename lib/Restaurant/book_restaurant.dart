// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'checkout_screen.dart';

class BookRestaurant extends StatefulWidget {
  const BookRestaurant({Key? key}) : super(key: key);

  @override
  State<BookRestaurant> createState() => _BookRestaurantState();
}

class _BookRestaurantState extends State<BookRestaurant> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
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
              text: "Book Restaurant",
              widget: const SizedBox(height: 48, width: 10),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Customer Info",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
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
                      fontSize: 14, color: Theme.of(context).disabledColor),
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
                      fontSize: 14, color: Theme.of(context).disabledColor),
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
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
                          .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
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
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    color: Colors.yellow,
                                  ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(41 Reviews)",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Service Type",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16, color: Theme.of(context).disabledColor),
                ),
                Spacer(),
                Text(
                  " Casual Dining",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
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
                  "Book Date",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                _selectDate(context);
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
                        "Date",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                              color: ConstColors.lightGreyColor,
                            ),
                      ),
                      const Icon(
                        Icons.date_range_outlined,
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
                    CheckoutScreen(),
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

  DateTime selectedDate = DateTime.now();

  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }
}
