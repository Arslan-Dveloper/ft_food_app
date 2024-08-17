import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenAddMenu extends StatelessWidget {
  const ScreenAddMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: MyText(
          text: "Add Item",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14,
              ),
              Container(
                width: Get.width,
                height: 276.h,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/image add menu.png",
                      scale: 4,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    MyText(
                      text: "Menu Image",
                      fontSizeText: 14.sp,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.subHeadingTextColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 29,
              ),
              MyText(
                text: "Title",
                fontFaimlyText: 'inter',
                textColor: AppColor.blackColor,
                fontSizeText: 14.sp,
                fontweightText: FontWeight.w400,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "eg. Burger",
                    hintStyle: TextStyle(
                      color: AppColor.subHeadingTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins',
                    )),
              ),
              SizedBox(
                height: 19,
              ),
              MyText(
                text: "About",
                fontFaimlyText: 'inter',
                textColor: AppColor.blackColor,
                fontSizeText: 14.sp,
                fontweightText: FontWeight.w400,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: "eg. Beef Burger with double patty..",
                    hintStyle: TextStyle(
                      color: AppColor.subHeadingTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins',
                    )),
              ),
              SizedBox(
                height: 19,
              ),
              MyText(
                text: "Price",
                fontFaimlyText: 'inter',
                textColor: AppColor.blackColor,
                fontSizeText: 14.sp,
                fontweightText: FontWeight.w400,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "€0.00",
                    hintStyle: TextStyle(
                      color: AppColor.subHeadingTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins',
                    )),
              ),
              SizedBox(
                height: 65,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: MyText(
                        text: "Post Now",
                        fontSizeText: 16.sp,
                        fontweightText: FontWeight.w500,
                        textColor: AppColor.whiteColor,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ).symmetricPadding(horizontal: 25),
        ),
      ),
    );
  }
}
