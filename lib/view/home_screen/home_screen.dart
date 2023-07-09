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
        title: Text(
          AppString.homeScreenTitle,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w300,
            fontSize: ScreenUtil().screenWidth / 20,
          ),
        ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenWidth / 30, horizontal: ScreenUtil().screenWidth / 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenUtil().screenHeight / 18,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        bottom: ScreenUtil().screenHeight / 30,
                        left: ScreenUtil().screenHeight / 35,
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(ScreenUtil().screenWidth / 100),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().screenWidth / 20,
                          ),
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                ScreenUtil().screenWidth / 20,
                              ),
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(ScreenUtil().screenWidth / 10),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(ScreenUtil().screenWidth / 10),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtil().screenHeight / 50),
                Stack(
                  children: [
                    Container(
                      height: ScreenUtil().screenHeight / 5.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ScreenUtil().screenHeight / 40),
                        color: Color(0xFFF72D57),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(ScreenUtil().screenWidth / 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: ScreenUtil().screenHeight / 50),
                          Text(
                            'Summertime',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().screenHeight / 55,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'is the best time',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().screenHeight / 50,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '25% OFF',
                            style: TextStyle(
                              color: Color(0xFFEFF1C5),
                              fontSize: ScreenUtil().screenHeight / 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().screenWidth / 2.5,
                      top: ScreenUtil().screenHeight / 30,
                      child: Image.asset(
                        AppAssets.pizza,
                        height: ScreenUtil().screenWidth / 4,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().screenWidth / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFECECEC),
                        borderRadius: BorderRadius.circular(ScreenUtil().screenHeight / 80),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight / 22),
                            child: Text(
                              'Restaurants',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenHeight / 65,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(ScreenUtil().screenWidth / 80),
                            child: Image.asset(AppAssets.burger, height: ScreenUtil().screenWidth / 5),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: ScreenUtil().screenWidth / 40),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: ScreenUtil().screenHeight / 9.5,
                            decoration: BoxDecoration(
                              color: Color(0xFFECECEC),
                              borderRadius: BorderRadius.circular(ScreenUtil().screenHeight / 80),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: ScreenUtil().screenWidth / 30),
                                  child: Text(
                                    'Nearest markets',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().screenWidth / 25,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(ScreenUtil().screenWidth / 80)),
                                  child: Image.asset(
                                    AppAssets.market,
                                    height: ScreenUtil().screenWidth / 4.8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenUtil().screenHeight / 80),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: ScreenUtil().screenHeight / 12,
                                    width: ScreenUtil().screenWidth / 3.1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFECECEC),
                                      borderRadius: BorderRadius.circular(ScreenUtil().screenHeight / 80),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: (ScreenUtil().screenWidth / 40),
                                        left: (ScreenUtil().screenWidth / 12),
                                      ),
                                      child: Text(
                                        'Stores',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: ScreenUtil().screenWidth / 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: ScreenUtil().screenHeight / 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(ScreenUtil().screenWidth / 80)),
                                      child: Image.asset(
                                        AppAssets.stores,
                                        height: ScreenUtil().screenWidth / 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: ScreenUtil().screenWidth / 40),
                              Stack(
                                children: [
                                  Container(
                                    height: ScreenUtil().screenHeight / 12,
                                    width: ScreenUtil().screenWidth / 3.1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFECECEC),
                                      borderRadius: BorderRadius.circular(ScreenUtil().screenHeight / 80),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: (ScreenUtil().screenWidth / 40),
                                        left: (ScreenUtil().screenWidth / 12),
                                      ),
                                      child: Text(
                                        'Ice cream',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: ScreenUtil().screenHeight / 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(ScreenUtil().screenWidth / 80)),
                                      child: Image.asset(
                                        AppAssets.icecream,
                                        height: ScreenUtil().screenWidth / 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFEDEDED),
                  thickness: 2,
                  height: (ScreenUtil().screenWidth / 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
