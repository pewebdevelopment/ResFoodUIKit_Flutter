// ignore_for_file: prefer_const_constructors, file_names, deprecated_member_use

import 'package:conyfood/Restaurant/book_restaurant.dart';
import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/map/map_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import 'review_screen.dart';

class RestaurantDetailScreen extends StatefulWidget {
  const RestaurantDetailScreen({super.key});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
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
                  DefaultImages.res2,
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
                        "Restaurant Detail",
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
                              const SizedBox(height: 20),
                              Text(
                                "Benda Restaurant",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
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
                                  SizedBox(
                                    width: 5,
                                  ),
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
                              const SizedBox(height: 25),
                              Text(
                                "Details",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
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
                              Row(
                                children: [
                                  Text(
                                    "Reviews",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => ReviewScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "See all",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 16,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    DefaultImages.br1,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jhone Kenoady",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
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
                                          Image.asset(
                                            DefaultImages.star,
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            DefaultImages.star,
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            DefaultImages.star,
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            DefaultImages.star,
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "23 Nov 2022",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 10,
                                          color: AppTheme.isLightTheme
                                              ? ConstColors.greyColor
                                              : Colors.white,
                                          height: 1.4,
                                        ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Text(
                                  "Amet minim mollit non deserunt ullamcoest sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 12,
                                        color: AppTheme.isLightTheme
                                            ? ConstColors.greyColor
                                            : Colors.white,
                                        height: 1.4,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Location",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => MapScreen(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Image.asset(DefaultImages.br2),
                                    Positioned(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 15),
                                        child: Image.asset(
                                          DefaultImages.br3,
                                          height: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                    "\$250",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 10,
                                          color: ConstColors.primaryColor,
                                        ),
                                  ),
                                  Text(
                                    "312",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
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
                                  BookRestaurant(),
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
