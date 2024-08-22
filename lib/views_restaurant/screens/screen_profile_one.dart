import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_profile_two.dart';
import 'package:get/get.dart';

class ScreenProfileOne extends StatelessWidget {
  const ScreenProfileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
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
                  value: 0.1428571428571429,
                  backgroundColor: AppColor.subHeadingTextColor,
                  color: AppColor.redColor,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: MyText(
                    text: "About Your Business",
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
                    text: "Sharing Your Restaurant Detailssz",
                    fontSizeText: 16.sp,
                    fontweightText: FontWeight.w400,
                    textColor: AppColor.textColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "About your Restaurant",
                    hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.subHeadingTextColor),
                  ),
                ).symmetricPadding(horizontal: 20),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(ScreenProfileTwo());
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
