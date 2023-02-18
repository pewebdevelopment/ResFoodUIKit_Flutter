// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/chat/chat_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:conyfood/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:get/get.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top + 15),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: CustomAppBar(
            text: "Message",
            widget: const SizedBox(height: 48, width: 48),
            onTap: () {},
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: searchColorField(
            "Search...",
            TextEditingController(),
            SvgPicture.asset(DefaultImages.search),
            Image.asset(
              DefaultImages.filter,
              color: AppTheme.isLightTheme ? Colors.black : Colors.white,
            ),
            context,
          ),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var i = 0; i < 4; i++)
                        SwipeActionCell(
                          isDraggable: true,
                          trailingActions: [
                            SwipeAction(
                              onTap: (v) {},
                              color: ConstColors.redColor.withOpacity(0.05),
                              title: '',
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: SvgPicture.asset(
                                    DefaultImages.c5,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            )
                          ],
                          key: ValueKey(i == 0
                              ? "Richar Kandowen"
                              : i == 1
                                  ? "Jeden Murred"
                                  : i == 2
                                      ? "Chris Offile"
                                      : "Jemmy Fox"),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                const ChatScreen(),
                                transition: Transition.rightToLeft,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 56,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          i == 0
                                              ? DefaultImages.c19
                                              : i == 1
                                                  ? DefaultImages.c18
                                                  : i == 2
                                                      ? DefaultImages.c13
                                                      : DefaultImages.c14,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          i == 0
                                              ? "Richar Kandowen"
                                              : i == 1
                                                  ? "Jeden Murred"
                                                  : i == 2
                                                      ? "Chris Offile"
                                                      : "Jemmy Fox",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontSize: 18,
                                              ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "Lorem ipsum dolor sit amet...",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontSize: 14,
                                                color: ConstColors.greyColor,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "10:20",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 12,
                                              color: ConstColors.greyColor,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: i == 2 ? ConstColors.transparentColor : ConstColors.primaryColor,
                                        child: i == 2
                                            ? const SizedBox()
                                            : Text(
                                                "2",
                                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                      fontSize: 10,
                                                      color: ConstColors.whiteColor,
                                                    ),
                                              ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
