import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_profile_seven.dart';
import 'package:get/get.dart';

class ScreenProfileSix extends StatelessWidget {
  const ScreenProfileSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/images/CArsual images.png",
      "assets/images/CArsual images.png",
      "assets/images/CArsual images.png"
    ];
    var currentIndex = 0.obs;
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
                  value: 0.1428571428571429 * 6,
                  backgroundColor: AppColor.subHeadingTextColor,
                  color: AppColor.redColor,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: MyText(
                    text: "Visual Showcase",
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
                    text: "Adding Photos of Your Restaurant",
                    fontSizeText: 16.sp,
                    fontweightText: FontWeight.w400,
                    textColor: AppColor.textColor.withOpacity(0.8),
                    textAlignText: TextAlign.center,
                  ).symmetricPadding(horizontal: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: images.map(
                    (e) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(e.toString()),
                      );
                    },
                  ).toList(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      currentIndex.value = index;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var a = 0; a < images.length; a++)
                        buildIndicator(currentIndex.value == a),
                    ],
                  );
                }),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    width: 60.sp,
                    height: 60.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColor.textColor),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(ScreenProfileSeven());
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

Widget buildIndicator(bool isSelected) {
  return Container(
    margin: EdgeInsets.only(left: 10),
    width: 10,
    height: 10,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: isSelected ? AppColor.redColor : AppColor.subHeadingTextColor,
    ),
  );
}
