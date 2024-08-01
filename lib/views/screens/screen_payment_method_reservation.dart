import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/views/screens/screen_check_out.dart';
import 'package:ft_food_app/views/screens/screen_check_out_reservation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../custom_widget/my_custom_text.dart';
import '../../helper/constant.dart';

class ScreenPaymentMethodReservation extends StatelessWidget {
  const ScreenPaymentMethodReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_rounded),
        ),
        title: MyText(
          text: "Payment Method",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ScreenCheckOutReservation());
              },
              child: Container(
                width: Get.width,
                height: 55.sp,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(10),
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
                      text: "Credit/Debit Card",
                      fontSizeText: 14,
                      fontweightText: FontWeight.w400,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Image.asset(
                      "assets/images/visa-logo.png",
                      scale: 5,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Image.asset(
                      "assets/images/Mastercard.png",
                      scale: 5,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: Get.width,
              height: 55.sp,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
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
                    fontSizeText: 14,
                    fontweightText: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Image.asset(
                    "assets/images/PayPal.png",
                    scale: 5,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: Get.width,
              height: 55.sp,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
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
                    text: "Cash on Delivery",
                    fontSizeText: 14,
                    fontweightText: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Image.asset(
                    "assets/images/money.png",
                    scale: 5,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ).symmetricPadding(horizontal: 10),
      ),
    );
  }
}
