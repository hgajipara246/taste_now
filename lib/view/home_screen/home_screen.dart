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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight / 60),
                  child: Text(
                    'Newly Opened',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().screenWidth / 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().screenHeight / 5,
                  child: ListView.separated(
                    itemCount: 4,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/home_screen_image/makeD.png",
                          height: ScreenUtil().screenHeight / 8,
                        ),
                        SizedBox(height: ScreenUtil().screenHeight / 70),
                        Text(
                          'Mc Donald’s',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().screenWidth / 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        Text(
                          '10-25 mins',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().screenWidth / 30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: ScreenUtil().screenWidth / 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight / 60),
                  child: Text(
                    'Top Offers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(ScreenUtil().screenWidth / 60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/home_screen_image/Pepperoni pizza.png",
                        height: ScreenUtil().screenHeight / 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight / 90),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pepperoni pizza',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenWidth / 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: ScreenUtil().screenHeight / 120),
                            Text(
                              'Di Napoles',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenWidth / 34,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: ScreenUtil().screenHeight / 70),
                            Text(
                              '\$13,99',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenWidth / 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: ScreenUtil().screenWidth / 20),
                      Image.asset(
                        "assets/icons/rating.png",
                        height: ScreenUtil().screenHeight / 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ScreenUtil().screenHeight / 60),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(ScreenUtil().screenWidth / 60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/home_screen_image/Margarita pizza.png",
                        height: ScreenUtil().screenHeight / 9,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight / 90),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Margarita pizza',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenWidth / 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: ScreenUtil().screenHeight / 120),
                            Text(
                              'Di Napoles',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenWidth / 34,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: ScreenUtil().screenHeight / 70),
                            Text(
                              '\$10,50',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().screenWidth / 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: ScreenUtil().screenWidth / 20),
                      Image.asset(
                        "assets/icons/rating.png",
                        height: ScreenUtil().screenHeight / 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
