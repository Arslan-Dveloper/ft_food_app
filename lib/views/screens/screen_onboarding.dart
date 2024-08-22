import 'package:flutter/material.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_select_catagory.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_log_in.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: controller.images.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              controller: controller.pageController,
              onPageChanged: (value) {
                controller.selectedNumber.value = value;
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight * 0.4,
                      decoration: BoxDecoration(
                        color: AppColor.redColor.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Image.asset("${controller.images[index]}"),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      controller.mainText[index],
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      child: Text(
                        controller.subHeadingText[index],
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.subHeadingTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var a = 0; a < controller.images.length; a++)
                            buildIndicator(controller.selectedNumber.value == a)
                        ],
                      );
                    }),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.selectedNumber.value ==
                                controller.images.length - 1
                            ? Get.to(ScreenLogInRestuarant())
                            : controller.pageController.nextPage(
                                duration: Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                      },
                      child: Container(
                        width: screenWidth * 0.75,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red),
                        overlayColor: WidgetStatePropertyAll(
                          AppColor.whiteColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    Obx(() {
                      return GestureDetector(
                        onTap: () {
                          Get.to(ScreenLogInRestuarant());
                        },
                        child: controller.selectedNumber.value ==
                                controller.images.length - 1
                            ? Text('')
                            : Text(
                                'Skip',
                                style: TextStyle(
                                  fontFamily: "poppins",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.redColor),
                              ),
                      );
                    })
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: isSelected ? 13 : 13,
      width: isSelected ? 40 : 20,
      decoration: BoxDecoration(
        color:
            isSelected ? AppColor.redColor : AppColor.redColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
