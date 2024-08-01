import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenChangeAdrees extends StatelessWidget {
  const ScreenChangeAdrees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "title": "Home",
        "subTitle":
        "123 Imaginary Street, Fictitious City,\nMakebelieve County, Dreamland 56789"
      },
      {
        "title": "Office",
        "subTitle":
        "456 Enchanted Avenue, Fantasyville,\nWonderland State, Dreamland 98765"
      },
    ];

    Rx<Map<String, String>> selectedText = Rx(data[0]);
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
          text: "Delivery Address",
          fontweightText: FontWeight.w500,
          fontSizeText: 23.sp,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                width: Get.width,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColor.blackColor.withOpacity(0.2),
                    )),
                child: Center(
                  child: MyText(
                    text: "+ Add new",
                    fontSizeText: 14.sp,
                    fontweightText: FontWeight.w500,
                    textColor: AppColor.textColor.withOpacity(0.8),
                  ),
                ),
              ),
            ),
            Column(
              children: data.map(
                    (e) {
                  return GestureDetector(
                    onTap: () {
                      selectedText.value = e;
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: Get.width,
                      height: 102.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.redColor.withOpacity(0.07),
                            blurRadius: 20,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              MyText(
                                text: "${e['title'].toString()}",
                                fontweightText: FontWeight.w500,
                                fontSizeText: 16.sp,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/outline pen.png",
                                scale: 4,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              MyText(
                                text: "${e['subTitle'].toString()}",
                                fontweightText: FontWeight.w500,
                                fontSizeText: 12.sp,
                                textColor: AppColor.reviewTextColor,
                              ),
                              Spacer(),
                              Obx(() {
                                return Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: selectedText.value == e
                                        ? AppColor.redColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: selectedText.value == e
                                        ? Image.asset(
                                      "assets/images/tick two.png",
                                      scale: 4,
                                    )
                                        : null,
                                  ),
                                );
                              }),
                              SizedBox(
                                width: 30,
                              )
                            ],
                          ),
                        ],
                      ).onlyPadding(left: 15),
                    ),
                  );
                },
              ).toList(),
            )
          ],
        ).symmetricPadding(horizontal: 25),
      ),
    );
  }
}
