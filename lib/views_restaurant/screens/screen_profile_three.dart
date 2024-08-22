import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_profile_four.dart';
import 'package:get/get.dart';

class ScreenProfileThree extends StatelessWidget {
  const ScreenProfileThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                LinearProgressIndicator(
                  value: 0.1428571428571429 * 3,
                  backgroundColor: AppColor.subHeadingTextColor,
                  color: AppColor.redColor,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: MyText(
                    text: "Your Restaurant's Contact",
                    fontSizeText: 18.sp,
                    fontweightText: FontWeight.w500,
                    textColor: AppColor.textColor,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Center(
                  child: MyText(
                    text:
                        "Let's make it easy for customers to reach out with any questions or inquiries",
                    fontSizeText: 16.sp,
                    fontweightText: FontWeight.w400,
                    textColor: AppColor.textColor.withOpacity(0.8),
                    textAlignText: TextAlign.center,
                  ).symmetricPadding(horizontal: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: AppColor.textFormFieldBorderColor),
                    ),
                    child: MyText(
                      text: "Select Restaurant Location",
                      fontweightText: FontWeight.w400,
                      fontSizeText: 14.sp,
                      textColor: AppColor.subHeadingTextColor,
                    ).onlyPadding(top: 15, bottom: 15, left: 10),
                  ).symmetricPadding(horizontal: 20),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(ScreenProfileFour());
                    },
                    child: MyText(
                      text: "Continue",
                      fontSizeText: 16.sp,
                      fontweightText: FontWeight.w500,
                      textColor: AppColor.whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
