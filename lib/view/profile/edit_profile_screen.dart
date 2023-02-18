// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/view/profile/change_picture_dialog.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
              text: "Profile",
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
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Get.dialog(
                            AlertDialog(
                              iconPadding: EdgeInsets.zero,
                              insetPadding: const EdgeInsets.only(left: 20, right: 20),
                              titlePadding: EdgeInsets.zero,
                              buttonPadding: EdgeInsets.zero,
                              actionsPadding: const EdgeInsets.only(left: 20, right: 20),
                              contentPadding: const EdgeInsets.only(left: 20, right: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              content: const ChangePictureDialog(),
                            ),
                          );
                        },
                        child: Center(
                          child: Container(
                            height: 100,
                            width: 105,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  DefaultImages.p12,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "First Name",
                        textEditingController: TextEditingController(text: "Andy"),
                        sufix: const SizedBox(),
                        title: "First Name",
                        borderColor: ConstColors.primaryColor,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Last Name",
                        textEditingController: TextEditingController(text: "Lexsian"),
                        sufix: const SizedBox(),
                        title: "Last Name",
                        borderColor: ConstColors.primaryColor,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "E-mail",
                        textEditingController: TextEditingController(text: "Andylexian22@gmail.com"),
                        sufix: const SizedBox(),
                        title: "E-mail",
                        borderColor: ConstColors.primaryColor,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        text: "Date of Birth",
                        textEditingController: TextEditingController(text: "24 february 1996"),
                        sufix: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            DefaultImages.p3,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        title: "Date of Birth",
                        borderColor: ConstColors.primaryColor,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Gender",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              color: ConstColors.greyColor,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                  color: ConstColors.primaryColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: const BoxDecoration(
                                        color: ConstColors.primaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.check,
                                        color: ConstColors.whiteColor,
                                        size: 15,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Male",
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                  color: ConstColors.primaryColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: ConstColors.greyColor.withOpacity(0.2),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Female",
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Location",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              color: ConstColors.greyColor,
                            ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: Get.width,
                        child: TextFormField(
                          controller: TextEditingController(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 16,
                              ),
                          maxLines: null,
                          minLines: 5,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: const BorderSide(
                                color: ConstColors.primaryColor,
                              ),
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
                      const SizedBox(height: 60),
                    ],
                  )
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
