import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_confirm_order.dart';
import 'package:get/get.dart';

class ScreenServicesMethod extends StatelessWidget {
  const ScreenServicesMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = [
      {
        "title": "Home Delivery",
        "image": "assets/images/hone delivery.png",
      },
      {
        "title": "Take Away",
        "image": "assets/images/take away.png",
      },
    ];
    Rx<Map<String, String>> selectedText = Rx(title[0]);
    var controller = Get.put(ReservationController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Service Method",
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 23.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: title.map(
            (e) {
              return GestureDetector(
                onTap: () {
                  selectedText.value = e;
                  Get.to(ScreenConfirmOrder());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: Get.width,
                  height: 55,
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
                      SizedBox(
                        width: 17,
                      ),
                      Image.asset(
                        "${e["image"].toString()}",
                        scale: 5,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MyText(
                        text: "${e["title"].toString()}",
                        fontSizeText: 17.sp,
                        fontweightText: FontWeight.w400,
                        textColor: AppColor.textColor,
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ).symmetricPadding(horizontal: 20),

      ),
    );
  }
}
