import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenAddNewCard extends StatelessWidget {
  const ScreenAddNewCard({Key? key}) : super(key: key);

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
          text: "New Card",
          fontweightText: FontWeight.w500,
          fontSizeText: 23.sp,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            MyText(
              text: "Number",
              fontweightText: FontWeight.w400,
              fontSizeText: 14.sp,
              fontFaimlyText: 'inter',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Card Number",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            MyText(
              text: "Name",
              fontweightText: FontWeight.w400,
              fontSizeText: 14.sp,
              fontFaimlyText: 'inter',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Cardholder Name",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            MyText(
              text: "Expire Date",
              fontweightText: FontWeight.w400,
              fontSizeText: 14.sp,
              fontFaimlyText: 'inter',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Expire Date",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            MyText(
              text: "CVV",
              fontweightText: FontWeight.w400,
              fontSizeText: 14.sp,
              fontFaimlyText: 'inter',
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter CVV",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Spacer(),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.75,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: MyText(
                    text: "Confirm",
                    fontweightText: FontWeight.w500,
                    fontSizeText: 16,
                    textColor: AppColor.whiteColor,
                  ),
                ),
              ),
            )
          ],
        ).symmetricPadding(horizontal: 25),
      ),
    );
  }
}
