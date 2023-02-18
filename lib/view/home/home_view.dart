// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/controller/home_controller.dart';
import 'package:conyfood/view/home/filter_bottomsheet.dart';
import 'package:conyfood/view/home/notification_screen.dart';
import 'package:conyfood/view/home/explore_screen.dart';
import 'package:conyfood/view/home/food_detail_screen.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../Restaurant/restaurant_screen1.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        DefaultImages.h1,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 18,
                      width: 18,
                      child: SvgPicture.asset(
                        DefaultImages.h4,
                      ),
                    ),
                    Text(
                      "Fairbanks, Alaska",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      const NotificationScreen(),
                      transition: Transition.rightToLeft,
                    );
                  },
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset(
                      AppTheme.isLightTheme ? DefaultImages.NotificationSVG : DefaultImages.notificationDark,
                    ),
                  ),
                ),
              ],
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
                  FocusManager.instance.primaryFocus?.unfocus();
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
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 175,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              DefaultImages.home1,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        column(DefaultImages.h18, "Pizza", context),
                        column(DefaultImages.h11, "Burger", context),
                        column(DefaultImages.h23, "Sushi", context),
                        column(DefaultImages.h20, "Ramen", context),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        column(DefaultImages.h17, "Donuts", context),
                        column(DefaultImages.h5, "Pastry", context),
                        column(DefaultImages.h21, "Meatbun", context),
                        column(DefaultImages.h22, "Chicken", context),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Now",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
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
                                backgroundColor: ConstColors.lightGreyColor.withOpacity(0.5),
                                radius: 4,
                              ),
                              const SizedBox(width: 5),
                              CircleAvatar(
                                backgroundColor: ConstColors.lightGreyColor.withOpacity(0.5),
                                radius: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 315,
                      width: Get.width,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 16),
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  height: 312,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppTheme.isLightTheme ? Colors.white : HexColor("#282837"),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xff949494).withOpacity(0.15),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    index == 0 ? DefaultImages.burgar : DefaultImages.burgar2,
                                                  ),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 14, right: 14, top: 15),
                                              child: Row(
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
                                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                          fontSize: 12,
                                                          color: ConstColors.primaryColor,
                                                        ),
                                                  ),
                                                  const Expanded(child: SizedBox()),
                                                  Container(
                                                    height: 28,
                                                    width: 66,
                                                    decoration: BoxDecoration(
                                                      color: ConstColors.primaryColor.withOpacity(0.16),
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "25% Off",
                                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                              fontSize: 12,
                                                              color: ConstColors.primaryColor,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 14, right: 14),
                                        child: Text(
                                          index == 0 ? "Big burger with extra\ncheese" : "Sushi ervabta with various\ntypes",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontSize: 14,
                                                height: 1.4,
                                              ),
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
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
                                                  index == 0 ? " 24" : " 35",
                                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w800,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 17.99,
                                              width: 19.95,
                                              child: SvgPicture.asset(
                                                DefaultImages.h3,
                                                color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Get.to(const ExploreScreen(), transition: Transition.rightToLeft);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recomendation Food",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                            ),
                            Text(
                              "See All",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 16,
                                    color: ConstColors.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(
                              const FoodDetailScreen(),
                              transition: Transition.rightToLeft,
                            );
                          },
                          child: Padding(
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
                                                  : DefaultImages.h34,
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
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                    fontSize: 12,
                                                    color: ConstColors.primaryColor,
                                                  ),
                                            ),
                                            const SizedBox(width: 16),
                                            Container(
                                              height: 28,
                                              width: 66,
                                              decoration: BoxDecoration(
                                                color: ConstColors.primaryColor.withOpacity(0.16),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "25% Off",
                                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                        fontSize: 12,
                                                        color: ConstColors.primaryColor,
                                                      ),
                                                ),
                                              ),
                                            ),
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
                                                      : "Sushi ervabta with various Chicken with Extra cheese",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontSize: 14,
                                                height: 1.4,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                        ),
                                        const SizedBox(height: 10),
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
                                              index == 0
                                                  ? " 24"
                                                  : index == 1
                                                      ? " 28"
                                                      : index == 2
                                                          ? " 26"
                                                          : " 24",
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40, left: 20),
                                    child: SizedBox(
                                      height: 11,
                                      width: 12,
                                      child: SvgPicture.asset(
                                        DefaultImages.h39,
                                        color: AppTheme.isLightTheme ? Colors.black : Colors.white,
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
                                backgroundColor: ConstColors.lightGreyColor.withOpacity(0.5),
                                radius: 4,
                              ),
                              const SizedBox(width: 5),
                              CircleAvatar(
                                backgroundColor: ConstColors.lightGreyColor.withOpacity(0.5),
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => RestaurantScreen1(),
                          ),
                        );
                      },
                      child: SizedBox(
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
                                color: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
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
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
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
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
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
                                color: !AppTheme.isLightTheme ? HexColor("#1D1D2F") : HexColor("#F7F7F7"),
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
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
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
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, color: HexColor("#9CA4AB")),
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
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 80,
                    ),
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

Widget column(String image, String text, BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 32,
        width: 32,
        child: Image.asset(
          image,
        ),
      ),
      const SizedBox(height: 10),
      Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 14,
              color: AppTheme.isLightTheme ? ConstColors.greyColor : Colors.white,
            ),
      ),
    ],
  );
}
