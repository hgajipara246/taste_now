import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taste_now/res/constant/app_string.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE1E1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TyperAnimatedText(
                  AppString.splashScreen,
                  textStyle: TextStyle(
                    fontSize: ScreenUtil().setHeight(50),
                    fontFamily: "Praise",
                    color: Color(0xFFF72D57),
                  ),
                ),
              ],
              onTap: () {
                debugPrint("I am executing");
              },
            ),
          ],
        ),
      ),
    );
  }
}
