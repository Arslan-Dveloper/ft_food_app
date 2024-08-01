import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_payment_method.dart';
import 'package:get/get.dart';

class ScreenConfirmReservation extends StatelessWidget {
  const ScreenConfirmReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/main screen image.png"),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 50,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.whiteColor.withOpacity(0.4)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ).onlyPadding(left: 10, top: 20),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    MyText(
                      text: "Confirm Reservation",
                      fontSizeText: 20,
                      fontweightText: FontWeight.w500,
                      textColor: AppColor.textColor,
                    ),
                    Spacer(),
                    MyText(
                      text: "Edit",
                      fontSizeText: 16,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.textColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/images/pen.png.png",
                      scale: 4,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/location con (1).png",
                      scale: 3,
                    ),
                    MyText(
                      text: "456 Oak Avenue, State 12345",
                      fontSizeText: 16,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.textColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/location con (2).png",
                      scale: 3,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    MyText(
                      text: "12 Jan, 2024",
                      fontSizeText: 16,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.textColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/location con (3).png",
                      scale: 3,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    MyText(
                      text: "11:00 Am",
                      fontSizeText: 16,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.textColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/location con (4).png",
                      scale: 3,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    MyText(
                      text: "4 people",
                      fontSizeText: 16,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.textColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(ScreenPaymentMethod());
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: "poppins"),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ).symmetricPadding(horizontal: 20)
          ],
        ),
      ),
    );
  }
}
