import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:get/get.dart';


import '../../helper/constant.dart';

class ItemMyBooking extends StatelessWidget {
  const ItemMyBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: Get.width,
        height: 224,
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
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/bottom sheet one.png",
                  scale: 5,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Jhons Doe",
                      fontSizeText: 14.sp,
                      fontweightText: FontWeight.w400,
                    ),
                    MyText(
                      text: "Paid",
                      fontSizeText: 10.sp,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.yellowColor,
                    ),
                  ],
                ),
              ],
            ).onlyPadding(left: 10, top: 10),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/location con (2).png",
                          scale: 5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyText(
                          text: "12 Jan, 2024",
                          fontSizeText: 12.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.textColor
                              .withOpacity(0.8),
                        )
                      ],
                    ).onlyPadding(left: 20),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/location con (3).png",
                          scale: 5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyText(
                          text: "11:00 Am",
                          fontSizeText: 12.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.textColor
                              .withOpacity(0.8),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/location con (4).png",
                          scale: 5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyText(
                          text: "4 people",
                          fontSizeText: 12.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.textColor
                              .withOpacity(0.8),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "In a Rush",
                      textColor: AppColor.redColor,
                      fontweightText: FontWeight.w500,
                      fontSizeText: 12.sp,
                    ),
                    MyText(
                      text: "1. Special Bowl",
                      fontSizeText: 10.sp,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.bookingText,
                    ),
                    MyText(
                      text: "2. Italian Bowl",
                      fontSizeText: 10.sp,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.bookingText,
                    ),
                  ],
                ).onlyPadding(top: 10),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Divider(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Table No:",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.bookingText
                              .withOpacity(0.8))),
                  TextSpan(
                      text: " 4",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.redColor))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
