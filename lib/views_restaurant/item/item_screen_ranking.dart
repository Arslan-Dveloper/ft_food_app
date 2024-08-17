import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ItemScreenRanking extends StatelessWidget {
  FirstController controller;
  int index;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          controller.selectedIndex.value = index;
        },
        child: Container(
          margin: EdgeInsets.only(top: 10),
          width: Get.width,
          height: 100,
          decoration: BoxDecoration(
            color: controller.selectedIndex.value == index
                ? AppColor.textColor
                : AppColor.whiteColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        controller.mainImage[index].toString()),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        controller.smallLogo[index].toString(),
                        scale: 2.5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MyText(
                        text:
                        controller.mainText[index].toString(),
                        fontSizeText: 14.sp,
                        fontweightText: FontWeight.w500,
                        textColor:
                        controller.selectedIndex.value ==
                            index
                            ? AppColor.whiteColor
                            : AppColor.textColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/star.png",
                        scale: 3.5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: controller.ratting[index]
                                  .toString(),
                              style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: controller.selectedIndex
                                    .value ==
                                    index
                                    ? AppColor.whiteColor
                                    : AppColor.textColor,
                              ),
                            ),
                            TextSpan(
                              text: " (120)",
                              style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: controller.selectedIndex
                                    .value ==
                                    index
                                    ? AppColor.whiteColor
                                    : AppColor
                                    .subHeadingTextColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  MyText(
                    text: controller.endText[index].toString(),
                    fontFaimlyText: 'inter',
                    fontSizeText: 10.sp,
                    fontweightText: FontWeight.w500,
                    textColor: AppColor.greenColor,
                  ),
                ],
              ),
              Spacer(),
              controller.selectedIndex.value == index
                  ? Column(
                children: [
                  SizedBox(height: 35,),
                  MyText(
                    text: "We are at".toString(),
                    fontSizeText: 10,
                    fontFaimlyText: "inter",
                    fontweightText: FontWeight.w500,
                    textColor:
                    controller.selectedIndex.value ==
                        index
                        ? AppColor.whiteColor
                        : AppColor.textColor,
                  ),
                  MyText(
                    text: controller.position[index]
                        .toString(),
                    fontSizeText: 14,
                    fontFaimlyText: "inter",
                    fontweightText: FontWeight.w400,
                    textColor:
                    controller.selectedIndex.value ==
                        index
                        ? AppColor.whiteColor
                        : AppColor.textColor,
                  ),
                ],
              ).onlyPadding(left: 20)
                  : MyText(
                text: controller.position[index].toString(),
                fontSizeText: 14,
                fontFaimlyText: "inter",
                fontweightText: FontWeight.w400,
                textColor:
                controller.selectedIndex.value == index
                    ? AppColor.whiteColor
                    : AppColor.textColor,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
        ),
      );
    });
  }

  ItemScreenRanking({
    required this.controller,
    required this.index,
  });
}
