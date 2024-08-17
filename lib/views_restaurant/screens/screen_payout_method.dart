import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenPayoutMethod extends StatelessWidget {
  const ScreenPayoutMethod({Key? key}) : super(key: key);

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
        title: MyText(
          text: "Withdraw Methods",
          fontweightText: FontWeight.w500,
          fontSizeText: 23.sp,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              width: Get.width,
              height: 55,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.blackColor.withOpacity(0.05),
                    blurRadius: 20,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  MyText(
                    text: "PayPal",
                    fontweightText: FontWeight.w400,
                    fontSizeText: 14.sp,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/PayPal.png",
                    scale: 4,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: Get.width,
              height: 55,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.blackColor.withOpacity(0.05),
                    blurRadius: 20,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  MyText(
                    text: "Payoneer",
                    fontweightText: FontWeight.w400,
                    fontSizeText: 14.sp,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/paynor.png",
                    scale: 4,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ],
        ).symmetricPadding(horizontal: 25),
      ),
    );
  }
}
