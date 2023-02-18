// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../config/theme.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.2,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppTheme.isLightTheme ? Colors.white : HexColor("#171725"),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ConstColors.lightGreyColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.close,
                      color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Filter",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                      ),
                ),
                const SizedBox(
                  height: 48,
                  width: 48,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Price Range",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(height: 15),
                      // Image.asset(DefaultImages.pricerange),
                      Container(
                        height: 60,
                        width: Get.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              DefaultImages.Prcerrrange,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Popular Food",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(height: 15),
                      Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          for (var i = 0; i < 9; i++)
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: i == 1 ? ConstColors.primaryColor : Theme.of(context).disabledColor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 25, right: 25),
                                child: Text(
                                  i == 0
                                      ? "Pizza"
                                      : i == 1
                                          ? "Burger"
                                          : i == 2
                                              ? "Meatbun"
                                              : i == 3
                                                  ? "Sushi"
                                                  : i == 4
                                                      ? "Sushi"
                                                      : i == 5
                                                          ? "Ramen"
                                                          : i == 6
                                                              ? "Donuts"
                                                              : i == 7
                                                                  ? "Pastry"
                                                                  : "Fried chicken",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        fontSize: 14,
                                        color: i == 1
                                            ? ConstColors.primaryColor
                                            : AppTheme.isLightTheme
                                                ? ConstColors.greyColor
                                                : Colors.white,
                                      ),
                                ),
                              ),
                            )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Distances",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(height: 15),
                      Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          for (var i = 0; i < 3; i++)
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                  color: i == 1 ? ConstColors.primaryColor : Theme.of(context).disabledColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 25, right: 25),
                                child: Text(
                                  i == 0
                                      ? "< 5KM"
                                      : i == 1
                                          ? "5KM - 10KM"
                                          : "> 10KM",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        fontSize: 14,
                                        color: i == 1
                                            ? ConstColors.primaryColor
                                            : AppTheme.isLightTheme
                                                ? ConstColors.greyColor
                                                : Colors.white,
                                      ),
                                ),
                              ),
                            )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Popular Food",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(height: 15),
                      Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          for (var i = 0; i < 9; i++)
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: i == 1 ? ConstColors.primaryColor : Theme.of(context).disabledColor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 25, right: 25),
                                child: Text(
                                  i == 0
                                      ? "Pizza"
                                      : i == 1
                                          ? "Burger"
                                          : i == 2
                                              ? "Meatbun"
                                              : i == 3
                                                  ? "Sushi"
                                                  : i == 4
                                                      ? "Sushi"
                                                      : i == 5
                                                          ? "Ramen"
                                                          : i == 6
                                                              ? "Donuts"
                                                              : i == 7
                                                                  ? "Pastry"
                                                                  : "Fried chicken",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        fontSize: 14,
                                        color: i == 1
                                            ? ConstColors.primaryColor
                                            : AppTheme.isLightTheme
                                                ? ConstColors.greyColor
                                                : Colors.white,
                                      ),
                                ),
                              ),
                            )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Star Rating",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          starCard(1, Theme.of(context).disabledColor),
                          const SizedBox(width: 15),
                          starCard(2, Theme.of(context).disabledColor),
                          const SizedBox(width: 15),
                          starCard(3, Theme.of(context).disabledColor),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          starCard(4, ConstColors.primaryColor),
                          const SizedBox(width: 15),
                          starCard(5, Theme.of(context).disabledColor),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
                text: "Apply Filter",
                color: ConstColors.primaryColor,
                onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    builder: (builder) {
                      return StatefulBuilder(
                        builder: (BuildContext context, setState) => ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: const Radius.circular(20), topRight: const Radius.circular(20)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 18, right: 18, top: 10),
                              child: ListView(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#282837") : HexColor("#ECF1F6"),
                                          child: Icon(
                                            Icons.cancel,
                                            color: !AppTheme.isLightTheme ? Colors.white : Colors.black,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "All Category",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h18,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h11,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h23,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h20,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Pizza",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Burger",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Sushi",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "More",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h17,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h5,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h21,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
                                          child: Image.asset(
                                            DefaultImages.h22,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Donuts",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Pastry ",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Meatbun",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Fried \nchicken",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  "Clear All",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                        color: ConstColors.redColor,
                      ),
                ),
              ),
            ),
            // const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget starCard(int count, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: color,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12, left: 25, right: 25),
        child: Row(
          children: [
            for (var i = 0; i < count; i++)
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(
                  DefaultImages.h37,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
