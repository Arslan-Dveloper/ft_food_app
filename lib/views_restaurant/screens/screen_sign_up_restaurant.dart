import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_log_in.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_restaurant_dashboard.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenSignUpRestaurant extends StatelessWidget {
  const ScreenSignUpRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FirstController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
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
                  height: 45,
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 33.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Name",
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
                    hintText: "Jhon Doe",
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.subHeadingTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
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
                    hintText: "example@foodit.com",
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.subHeadingTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create a password",
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
                    obscureText: controller.isTrueSignUp.value,
                    decoration: InputDecoration(
                      hintText: "Must be 8 characters",
                      hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.subHeadingTextColor,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.isTrueSignUp.value =
                              !controller.isTrueSignUp.value;
                        },
                        child: controller.isTrueSignUp.value
                            ? Image.asset(
                                "assets/images/unhidden eye.png",
                                scale: 4,
                              )
                            : Image.asset(
                                "assets/images/hidden eye.png",
                                scale: 4,
                              ),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Confirm Password",
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
                    obscureText: controller.isTrueSignUpConfirm.value,
                    decoration: InputDecoration(
                      hintText: "Repeat password",
                      hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.subHeadingTextColor,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.isTrueSignUpConfirm.value =
                              !controller.isTrueSignUpConfirm.value;
                        },
                        child: controller.isTrueSignUpConfirm.value
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
                  height: 70,
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
                          Get.to(ScreenRestaurantDashboard());
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.whiteColor,
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an Account?",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.textColor,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(ScreenLogInRestuarant());
                            },
                          text: " Log In",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.redColor),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
