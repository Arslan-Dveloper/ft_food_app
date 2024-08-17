import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ItemOrderHomeDelivery extends StatelessWidget {
  const ItemOrderHomeDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColor.blackColor.withOpacity(0.02),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 110,
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/cart image three.png"),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              MyText(
                text: "Chinese Bowl",
                fontSizeText: 16.sp,
                fontweightText: FontWeight.w500,
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/profile two.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MyText(
                    text: "Alexa Jhons",
                    fontSizeText: 12.sp,
                    fontweightText: FontWeight.w400,
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/location con (1).png',
                    scale: 5,
                  ),
                  MyText(
                    text: "456 Oak Avenue, State 12345",
                    fontSizeText: 12.sp,
                    fontweightText: FontWeight.w400,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MyText(
                    text: "€230.50",
                    fontSizeText: 18.sp,
                    fontweightText: FontWeight.w600,
                    textColor:
                    AppColor.textColor.withOpacity(0.8),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MyText(
                    text: "Paid",
                    fontSizeText: 10.sp,
                    fontweightText: FontWeight.w400,
                    textColor: AppColor.yellowColor,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
