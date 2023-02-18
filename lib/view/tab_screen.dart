// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/controller/home_controller.dart';
import 'package:conyfood/view/chat/chat_view.dart';
import 'package:conyfood/view/favorite/favorite_view.dart';
import 'package:conyfood/view/home/home_view.dart';
import 'package:conyfood/view/order/order_view.dart';
import 'package:conyfood/view/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../config/theme.dart';
import '../main.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeController.scaffoldKey,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => homeController.flag.value == 0
                ? const HomeView()
                : homeController.flag.value == 1
                    ? const OrderView()
                    : homeController.flag.value == 2
                        ? const FavoriteView()
                        : homeController.flag.value == 3
                            ? const ChatView()
                            : const ProfileView(),
          ),
          Container(
            height: 60 + MediaQuery.of(context).padding.bottom,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppTheme.isLightTheme
                  ? ConstColors.whiteColor
                  : ConstColors.darkTabBar,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFEFEFE),
                ),
              ],
            ),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      homeController.flag.value = 0;
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        homeController.flag.value != 0
                            ? DefaultImages.tab1Select
                            : DefaultImages.tab1,
                        fit: BoxFit.fill,
                        color: homeController.flag.value == 0
                            ? Theme.of(context).primaryColor
                            : ConstColors.lightGreyColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeController.flag.value = 1;
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        homeController.flag.value == 1
                            ? DefaultImages.tab2Select
                            : DefaultImages.tab2,
                        fit: BoxFit.fill,
                        color: homeController.flag.value == 1
                            ? Theme.of(context).primaryColor
                            : ConstColors.lightGreyColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeController.flag.value = 2;
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        homeController.flag.value == 2
                            ? DefaultImages.tab3Select
                            : DefaultImages.tab3,
                        fit: BoxFit.fill,
                        color: homeController.flag.value == 2
                            ? Theme.of(context).primaryColor
                            : ConstColors.lightGreyColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeController.flag.value = 3;
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        homeController.flag.value == 3
                            ? DefaultImages.tab4Select
                            : DefaultImages.tab4,
                        fit: BoxFit.fill,
                        color: homeController.flag.value == 3
                            ? Theme.of(context).primaryColor
                            : ConstColors.lightGreyColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeController.flag.value = 4;
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        homeController.flag.value == 4
                            ? DefaultImages.tab5Select
                            : DefaultImages.tab5,
                        fit: BoxFit.fill,
                        color: homeController.flag.value == 4
                            ? Theme.of(context).primaryColor
                            : ConstColors.lightGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
