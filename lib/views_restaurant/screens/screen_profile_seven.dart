import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_add_menu.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_add_new_post.dart';
import 'package:get/get.dart';

class ScreenProfileSeven extends StatelessWidget {
  const ScreenProfileSeven({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                LinearProgressIndicator(
                  value: 0.1428571428571429 * 7,
                  backgroundColor: AppColor.subHeadingTextColor,
                  color: AppColor.redColor,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: MyText(
                    text: "Menu Setup",
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
                    text: "Adding Your Restaurant's Menu",
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
                  onTap: (){
                    Get.to(ScreenAddMenu());
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColor.subHeadingTextColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Add New',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: MyText(
                        text: "Continue",
                        fontSizeText: 16.sp,
                        fontweightText: FontWeight.w500,
                        textColor: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ).symmetricPadding(horizontal: 10),
          ],
        ),
      ),
    );
  }
}
