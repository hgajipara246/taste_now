import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taste_now/res/constant/app_assets.dart';
import 'package:taste_now/res/constant/app_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFF72D57),
        ),
        centerTitle: true,
        title: Text(AppString.homeScreenTitle),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: ScreenUtil().setWidth(20),
            ),
            child: Image.asset(
              AppAssets.alertIcon,
              height: ScreenUtil().setHeight(20),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
