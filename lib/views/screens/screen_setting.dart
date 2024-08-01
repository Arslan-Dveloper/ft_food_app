import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:get/get.dart';

class ScreenSetting extends StatelessWidget {
  const ScreenSetting({Key? key}) : super(key: key);

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
          text: "Settings",
          fontweightText: FontWeight.w500,
          fontSizeText: 23.sp,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Change Password",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )),
            ),
            SizedBox(height: 15.h,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Change Email",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )),
            ),
            SizedBox(height: 15.h,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "About Us",
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )),
            )
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
