import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class LayoutHome extends StatelessWidget {
  const LayoutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Hello!",
                fontSizeText: 20.sp,
                fontweightText: FontWeight.w500,
                textColor: AppColor.subHeadingTextColor,
              ),
              MyText(
                text: "Fine Dining",
                fontSizeText: 25.sp,
                fontweightText: FontWeight.w500,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: AppColor.pinkColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Sales",
                          fontSizeText: 18.sp,
                          fontweightText: FontWeight.w500,
                          textColor: AppColor.textColor,
                        ),
                        MyText(
                          text: "This Week",
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.subHeadingTextColor,
                        ),
                        Image.asset(
                          "assets/images/pink line.png",
                          scale: 4,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text: "\$1950.00",
                          fontSizeText: 18.sp,
                          fontweightText: FontWeight.w600,
                          textColor: AppColor.textColor,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 78,
                          height: 28,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/arrow forward.png",
                                scale: 3,
                              ),
                              MyText(
                                text: "+1.4%",
                                fontSizeText: 13.sp,
                                fontweightText: FontWeight.w500,
                                textColor: AppColor.textColor,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.purePinkColor.withOpacity(0.2),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ).onlyPadding(left: 15, top: 12),
                  ),
                  Spacer(),
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: AppColor.secondContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Sales",
                          fontSizeText: 18.sp,
                          fontweightText: FontWeight.w500,
                          textColor: AppColor.textColor,
                        ),
                        MyText(
                          text: "This Week",
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                          textColor: AppColor.subHeadingTextColor,
                        ),
                        Image.asset(
                          "assets/images/second vector.png",
                          scale: 4,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text: "380",
                          fontSizeText: 18.sp,
                          fontweightText: FontWeight.w600,
                          textColor: AppColor.textColor,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 78,
                          height: 28,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/arrow forward.png",
                                scale: 3,
                              ),
                              MyText(
                                text: "+1.4%",
                                fontSizeText: 13.sp,
                                fontweightText: FontWeight.w500,
                                textColor: AppColor.textColor,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.purePinkColor.withOpacity(0.2),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ).onlyPadding(left: 15, top: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              MyText(
                text: "Orders is Last Week",
                fontSizeText: 20.sp,
                fontweightText: FontWeight.w500,
                textColor: AppColor.textColor,
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset(
                "assets/images/Graaph.png",
                scale: 2.5,
              ),
              SizedBox(
                height: 25,
              ),
              MyText(
                text: "Orders is Last Week",
                fontSizeText: 20.sp,
                fontweightText: FontWeight.w500,
                textColor: AppColor.textColor,
              ),

              SizedBox(
                height: 300,
                child: ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.blackColor.withOpacity(0.05),
                            blurRadius: 20,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/cart image three.png",
                            scale: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Chinese Bowl",
                                fontSizeText: 16,
                                fontweightText: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Johns.png",
                                    scale: 5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  MyText(
                                    text: "Alex Costa",
                                    fontSizeText: 12,
                                    fontweightText: FontWeight.w400,
                                    textColor: AppColor.subHeadingTextColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyText(
                                    text: "€230.50",
                                    fontSizeText: 18.sp,
                                    fontweightText: FontWeight.w600,
                                    textColor: AppColor.subHeadingTextColor,
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Image.asset(
                                    "assets/images/star.png",
                                    scale: 5,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  MyText(
                                    text: "4.5",
                                    fontSizeText: 14.sp,
                                    fontweightText: FontWeight.w600,
                                    textColor: AppColor.blackColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ).symmetricPadding(horizontal: 25),
        ),
      ),
    );
  }
}
