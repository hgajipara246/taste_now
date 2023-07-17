import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taste_now/view/profile_page/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: ScreenUtil().screenHeight / 2.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFF72D57),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(100, 40),
                bottomLeft: Radius.elliptical(100, 40),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().screenHeight / 20, horizontal: ScreenUtil().screenWidth / 50),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back;
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/home_screen_image/Pepperoni pizza.png",
                  width: ScreenUtil().screenWidth / 1.5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenUtil().screenWidth / 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: ScreenUtil().screenWidth / 20),
                          Text(
                            'Di Napoles',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().screenWidth / 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.02,
                            ),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Text(
                            'Italian, pastas, pizzas, calzone,\nsea food',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().screenWidth / 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.01,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: ScreenUtil().screenWidth / 20),
                        child: Container(
                          width: ScreenUtil().screenWidth / 7,
                          height: ScreenUtil().screenWidth / 7,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                          child: Icon(
                            Icons.thumb_up_alt_outlined,
                            color: const Color(0xFFF72D57),
                            size: ScreenUtil().screenHeight / 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
