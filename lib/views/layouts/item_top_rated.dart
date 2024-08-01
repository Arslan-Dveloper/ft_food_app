import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:get/get.dart';

import '../../helper/constant.dart';
import '../screens/screen_top_rated_resturant.dart';

class ItemTopRated extends StatelessWidget {
  AppControllerApp controller;
  int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ScreenTopRatedResturant());
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColor.blackColor.withOpacity(0.05),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ListTile(
          leading: Image.asset(controller.imageTWo[index].toString()),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bree Cafe",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/star.png",
                    scale: 4,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.7 (120)",
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp),
                  )
                ],
              ),
            ],
          ),
          subtitle: Text(
            "open",
            style: TextStyle(
                fontFamily: 'inter',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.greenColor),
          ),
          trailing: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${controller.numberKL[index].toString()}",
                  style: TextStyle(
                    fontFamily: "inter",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.subHeadingTextColor,
                  ),
                ),
                TextSpan(
                  text: "${controller.numberKM[index].toString()}",
                  style: TextStyle(
                    fontFamily: "inter",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.subHeadingTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ItemTopRated({
    required this.controller,
    required this.index,
  });
}
