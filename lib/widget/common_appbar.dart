// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final Widget widget;
  final VoidCallback onTap;
  const CustomAppBar(
      {super.key,
      required this.text,
      required this.widget,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ConstColors.lightGreyColor.withOpacity(0.2),
            ),
            child: Icon(
              Icons.arrow_back,
              color: AppTheme.isLightTheme ? Colors.black : Colors.white,
            ),
          ),
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        widget
      ],
    );
  }
}
