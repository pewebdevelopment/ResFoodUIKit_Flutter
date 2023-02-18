// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/onborading/onbording_screen4.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';

class OnBordingScreenScreen3 extends StatefulWidget {
  const OnBordingScreenScreen3({super.key});

  @override
  State<OnBordingScreenScreen3> createState() => _OnBordingScreenScreen3State();
}

class _OnBordingScreenScreen3State extends State<OnBordingScreenScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            !AppTheme.isLightTheme ? DefaultImages.ob6 : DefaultImages.ob1,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60,
            bottom: MediaQuery.of(context).padding.bottom + 350,
            child: Image.asset(
              DefaultImages.ob4,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: HexColor("#D1D8DD"),
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: HexColor("#D1D8DD"),
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppTheme.isLightTheme
                                ? Colors.black
                                : Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "We provide the best\n service for you",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ",
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 16,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(child: SizedBox()),
                    CustomButton(
                      text: "Continue",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => OnBordingScreenScreen4(),
                          ),
                        );
                      },
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 16,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
