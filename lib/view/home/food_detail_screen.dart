// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/home/cart_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({super.key});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height / 2,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  DefaultImages.h36,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
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
                            color: ConstColors.whiteColor.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: ConstColors.whiteColor,
                          ),
                        ),
                      ),
                      Text(
                        "Food Detail",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 18,
                              color: ConstColors.whiteColor,
                            ),
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          DefaultImages.tab3,
                          color: ConstColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 2.4),
            child: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                color:
                    AppTheme.isLightTheme ? Colors.white : HexColor("#171725"),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 25),
                              Container(
                                height: 24,
                                width: 66,
                                decoration: BoxDecoration(
                                  color: ConstColors.primaryColor
                                      .withOpacity(0.16),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    "25% Off",
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
                              const SizedBox(height: 20),
                              Text(
                                "Pizza with Extra cheese",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 20,
                                    ),
                              ),
                              const SizedBox(height: 15),
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
                                    "  Sydney, Singapore",
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
                              const SizedBox(height: 25),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: SvgPicture.asset(
                                          DefaultImages.h37,
                                        ),
                                      ),
                                      Text(
                                        "  4.0 (7)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          DefaultImages.h16,
                                        ),
                                      ),
                                      Text(
                                        "  110 Kcal",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                          DefaultImages.h2,
                                        ),
                                      ),
                                      Text(
                                        "  85 Sold",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Text(
                                "Description",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 16,
                                    ),
                              ),
                              const SizedBox(height: 15),
                              ReadMoreText(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor ac leo lorem nisl. Viverra vulputate sodales quis et dui, lacus. Iaculis eu egestas leo egestas vel. Ultrices ut",
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
                                trimMode: TrimMode.Line,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Topping",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 16,
                                    ),
                              ),
                              const SizedBox(height: 15),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 5,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ConstColors.lightGreyColor
                                                .withOpacity(0.2),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Image.asset(
                                              index == 0
                                                  ? DefaultImages.h6
                                                  : index == 1
                                                      ? DefaultImages.h7
                                                      : index == 2
                                                          ? DefaultImages.h8
                                                          : index == 3
                                                              ? DefaultImages.h9
                                                              : DefaultImages
                                                                  .h10,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 14),
                                        Text(
                                          index == 0
                                              ? "Beef"
                                              : index == 1
                                                  ? "Smoked Beef"
                                                  : index == 2
                                                      ? "Mozarella Cheese"
                                                      : index == 3
                                                          ? "Mushroom"
                                                          : "Paprika",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 14,
                                              ),
                                        ),
                                        const Expanded(child: SizedBox()),
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                              color: ConstColors.lightGreyColor
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
                                          index == 0 || index == 4
                                              ? "00"
                                              : "01",
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
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                              color: ConstColors.lightGreyColor
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
                                  );
                                },
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Price",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: AppTheme.isLightTheme
                                          ? ConstColors.greyColor
                                          : Colors.white,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 14,
                                          color: ConstColors.primaryColor,
                                        ),
                                  ),
                                  Text(
                                    " 48.32",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: CustomButton(
                              text: "Add to Cart",
                              color: ConstColors.primaryColor,
                              onTap: () {
                                Get.to(
                                  const CartScreen(),
                                  transition: Transition.rightToLeft,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
