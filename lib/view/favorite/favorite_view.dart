// ignore_for_file: deprecated_member_use

import 'package:conyfood/config/colors.dart';
import 'package:conyfood/config/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../config/theme.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 15),
          Center(
            child: Text(
              "My Wishlist",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              padding: const EdgeInsets.only(top: 20, bottom: 50),
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      height: 312,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppTheme.isLightTheme ? Colors.white : HexColor("#171725"),
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.isLightTheme ? Colors.grey[350]! : Colors.grey[800]!,
                            blurRadius: 8,
                            offset: const Offset(1, 1),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        index == 0
                                            ? DefaultImages.h32
                                            : index == 1
                                                ? DefaultImages.c25
                                                : index == 2
                                                    ? DefaultImages.c23
                                                    : DefaultImages.c24,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 15),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 17.99,
                                        width: 19.95,
                                        child: SvgPicture.asset(
                                          DefaultImages.h37,
                                        ),
                                      ),
                                      Text(
                                        " 4.4",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 12,
                                              color: ConstColors.primaryColor,
                                            ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Container(
                                        height: 28,
                                        width: 66,
                                        decoration: BoxDecoration(
                                          color: ConstColors.primaryColor.withOpacity(0.16),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "25% Off",
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                  fontSize: 12,
                                                  color: ConstColors.primaryColor,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: Text(
                              index == 0
                                  ? "Big burger with extra\ncheese"
                                  : index == 1
                                      ? "Sushi ervabta with\nvarious types"
                                      : index == 2
                                          ? "Ramen with extra meat\nand  egg"
                                          : "Spicy ramen with extra\nomelette",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    height: 1.4,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "\$",
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 14,
                                            color: ConstColors.primaryColor,
                                          ),
                                    ),
                                    Text(
                                      index == 0 ? " 24" : " 35",
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 17.99,
                                  width: 19.95,
                                  child: SvgPicture.asset(
                                    DefaultImages.h3,
                                    color: AppTheme.isLightTheme ? Colors.black : Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
