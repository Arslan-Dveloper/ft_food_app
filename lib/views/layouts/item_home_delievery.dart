import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:ft_food_app/extention/padding_extention.dart';

import '../../custom_widget/my_custom_text.dart';
import '../../helper/constant.dart';

class ItemHomeDelievery extends StatelessWidget {
  int index;
  ReservationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Container(
            height: 120.h,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: AppColor.blackColor.withOpacity(0.10),
                  blurRadius: 20,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image no 4.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(6)),
                  margin: EdgeInsets.all(10),
                  width: 85,
                  height: 85,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: "Chinese Bowl",
                          fontSizeText: 16.sp,
                          fontweightText: FontWeight.w500,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        MyText(
                          text: controller.homeDelieveryText[index].toString(),
                          fontSizeText: 10.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.greenColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/booking logo.png",
                          scale: 3,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        MyText(
                          text: "Fine Dining",
                          fontSizeText: 12.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.subHeadingTextColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MyText(
                          text: "€230.50 ",
                          fontSizeText: 18.sp,
                          fontweightText: FontWeight.w600,
                          textColor: AppColor.textColor,
                        ),
                        MyText(
                          text: "Paid",
                          fontSizeText: 10.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.yellowColor,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          "assets/images/time frame.png",
                          scale: 3,
                        ),
                        MyText(
                          text: "30 mins",
                          fontSizeText: 12.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.textColor.withOpacity(0.8),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ).symmetricPadding(horizontal: 25),
    );
  }

  ItemHomeDelievery({
    required this.index,
    required this.controller,
  });
}
