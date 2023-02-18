// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:conyfood/config/images.dart';
import 'package:conyfood/config/theme.dart';
import 'package:conyfood/view/auth/signin_screen.dart';
import 'package:conyfood/widget/custom_button.dart';
import 'package:flutter/material.dart';

class OnBordingScreenScreen4 extends StatefulWidget {
  const OnBordingScreenScreen4({super.key});

  @override
  State<OnBordingScreenScreen4> createState() => _OnBordingScreenScreen4State();
}

class _OnBordingScreenScreen4State extends State<OnBordingScreenScreen4> {
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
              DefaultImages.ob5,
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
                      text: "Get Started",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SignInScreen(),
                          ),
                        );
                      },
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account? ",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          "Register",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
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
