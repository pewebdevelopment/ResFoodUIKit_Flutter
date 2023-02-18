// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  final Widget sufix;
  final bool? obsecure;
  final String title;
  final Color? borderColor;
  const CustomTextField(
      {super.key,
      required this.text,
      required this.textEditingController,
      required this.sufix,
      this.obsecure,
      required this.title,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 12,
                color: ConstColors.greyColor,
              ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 52,
          width: Get.width,
          child: TextFormField(
            obscureText: obsecure ?? false,
            controller: textEditingController,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                ),
            decoration: InputDecoration(
              suffixIcon: sufix,
              contentPadding: const EdgeInsets.only(left: 20, right: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(
                  color: borderColor ?? ConstColors.greyColor.withOpacity(0.3),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: const BorderSide(
                  color: ConstColors.primaryColor,
                ),
              ),
              hintText: text,
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    color: ConstColors.greyColor,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget searchField(String text, TextEditingController controller, Widget prefix, Widget sufix, BuildContext context) {
  return SizedBox(
    height: 52,
    width: Get.width,
    child: TextFormField(
      autofocus: false,
      controller: controller,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 16,
          ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14.0),
          child: prefix,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(14.0),
          child: sufix,
        ),
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: ConstColors.greyColor.withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: ConstColors.primaryColor,
          ),
        ),
        hintText: text,
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 16,
              color: ConstColors.greyColor,
            ),
      ),
    ),
  );
}

Widget searchColorField(String text, TextEditingController controller, Widget prefix, Widget sufix, BuildContext context) {
  return SizedBox(
    height: 52,
    width: Get.width,
    child: TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 16,
          ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppTheme.isLightTheme ? Colors.white : HexColor("#1D1D2F"),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14.0),
          child: prefix,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(14.0),
          child: sufix,
        ),
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: ConstColors.transparentColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: ConstColors.primaryColor,
          ),
        ),
        hintText: text,
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 16,
              color: ConstColors.greyColor,
            ),
      ),
    ),
  );
}

Widget searchWithTitleField(String text, TextEditingController controller, String title, Widget sufix, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 12,
              color: AppTheme.isLightTheme ? ConstColors.greyColor : Colors.white,
            ),
      ),
      const SizedBox(height: 10),
      SizedBox(
        height: 52,
        width: Get.width,
        child: TextFormField(
          controller: controller,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
              ),
          decoration: InputDecoration(
            filled: true,
            suffixIcon: sufix,
            fillColor: AppTheme.isLightTheme ? Colors.white : HexColor("#1D1D2F"),
            contentPadding: const EdgeInsets.only(left: 20, right: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(color: AppTheme.isLightTheme ? ConstColors.transparentColor : Theme.of(context).dividerColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(
                color: ConstColors.primaryColor,
              ),
            ),
            hintText: text,
            hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  color: AppTheme.isLightTheme ? ConstColors.greyColor : Colors.white,
                ),
          ),
        ),
      ),
    ],
  );
}
