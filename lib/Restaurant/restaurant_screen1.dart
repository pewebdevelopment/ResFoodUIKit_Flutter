// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/Restaurant/Restaurant%20Detail.dart';
import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/controller/home_controller.dart';
import 'package:conyfood/view/home/filter_bottomsheet.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../widget/common_appbar.dart';

class RestaurantScreen1 extends StatefulWidget {
  const RestaurantScreen1({super.key});

  @override
  State<RestaurantScreen1> createState() => _RestaurantScreen1State();
}

class _RestaurantScreen1State extends State<RestaurantScreen1> {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomAppBar(
              text: "Restaurant",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: searchField(
              "Search...",
              TextEditingController(),
              SvgPicture.asset(DefaultImages.search),
              GestureDetector(
                onTap: () {
                  homeController.scaffoldKey.currentState!.showBottomSheet(
                    (context) => const FilterBottomSheet(),
                  );
                },
                child: Image.asset(
                  DefaultImages.filter,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
              context,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Restaurant Nearby",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 8,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: ConstColors.primaryColor,
                            ),
                          ),
                          const SizedBox(width: 5),
                          CircleAvatar(
                            backgroundColor:
                                ConstColors.lightGreyColor.withOpacity(0.5),
                            radius: 4,
                          ),
                          const SizedBox(width: 5),
                          CircleAvatar(
                            backgroundColor:
                                ConstColors.lightGreyColor.withOpacity(0.5),
                            radius: 4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(14),
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 0.2, //spread radius
                              blurRadius: 16, // blur radius
                              offset: Offset(1, 10),
                            )
                          ],
                          color: !AppTheme.isLightTheme
                              ? HexColor("#1D1D2F")
                              : HexColor("#F7F7F7"),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              DefaultImages.rs2,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Elisandra Restaurant",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        DefaultImages.rs4,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Endera Street...",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 14,
                                                color: HexColor("#9CA4AB")),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 0.2, //spread radius
                              blurRadius: 16, // blur radius
                              offset: Offset(1, 10),
                            )
                          ],
                          color: !AppTheme.isLightTheme
                              ? HexColor("#1D1D2F")
                              : HexColor("#F7F7F7"),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              DefaultImages.rs3,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Casandra Restaurant",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        DefaultImages.rs4,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Elion Street...",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 14,
                                                color: HexColor("#9CA4AB")),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Restaurant List",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 18,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          const RestaurantDetailScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          height: 86,
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
                                          ? DefaultImages.res1
                                          : index == 1
                                              ? DefaultImages.res2
                                              : DefaultImages.res3,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                color: Colors.yellow,
                                              ),
                                        ),
                                        const SizedBox(width: 16),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      index == 0
                                          ? "Benda restaurant"
                                          : index == 1
                                              ? "Enderanda  restaurant"
                                              : "Localestate  restaurant",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 14,
                                              height: 1.4,
                                              fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          DefaultImages.rs4,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Endera Street...",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: HexColor("#9CA4AB")),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 20),
                                child: SizedBox(
                                  height: 12,
                                  width: 12,
                                  child: SvgPicture.asset(
                                    DefaultImages.h39,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
