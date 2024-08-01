import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_add_new_card.dart';
import 'package:get/get.dart';

class ScreenChangeCard extends StatelessWidget {
  const ScreenChangeCard({Key? key}) : super(key: key);

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
          text: "Select Card",
          fontweightText: FontWeight.w500,
          fontSizeText: 23.sp,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(ScreenAddNewCard());
            },
            child: MyText(
              text: "+ Add New",
              fontweightText: FontWeight.w500,
              fontSizeText: 14.sp,
            ).onlyPadding(right: 10),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/visa yellow.png"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/visa blue.png"),
            Spacer(),
            Center(
              child: Container(
                width: Get.height * 0.65,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColor.whiteColor,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ).symmetricPadding(horizontal: 30),
      ),
    );
  }
}
