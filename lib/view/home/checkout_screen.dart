// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/view/home/cart_screen.dart';
import 'package:conyfood/view/home/sucess_dialog.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
              text: "Checkout",
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
                      Container(
                        height: 200,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              DefaultImages.h36,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Payment Method",  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                    ),
                       
                      ),
                      const SizedBox(height: 20),
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
                                height: 14.55,
                                width: 44.85,
                                child: Image.asset(
                                  DefaultImages.h40,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                "•••• •••• •••• 87652",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                       fontSize: 12,
                    ),
                               
                              ),
                              const Expanded(child: SizedBox()),
                              const CircleAvatar(
                                radius: 11,
                                backgroundColor: ConstColors.primaryColor,
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
                            color: ConstColors.greyColor.withOpacity(0.2),
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
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12,
                    ),
                               
                              ),
                              const Expanded(child: SizedBox()),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        ConstColors.greyColor.withOpacity(0.5),
                                  ),
                                ),
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
                            color: ConstColors.greyColor.withOpacity(0.2),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "+ Add New",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                     fontSize: 14,
                    ),
                            
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
                      row("Subtotal", "102.32",context),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Promo Code",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                     fontSize: 16,
                              color: ConstColors.greyColor,
                    ),
                            
                          ),
                          Text(
                            "XRFREE",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                              color: ConstColors.primaryColor,
                    ),
                            
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      row("Delivery fee", "2.10",context),
                      const SizedBox(height: 20),
                      row("Total", "104.42",context),
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
                Get.dialog(
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    content: const SucessDialog(),
                  ),
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
