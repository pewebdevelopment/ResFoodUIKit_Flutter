// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/controller/home_controller.dart';
import 'package:conyfood/view/order/history.dart';
import 'package:conyfood/view/order/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top + 15),
        Center(
          child: Text(
            "My Order",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                ),
          ),
        ),
        const SizedBox(height: 20),
        Obx(
          () => Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      homeController.order.value = true;
                    },
                    child: Container(
                      height: 41.14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: homeController.order.value == true
                            ? ConstColors.primaryColor
                            : ConstColors.transparentColor,
                      ),
                      child: Center(
                        child: Text(
                          "Order",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: homeController.order.value == true
                                        ? ConstColors.whiteColor
                                        : AppTheme.isLightTheme
                                            ? Colors.black
                                            : Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      homeController.order.value = false;
                    },
                    child: Container(
                      height: 41.14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: homeController.order.value == false
                            ? ConstColors.primaryColor
                            : ConstColors.transparentColor,
                      ),
                      child: Center(
                        child: Text(
                          "History",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: homeController.order.value == false
                                        ? ConstColors.whiteColor
                                        : AppTheme.isLightTheme
                                            ? Colors.black
                                            : Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Obx(
          () => homeController.order.value == true
              ? const Order()
              : const History(),
        ),
      ],
    );
  }
}
