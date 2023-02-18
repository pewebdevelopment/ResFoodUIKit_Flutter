// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 14,
            right: 14,
            top: MediaQuery.of(context).padding.top + 20,
            bottom: MediaQuery.of(context).padding.bottom + 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomAppBar(
                text: "Review",
                widget: const SizedBox(height: 48, width: 48),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      same(
                        DefaultImages.br4,
                        "Alenzo Endera",
                        "24 Nov 2022",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Image.asset(
                          DefaultImages.br5,
                          height: 70,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  same(
                    DefaultImages.br1,
                    "Jhone Kenoady",
                    "23 Nov 2022",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  same(
                    DefaultImages.br6,
                    "Alexa Bigford",
                    "22 Nov 2022",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      same(
                        DefaultImages.br7,
                        "Jane Liana",
                        "22 Nov 2022",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            Image.asset(
                              DefaultImages.br8,
                              height: 70,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              DefaultImages.br9,
                              height: 70,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget same(
    String img,
    String text,
    String timer,
  ) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img,
              height: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
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
              timer,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12,
                      color: AppTheme.isLightTheme
                          ? ConstColors.greyColor
                          : Colors.white,
                      height: 1.4,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
