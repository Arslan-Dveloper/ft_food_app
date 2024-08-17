import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_sign_up_restaurant.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/constant.dart';

class ScreenLogInRestuarant extends StatelessWidget {
  const ScreenLogInRestuarant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FirstController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Positioned(
                right: -80,
                top: -100,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: AppColor.redColor.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              // Positioned(
              //   right: -80,
              //   top: -70,
              //   child: Container(
              //     width: 180,
              //     height: 180,
              //     decoration: BoxDecoration(
              //         color: AppColor.redColor.withOpacity(0.25),
              //         borderRadius: BorderRadius.circular(100)),
              //   ),
              // ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        "assets/images/arrow back.png",
                        scale: 5,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Log in",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                          fontFamily: "poppins"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Email address",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 14.sp,
                          color: AppColor.textColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "atiqabdullah@foodit.com",
                        hintStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textColor,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColor.redColor,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/tick.png",
                                scale: 4,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 14.sp,
                          color: AppColor.textColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Obx(() {
                      return TextFormField(
                        obscureText: controller.isTrue.value,
                        decoration: InputDecoration(
                          hintText: "************",
                          hintStyle: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.textColor,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              controller.isTrue.value =
                                  !controller.isTrue.value;
                            },
                            child: controller.isTrue.value
                                ? Image.asset(
                                    "assets/images/hidden eye.png",
                                    scale: 4,
                                  )
                                : Image.asset(
                                    "assets/images/unhidden eye.png",
                                    scale: 4,
                                  ),
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 14.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Center(
                      child: Container(
                        width: screenWidth * 0.8,
                        height: 55,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.redColor,
                              overlayColor: AppColor.whiteColor,
                            ),
                            onPressed: () {
                              Get.to(ScreenSignUpRestaurant());
                            },
                            child: Text(
                              'Log In',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.whiteColor,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don’t have an account?",
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor,
                              ),
                            ),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(ScreenSignUpRestaurant());
                                },
                              text: " Sign up",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.redColor),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
