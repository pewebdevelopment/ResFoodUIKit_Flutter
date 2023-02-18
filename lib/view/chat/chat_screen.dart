// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/chat/video_call_screen.dart';
import 'package:conyfood/view/chat/voice_call_screen.dart';
import 'package:conyfood/widget/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
              text: "Richar Kandowen",
              widget: SizedBox(
                height: 48,
                width: 48,
                child: PopupMenuButton<int>(
                  position: PopupMenuPosition.under,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  icon: Icon(
                    Icons.more_vert,
                    color: AppTheme.isLightTheme ? Colors.black : Colors.white,
                  ),
                  onSelected: (v) {
                    debugPrint("yuyy$v");
                    if (v == 0) {
                      Get.to(
                        const VoiceCallScreen(),
                        transition: Transition.rightToLeft,
                      );
                    } else {
                      Get.to(
                        const VideoCallScreen(),
                        transition: Transition.rightToLeft,
                      );
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        value: 0,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 18,
                              width: 18,
                              child: SvgPicture.asset(
                                DefaultImages.h25,
                                color: AppTheme.isLightTheme ? ConstColors.fontColor : Theme.of(context).textTheme.bodyText1!.color,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Voice Call",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 18,
                              width: 18,
                              child: SvgPicture.asset(
                                DefaultImages.c27,
                                color: ConstColors.primaryColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Video Call",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: ConstColors.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                ),
              ),
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
                      const SizedBox(height: 10),
                      greyCard(context),
                      const SizedBox(height: 20),
                      colorCard(context),
                      const SizedBox(height: 20),
                      greyCard(context),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 56,
              width: Get.width,
              decoration: BoxDecoration(
                color: const Color(0xffF6F8FE),
                borderRadius: BorderRadius.circular(32),
                border: Border.all(
                  color: const Color(0xffE3E7EC),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: ConstColors.whiteColor,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          DefaultImages.send1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Container(
                      height: 20,
                      width: 1,
                      color: ConstColors.greyColor.withOpacity(0.5),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                            ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message",
                          hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 12,
                                color: ConstColors.greyColor,
                              ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: ConstColors.primaryColor,
                      child: SvgPicture.asset(
                        DefaultImages.c3,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget greyCard(BuildContext context) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                DefaultImages.c2,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      const SizedBox(width: 14),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width / 1.6,
            decoration: BoxDecoration(
              color: AppTheme.isLightTheme ? ConstColors.lightGreyColor.withOpacity(0.1) : Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum dolor sit et, consectetur adipiscing.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      color: AppTheme.isLightTheme ? ConstColors.greyColor : Colors.black,
                      height: 1.6,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "15:42 PM",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                  color: ConstColors.greyColor,
                ),
          ),
        ],
      )
    ],
  );
}

Widget colorCard(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: Get.width / 1.6,
            decoration: const BoxDecoration(
              color: ConstColors.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum dolor sit et",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      color: ConstColors.whiteColor,
                      height: 1.6,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "15:42 PM",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                  color: ConstColors.greyColor,
                ),
          ),
        ],
      ),
      const SizedBox(width: 14),
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                DefaultImages.c1,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ],
  );
}
