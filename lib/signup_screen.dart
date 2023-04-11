import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism_sign_up_page/constants.dart';
import 'package:glassmorphism_sign_up_page/vertical_text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                VerticalText(
                  text: 'ウエルカム',
                  style: TextStyle(
                    color: Constants.blueColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 150),
                CircleAvatar(
                  backgroundColor: Constants.redColor,
                  radius: 80,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                height: height / 3.5,
                width: width,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'サインアップ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.blueColor,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'サインイン',
                      style: TextStyle(
                        color: Constants.blueColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),
            ),
          ),
        ],
        alignment: AlignmentDirectional.bottomCenter,
      ),
    );
  }
}
