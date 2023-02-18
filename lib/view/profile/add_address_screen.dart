// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
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
              text: "New Address",
              widget: const SizedBox(height: 48, width: 48),
              onTap: () {
                Navigator.pop(context);
              },
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
                      searchWithTitleField(
                        "Enter Full Name / Home / Office ",
                        TextEditingController(),
                        "Full Name",
                        const SizedBox(),
                        context,
                      ),
                      const SizedBox(height: 20),
                      searchWithTitleField(
                        "Select Country",
                        TextEditingController(),
                        "Country",
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                          size: 18,
                        ),
                        context,
                      ),
                      const SizedBox(height: 20),
                      searchWithTitleField(
                        "Select City",
                        TextEditingController(),
                        "City",
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                          size: 18,
                        ),
                        context,
                      ),
                      const SizedBox(height: 20),
                      searchWithTitleField(
                        "Select State",
                        TextEditingController(),
                        "State",
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: ConstColors.fontColor,
                          size: 18,
                        ),
                        context,
                      ),
                      const SizedBox(height: 20),
                      searchWithTitleField(
                        "Zip Code",
                        TextEditingController(),
                        "Full Name",
                        const SizedBox(),
                        context,
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Detail Address",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 12,
                                  color: ConstColors.greyColor,
                                ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: Get.width,
                            child: TextFormField(
                              controller: TextEditingController(),
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 16,
                                  ),
                              maxLines: null,
                              minLines: 5,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppTheme.isLightTheme ? Colors.white : HexColor("#1D1D2F"),
                                contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide:
                                      BorderSide(color: AppTheme.isLightTheme ? ConstColors.transparentColor : Theme.of(context).dividerColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: const BorderSide(
                                    color: ConstColors.primaryColor,
                                  ),
                                ),
                                hintText: "Enter Your Address",
                                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                      color: ConstColors.greyColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Save Address",
              color: Theme.of(context).textTheme.bodyText1!.color!,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
