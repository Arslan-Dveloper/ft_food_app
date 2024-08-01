import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenNewAddress extends StatelessWidget {
  const ScreenNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "123 Imaginary Street, Fictitious City"),
              ).symmetricPadding(horizontal: 20),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: MyText(
          text: "New Address",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 570,
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage("assets/images/map.png"),
              )),
            )
          ],
        ),
      ),
    );
  }
}
