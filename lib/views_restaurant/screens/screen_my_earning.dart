import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenMyEarning extends StatelessWidget {
  const ScreenMyEarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 30,),
          Container(
            width: Get.width,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColor.textColor.withOpacity(0.10),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                MyText(
                  text: "Withdraw History",
                  fontSizeText: 14.sp,
                  fontweightText: FontWeight.w500,
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
          ).symmetricPadding(horizontal: 20)
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 300,
      child: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        backgroundColor: AppColor.textColor,
        title: MyText(
          text: "My Earnings",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
          textColor: AppColor.whiteColor,
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColor.whiteColor,
          ),
        ),
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 82,
            ),
            MyText(
              text: "Available Balance",
              fontSizeText: 16.sp,
              fontweightText: FontWeight.w400,
              textColor: AppColor.whiteColor,
            ),
            SizedBox(
              height: 22,
            ),
            MyText(
              text: "€2340.00",
              fontSizeText: 29.sp,
              fontweightText: FontWeight.w500,
              textColor: AppColor.whiteColor,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 222,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColor.redColor, width: 1.5),
              ),
              child: Center(
                child: MyText(
                  text: "Withdraw",
                  fontSizeText: 16.sp,
                  fontweightText: FontWeight.w500,
                  textColor: AppColor.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(300);
}
