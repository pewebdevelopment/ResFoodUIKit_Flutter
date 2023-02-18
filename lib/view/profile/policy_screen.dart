// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:flutter/material.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 15),
                CustomAppBar(
                  text: "Legal and Policies",
                  widget: const SizedBox(height: 48, width: 48),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    physics: const ClampingScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            "Terms",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: ConstColors.lightGreyColor,
                                      height: 1.8,
                                    ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: ConstColors.lightGreyColor,
                                      height: 1.8,
                                    ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Changes to the Service and/or Terms:",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: ConstColors.lightGreyColor,
                                      height: 1.8,
                                    ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: ConstColors.lightGreyColor,
                                      height: 1.8,
                                    ),
                          ),
                          const SizedBox(height: 50),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 20,
                top: MediaQuery.of(context).padding.top + 80,
                bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    width: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ConstColors.greyColor.withOpacity(0.2),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ConstColors.greyColor.withOpacity(0.2),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
