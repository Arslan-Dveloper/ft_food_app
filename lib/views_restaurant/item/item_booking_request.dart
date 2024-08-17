import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ItemBookingRequest extends StatelessWidget {
  const ItemBookingRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = ["0", "1", "2", "3", "4", "5", "6", "8", "9", "10"];
    var selectedData = data.first.obs;
    return Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        textColor: AppColor.textColor.withOpacity(0.8),
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
                        textColor: AppColor.textColor.withOpacity(0.8),
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
                        textColor: AppColor.textColor.withOpacity(0.8),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                width: 150,
                height: 41,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.containerBorder)),
                child: Center(
                  child: MyText(
                    text: "Reject",
                    fontSizeText: 14.sp,
                    fontweightText: FontWeight.w400,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/bottom sheet one.png",
                                      scale: 5,
                                    ),
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
                              ),
                              SizedBox(height: 10,),
                              MyText(
                                text: "Assign Table",
                                fontSizeText: 18.sp,
                                fontweightText: FontWeight.w500,
                              ),
                              SizedBox(height: 16,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: data.map(
                                        (e) {
                                      return GestureDetector(
                                        onTap: () {
                                          selectedData.value = e;
                                        },
                                        child: Obx(() {
                                          return Container(
                                            margin: EdgeInsets.only(left: 8),
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(50),
                                                color: selectedData.value == e
                                                    ? AppColor.redColor.withOpacity(0.3)
                                                    : AppColor.containerColor,
                                                boxShadow: [
                                                ]),
                                            child: Center(
                                              child: MyText(
                                                text: "${e.toString()}",
                                                fontSizeText: 18,
                                                fontweightText: FontWeight.w400,
                                                textColor: AppColor.textColor,
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  SizedBox(width: 8,),
                                  Container(
                                    width: 116,
                                    height: 41,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: AppColor.containerBorder)),
                                    child: Center(
                                      child: MyText(
                                        text: "Cancel",
                                        fontSizeText: 14.sp,
                                        fontweightText: FontWeight.w400,
                                        textColor: AppColor.blackColor,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: (){
                                      Get.back();
                                    },
                                    child: Container(
                                      width: 116,
                                      height: 41,
                                      decoration: BoxDecoration(
                                        color: AppColor.greenColor,
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: AppColor.containerBorder)),
                                      child: Center(
                                        child: MyText(
                                          text: "Confirm",
                                          fontSizeText: 14.sp,
                                          fontweightText: FontWeight.w400,
                                          textColor: AppColor.blackColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 150,
                  height: 41,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.greenColor),
                  child: Center(
                    child: MyText(
                      text: "Accept",
                      fontSizeText: 14.sp,
                      fontweightText: FontWeight.w400,
                      textColor: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          )
        ],
      ),
    ).symmetricPadding(horizontal: 25);
  }
}
