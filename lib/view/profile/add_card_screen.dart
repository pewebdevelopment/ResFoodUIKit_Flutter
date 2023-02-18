// ignore_for_file: deprecated_member_use

import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 15),
            CustomAppBar(
              text: "Add New Card",
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
                        "Enter Card Number",
                        TextEditingController(),
                        "Card Number",
                        const SizedBox(),
                        context,
                      ),
                      const SizedBox(height: 20),
                      searchWithTitleField(
                        "Enter Holder Number",
                        TextEditingController(),
                        "Card Holder Name",
                        const SizedBox(),
                        context,
                      ),
                      const SizedBox(height: 20),
                      searchWithTitleField(
                        "Enter Holder Number",
                        TextEditingController(),
                        "Card Holder Name",
                        const SizedBox(),
                        context,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: searchWithTitleField(
                              "MM/YY",
                              TextEditingController(),
                              "Expired",
                              const SizedBox(),
                              context,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: searchWithTitleField(
                              "CVV",
                              TextEditingController(),
                              "CVV Code",
                              const SizedBox(),
                              context,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Add Card",
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
